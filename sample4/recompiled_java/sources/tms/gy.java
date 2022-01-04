package tms;

import QQPIM.ConfInfo;
import QQPIM.ConfSrc;
import QQPIM.TipInfo;
import QQPIM.VirusClientInfo;
import QQPIM.VirusInfo;
import QQPIM.VirusServerInfo;
import android.content.Context;
import com.tencent.tccdb.TelNumberLocator;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.AmScanner;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.ICheckListener;
import com.tencent.tmsecure.module.update.IUpdateListener;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.update.UpdateInfo;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import com.tencent.tmsecure.utils.Log;
import com.tencent.tmsecure.utils.UpdateUtil;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.httpclient.cookie.CookieSpec;

public final class gy extends BaseManager {
    public static final String a = "UpdateManagerImpl";
    private Context b;
    private String c = null;
    private AtomicBoolean d = new AtomicBoolean(false);
    private WupSessionManager e;
    private HashMap<Integer, SoftReference<IUpdateObserver>> f = new HashMap<>();

    private void a(UpdateInfo updateInfo) {
        IUpdateObserver iUpdateObserver;
        synchronized (this.f) {
            for (Map.Entry<Integer, SoftReference<IUpdateObserver>> entry : this.f.entrySet()) {
                if (entry.getKey().intValue() == updateInfo.flag && (iUpdateObserver = entry.getValue().get()) != null) {
                    iUpdateObserver.onChanged(updateInfo);
                }
            }
        }
    }

    private String b(int i) {
        String fileNameByFlag = UpdateConfig.getFileNameByFlag(i);
        String str = this.c + File.separator + fileNameByFlag;
        if (!new File(str).exists()) {
            v.a(this.b, fileNameByFlag, this.c);
        }
        return str;
    }

    private static void b(int i, ICheckListener iCheckListener) {
        if (i != 0) {
            iCheckListener.onCheckEvent(i);
        }
        iCheckListener.onCheckFinished(null);
    }

    public final void a() {
        this.d.set(true);
    }

    public final void a(int i) {
        synchronized (this.f) {
            this.f.remove(Integer.valueOf(i));
        }
    }

    public final void a(int i, ICheckListener iCheckListener) {
        this.d.set(false);
        ICheckListener.Proxy proxy = new ICheckListener.Proxy(iCheckListener);
        proxy.onCheckStarted();
        int prepareCheckFlag = UpdateConfig.prepareCheckFlag(i);
        ArrayList arrayList = new ArrayList();
        if (!f.a().b()) {
            CheckResult checkResult = new CheckResult();
            checkResult.mTitle = "提示";
            checkResult.mMessage = "TMS模块已经过期，请联系供应商";
            checkResult.mUpdateInfoList = arrayList;
            proxy.onCheckFinished(checkResult);
        } else if (this.d.get()) {
            proxy.onCheckCanceled();
            b(0, proxy);
        } else {
            ArrayList<ConfInfo> arrayList2 = new ArrayList<>();
            int[] iArr = UpdateConfig.UPDATE_FLAGS;
            int length = iArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = iArr[i2];
                if ((i3 & prepareCheckFlag) != 0) {
                    ConfInfo smsCheckerConfInfo = i3 == 4 ? UpdateUtil.getSmsCheckerConfInfo(this.b, b(i3)) : i3 == 8 ? UpdateUtil.getVirusConfInfo(this.b, b(i3)) : i3 == 2 ? UpdateUtil.getLocationConfInfo(b(i3)) : UpdateUtil.getFileConfInfo(b(i3));
                    if (smsCheckerConfInfo == null) {
                        smsCheckerConfInfo = new ConfInfo();
                        smsCheckerConfInfo.filename = UpdateConfig.getFileNameByFlag(i3);
                        smsCheckerConfInfo.checksum = "";
                        smsCheckerConfInfo.timestamp = 0;
                    }
                    arrayList2.add(smsCheckerConfInfo);
                }
            }
            ArrayList<ConfSrc> arrayList3 = new ArrayList<>();
            AtomicReference<TipInfo> atomicReference = new AtomicReference<>();
            int configV3CPT = this.e.getConfigV3CPT(arrayList2, arrayList3, atomicReference);
            if (configV3CPT == 0) {
                if (arrayList3.size() > 0) {
                    Iterator<ConfSrc> it = arrayList3.iterator();
                    while (it.hasNext()) {
                        ConfSrc next = it.next();
                        if (next != null) {
                            UpdateInfo updateInfo = new UpdateInfo();
                            if (next.isincreupdate == 0) {
                                updateInfo.fileName = next.getFilename();
                            } else {
                                updateInfo.fileName = next.getFilename() + UpdateConfig.PATCH_SUFIX;
                            }
                            updateInfo.flag = UpdateConfig.getFlagByFileName(next.getFilename());
                            updateInfo.type = 0;
                            updateInfo.url = next.getUrl();
                            updateInfo.data1 = next;
                            arrayList.add(updateInfo);
                        }
                    }
                }
                CheckResult checkResult2 = new CheckResult();
                TipInfo tipInfo = atomicReference.get();
                checkResult2.mTitle = tipInfo != null ? tipInfo.strTitle : "";
                checkResult2.mMessage = tipInfo != null ? tipInfo.strTips : "";
                checkResult2.mUpdateInfoList = arrayList;
                Log.i("update_test", "message :" + checkResult2.mMessage + " count: " + checkResult2.mUpdateInfoList.size());
                proxy.onCheckFinished(checkResult2);
                return;
            }
            b(configV3CPT, proxy);
        }
    }

    public final void a(int i, IUpdateObserver iUpdateObserver) {
        synchronized (this.f) {
            if (iUpdateObserver != null) {
                this.f.put(Integer.valueOf(i), new SoftReference<>(iUpdateObserver));
            }
        }
    }

    public final void a(List<UpdateInfo> list, IUpdateListener iUpdateListener) {
        int i;
        VirusServerInfo virusServerInfo;
        this.d.set(false);
        IUpdateListener.UpdateListener updateListener = new IUpdateListener.UpdateListener(iUpdateListener);
        updateListener.onUpdateStarted();
        if (!f.a().b()) {
            updateListener.onUpdateFinished();
        } else if (this.d.get()) {
            updateListener.onUpdateCanceled();
            updateListener.onUpdateFinished();
        } else {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                }
                UpdateInfo updateInfo = list.get(i2);
                if (updateInfo != null) {
                    if (list.size() == 1) {
                        updateListener.onProgressChanged(updateInfo, 50);
                    } else {
                        updateListener.onProgressChanged(updateInfo, (int) (((float) i2) / ((float) list.size())));
                    }
                    if (updateInfo.flag == 8) {
                        VirusClientInfo virusClientInfo = UpdateUtil.getVirusClientInfo(this.b, b(8));
                        if (virusClientInfo != null) {
                            virusClientInfo.setEngine_version(3);
                            AtomicReference<VirusServerInfo> atomicReference = new AtomicReference<>();
                            ArrayList<VirusInfo> arrayList = new ArrayList<>();
                            int virusInfos = this.e.getVirusInfos(virusClientInfo, atomicReference, arrayList);
                            if (virusInfos == 0 && (virusServerInfo = atomicReference.get()) != null) {
                                if (virusServerInfo.getBUpdate()) {
                                    i = virusInfos;
                                } else if (arrayList.size() > 0) {
                                    AmScanner.updateBase(this.b, b(8), virusServerInfo, arrayList);
                                }
                            }
                            i = virusInfos;
                        } else {
                            i = 0;
                        }
                        if (i != 0) {
                            atomicBoolean.set(true);
                        }
                    } else if (!(updateInfo == null || updateInfo.url == null)) {
                        z zVar = new z(this.b);
                        zVar.a(this.c + CookieSpec.PATH_DELIM);
                        zVar.b(updateInfo.fileName);
                        zVar.a(new fp(this, updateListener, updateInfo, atomicBoolean));
                        zVar.a(updateInfo.url + "?m=def", true);
                        if (!atomicBoolean.get() && updateInfo.flag == 2) {
                            TelNumberLocator telNumberLocator = TelNumberLocator.getDefault(this.b);
                            ConfSrc confSrc = (ConfSrc) updateInfo.data1;
                            if (confSrc.isincreupdate != 0) {
                                telNumberLocator.patchLocation(this.c + File.separator + updateInfo.fileName, confSrc.getIuchecksum());
                            }
                            telNumberLocator.reload();
                        }
                    }
                    if (atomicBoolean.get()) {
                        break;
                    }
                    a(updateInfo);
                    if (this.d.get()) {
                        updateListener.onUpdateCanceled();
                        break;
                    }
                }
                i2++;
            }
            updateListener.onUpdateFinished();
        }
    }

    public final String b() {
        return this.c;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.b = context;
        this.c = context.getFilesDir().getAbsolutePath();
        this.e = (WupSessionManager) ManagerCreator.getManager(WupSessionManager.class);
    }
}
