package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;
import com.lenovo.leos.cloud.sync.common.auto.BackupDiffInfo;
import com.lenovo.leos.cloud.sync.common.auto.EasySyncServiceProxy;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DialogUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.update.LeSafeUpdate;
import com.lenovo.safecenter.utils.update.LeSafeUpdateInfo;

public class HealthLeCloudSynForContact extends BaseHealthCheck implements DialogUtil.WarnDialogListener {
    public static final int STATE_BACKUP_CONTACT = 1;
    public static final int STATE_NO_INSTALL = 0;
    public static final int STATE_UPDATE_APK = 2;
    private int a = 0;
    private boolean b = false;
    private LeSafeUpdate c = null;

    static /* synthetic */ boolean a(BackupDiffInfo x1) {
        return x1.neverBackup && !(x1.opAdd == 0 && x1.opDelete == 0 && x1.opUpdate == 0);
    }

    static /* synthetic */ void ag(HealthLeCloudSynForContact x0) {
        if (AppUtil.isAppExistence(x0.mContext, Const.PACKAGENAME_LE_CLOUD)) {
            if (x0.result != null) {
                x0.result.content = x0.mContext.getString(R.string.op_install_lecloud);
                x0.result.view_type = 4;
                x0.result.weight = 7;
                x0.result.isOnly = true;
                x0.result.action_description = x0.mContext.getString(R.string.safe);
            }
            x0.mHealthManager.plusOrDecrementNumItem(4, true);
            x0.mHealthManager.plusOrDecrementNumItem(x0.mPreViewType, false);
            x0.mHealthManager.result(x0.result);
            x0.mHealthManager.saveHealthScoreAndCheckupTime();
        }
    }

    static /* synthetic */ void ah(HealthLeCloudSynForContact x0) {
        if (AppUtil.getAppVersionCode(x0.mContext, Const.PACKAGENAME_LE_CLOUD) >= 3870161) {
            if (x0.result != null) {
                x0.result.content = x0.mContext.getString(R.string.op_lecloud_is_new);
                x0.result.view_type = 4;
                x0.result.weight = 7;
                x0.result.isOnly = false;
                x0.result.action_description = x0.mContext.getString(R.string.safe);
            }
            x0.mHealthManager.plusOrDecrementNumItem(4, true);
            x0.mHealthManager.plusOrDecrementNumItem(x0.mPreViewType, false);
            x0.mHealthManager.result(x0.result);
            x0.mHealthManager.saveHealthScoreAndCheckupTime();
        }
    }

    public int getmState() {
        return this.a;
    }

    public boolean isShowLeCloudActivity() {
        return this.b;
    }

    public HealthLeCloudSynForContact(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 2;
        this.isRootItem = false;
        this.mHealthManager = healthManager;
    }

    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        if (WflUtils.isNetworkAvailable(this.mContext)) {
            if (!AppUtil.isAppExistence(this.mContext, Const.PACKAGENAME_LE_CLOUD)) {
                this.a = 0;
                refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), this.mContext.getString(R.string.health_detail_lecloud), this.mHealthManager);
                this.result = new HealthItemResult();
                this.result.key = this.mKey;
                this.result.title = this.mContext.getString(R.string.lesafe_nomal_checkup_item);
                this.result.title_detail = this.mContext.getString(R.string.health_detail_lecloud);
                this.result.content = this.mContext.getString(R.string.scan_no_install_lecloud);
                this.result.view_type = 3;
                this.result.weight = 5;
                this.result.isOnly = false;
                this.result.action_description = this.mContext.getString(R.string.download_app_link);
                this.mHealthManager.plusOrDecrementNumItem(3, true);
                this.mPreViewType = 3;
                this.mHealthManager.result(this.result);
            } else if (AppUtil.getAppVersionCode(this.mContext, Const.PACKAGENAME_LE_CLOUD) < 3870161) {
                this.a = 2;
                refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), this.mContext.getString(R.string.health_detail_lecloud), this.mHealthManager);
                this.result = new HealthItemResult();
                this.result.key = this.mKey;
                this.result.title = this.mContext.getString(R.string.lesafe_nomal_checkup_item);
                this.result.title_detail = this.mContext.getString(R.string.health_detail_lecloud);
                this.result.content = this.mContext.getString(R.string.scan_lecloud_can_update);
                this.result.view_type = 3;
                this.result.weight = 5;
                this.result.isOnly = false;
                this.result.action_description = this.mContext.getString(R.string.download_app_link);
                this.mHealthManager.plusOrDecrementNumItem(3, true);
                this.mPreViewType = 3;
                this.mHealthManager.result(this.result);
            } else if (AppUtil.isAppExistence(this.mContext, Const.PACKAGENAME_LE_CLOUD)) {
                this.a = 1;
                EasySyncServiceProxy.queryContactDiffInfo(this.mContext, new EasySyncServiceProxy.EasySyncCallback() {
                    /* class com.lenovo.safecenter.HealthCheck.item.HealthLeCloudSynForContact.AnonymousClass1 */

                    @Override // com.lenovo.leos.cloud.sync.common.auto.EasySyncServiceProxy.EasySyncCallback
                    public final void onFinish(BackupDiffInfo diffInfo) {
                        if (diffInfo == null) {
                            EasySyncServiceProxy.unbind(HealthLeCloudSynForContact.this.mContext);
                            return;
                        }
                        Log.i("wu0wu", "diffInfo.toString()=" + diffInfo.toString());
                        HealthLeCloudSynForContact.this.refreshTitle(HealthLeCloudSynForContact.this.mContext.getString(R.string.lesafe_nomal_checkup_item), HealthLeCloudSynForContact.this.mContext.getString(R.string.health_detail_lecloud), HealthLeCloudSynForContact.this.mHealthManager);
                        HealthLeCloudSynForContact healthLeCloudSynForContact = HealthLeCloudSynForContact.this;
                        if (HealthLeCloudSynForContact.a(diffInfo)) {
                            HealthLeCloudSynForContact.this.result = new HealthItemResult();
                            HealthLeCloudSynForContact.this.result.key = HealthLeCloudSynForContact.this.mKey;
                            HealthLeCloudSynForContact.this.result.title = HealthLeCloudSynForContact.this.mContext.getString(R.string.lesafe_nomal_checkup_item);
                            HealthLeCloudSynForContact.this.result.title_detail = HealthLeCloudSynForContact.this.mContext.getString(R.string.health_detail_lecloud);
                            HealthLeCloudSynForContact.this.result.content = HealthLeCloudSynForContact.this.mContext.getString(R.string.scan_nerver_backup_contact_lecloud);
                            HealthLeCloudSynForContact.this.result.view_type = 3;
                            HealthLeCloudSynForContact.this.result.weight = 5;
                            HealthLeCloudSynForContact.this.result.isOnly = false;
                            HealthLeCloudSynForContact.this.result.action_description = HealthLeCloudSynForContact.this.mContext.getString(R.string.backup_text);
                            HealthLeCloudSynForContact.this.mHealthManager.plusOrDecrementNumItem(3, true);
                            HealthLeCloudSynForContact.this.mPreViewType = 3;
                            HealthLeCloudSynForContact.this.mHealthManager.result(HealthLeCloudSynForContact.this.result);
                        } else if (!(diffInfo.opAdd == 0 && diffInfo.opDelete == 0 && diffInfo.opUpdate == 0)) {
                            HealthLeCloudSynForContact.this.result = new HealthItemResult();
                            HealthLeCloudSynForContact.this.result.key = HealthLeCloudSynForContact.this.mKey;
                            HealthLeCloudSynForContact.this.result.title = HealthLeCloudSynForContact.this.mContext.getString(R.string.lesafe_nomal_checkup_item);
                            HealthLeCloudSynForContact.this.result.title_detail = HealthLeCloudSynForContact.this.mContext.getString(R.string.health_detail_lecloud);
                            HealthLeCloudSynForContact.this.result.content = HealthLeCloudSynForContact.this.mContext.getString(R.string.scan_can_backup_contact_lecloud);
                            HealthLeCloudSynForContact.this.result.view_type = 3;
                            HealthLeCloudSynForContact.this.result.weight = 5;
                            HealthLeCloudSynForContact.this.result.isOnly = false;
                            HealthLeCloudSynForContact.this.result.action_description = HealthLeCloudSynForContact.this.mContext.getString(R.string.backup_text);
                            HealthLeCloudSynForContact.this.mHealthManager.plusOrDecrementNumItem(3, true);
                            HealthLeCloudSynForContact.this.mPreViewType = 3;
                            HealthLeCloudSynForContact.this.mHealthManager.result(HealthLeCloudSynForContact.this.result);
                        }
                        EasySyncServiceProxy.unbind(HealthLeCloudSynForContact.this.mContext);
                        Log.i("wu0wu", "scanLeCloudSynForContact finish...");
                    }

                    @Override // com.lenovo.leos.cloud.sync.common.auto.EasySyncServiceProxy.EasySyncCallback
                    public final void onFail(String failMsg) {
                        EasySyncServiceProxy.unbind(HealthLeCloudSynForContact.this.mContext);
                    }
                });
            }
            progressAddAfterScanEveryItem(this.mHealthManager);
        }
    }

    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void manual() {
        switch (this.a) {
            case 0:
                if (AppUtil.isAppExistence(this.mContext, Const.PACKAGENAME_LE_CLOUD)) {
                    if (this.result != null) {
                        this.result.content = this.mContext.getString(R.string.op_install_lecloud);
                        this.result.view_type = 4;
                        this.result.weight = 7;
                        this.result.isOnly = false;
                        this.result.action_description = this.mContext.getString(R.string.safe);
                    }
                    this.mHealthManager.plusOrDecrementNumItem(4, true);
                    this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
                    this.mHealthManager.result(this.result);
                    this.mHealthManager.saveHealthScoreAndCheckupTime();
                    return;
                }
                return;
            case 1:
                this.b = false;
                EasySyncServiceProxy.queryContactDiffInfo(this.mContext, new EasySyncServiceProxy.EasySyncCallback() {
                    /* class com.lenovo.safecenter.HealthCheck.item.HealthLeCloudSynForContact.AnonymousClass2 */

                    @Override // com.lenovo.leos.cloud.sync.common.auto.EasySyncServiceProxy.EasySyncCallback
                    public final void onFinish(BackupDiffInfo diffInfo) {
                        if (diffInfo == null) {
                            EasySyncServiceProxy.unbind(HealthLeCloudSynForContact.this.mContext);
                            return;
                        }
                        Log.i("wu0wu", "diffInfo.toString()=" + diffInfo.toString());
                        if (diffInfo.opAdd == 0 && diffInfo.opDelete == 0 && diffInfo.opUpdate == 0) {
                            if (HealthLeCloudSynForContact.this.result != null) {
                                HealthLeCloudSynForContact.this.result.content = HealthLeCloudSynForContact.this.mContext.getString(R.string.op_backup_contact_lecloud);
                                HealthLeCloudSynForContact.this.result.view_type = 4;
                                HealthLeCloudSynForContact.this.result.weight = 7;
                                HealthLeCloudSynForContact.this.result.isOnly = false;
                                HealthLeCloudSynForContact.this.result.action_description = HealthLeCloudSynForContact.this.mContext.getString(R.string.safe);
                            }
                            HealthLeCloudSynForContact.this.mHealthManager.plusOrDecrementNumItem(4, true);
                            HealthLeCloudSynForContact.this.mHealthManager.plusOrDecrementNumItem(HealthLeCloudSynForContact.this.mPreViewType, false);
                            HealthLeCloudSynForContact.this.mHealthManager.result(HealthLeCloudSynForContact.this.result);
                            HealthLeCloudSynForContact.this.mHealthManager.saveHealthScoreAndCheckupTime();
                        }
                        Log.i("wu0wu", "scanLeCloudSynForContact finish...");
                        EasySyncServiceProxy.unbind(HealthLeCloudSynForContact.this.mContext);
                    }

                    @Override // com.lenovo.leos.cloud.sync.common.auto.EasySyncServiceProxy.EasySyncCallback
                    public final void onFail(String failMsg) {
                        EasySyncServiceProxy.unbind(HealthLeCloudSynForContact.this.mContext);
                    }
                });
                return;
            default:
                return;
        }
    }

    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
    }

    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void click() {
        switch (this.a) {
            case 0:
            case 2:
                if (!WflUtils.isNetworkAvailable(this.mContext)) {
                    DialogUtil.createManualUpdateDialog(this.mContext, 4, null);
                    return;
                } else if (this.c != null) {
                    a();
                    return;
                } else {
                    DialogUtil.NoticeDialog(this.mContext, 3, this.mContext.getString(R.string.info), this.mContext.getString(R.string.update_note_text), this.mContext.getString(R.string.ok), this);
                    return;
                }
            case 1:
                Intent intent = new Intent("com.lenovo.leos.cloud.sync.intent.action.MAIN");
                intent.setFlags(268435456);
                intent.putExtra("DEFAULT_ITEM", "contactMain");
                intent.putExtra("isShowFinishDlg", false);
                this.mContext.startActivity(intent);
                this.b = true;
                TrackEvent.reportEntryLeCloudSync();
                return;
            default:
                return;
        }
    }

    private void a() {
        if (this.c == null) {
            this.c = new LeSafeUpdate(this.mContext, Const.PACKAGENAME_LE_CLOUD, 0, "lecloud_dev_team", false, false, false, new LeSafeUpdate.LeSafeUpdateListenser() {
                /* class com.lenovo.safecenter.HealthCheck.item.HealthLeCloudSynForContact.AnonymousClass3 */

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onQueryResp(String resultion, LeSafeUpdateInfo lfui) {
                    Log.i("ydp", "downloadActivity onQueryResp:" + resultion);
                }

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onDownLoadComplete(String path) {
                    Log.i("ydp", "downloadActivity onDownLoadComplete:" + path);
                }

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onDownLoadException(int errorCode) {
                    Log.i("ydp", "downloadActivity onDownLoadException:" + errorCode);
                }

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onInstallComplete(boolean succeed) {
                    switch (HealthLeCloudSynForContact.this.a) {
                        case 0:
                            HealthLeCloudSynForContact.ag(HealthLeCloudSynForContact.this);
                            break;
                        case 2:
                            HealthLeCloudSynForContact.ah(HealthLeCloudSynForContact.this);
                            break;
                    }
                    Toast.makeText(HealthLeCloudSynForContact.this.mContext, (int) R.string.SUS_INSTALL_SUCCEED, 0).show();
                    Log.i("ydp", "downloadActivity onInstallComplete:" + succeed);
                }
            });
            TrackEvent.reportDownloadLeCloudSync();
        }
        this.c.upDate(true);
    }

    public void onWarnDialogOk() {
        a();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void clear() {
        this.result = null;
    }

    @Override // com.lenovo.safecenter.utils.DialogUtil.WarnDialogListener
    public void onWarnDialogOk(int id) {
        switch (id) {
            case 3:
                onWarnDialogOk();
                return;
            default:
                return;
        }
    }

    @Override // com.lenovo.safecenter.utils.DialogUtil.WarnDialogListener
    public void onWarnDialogCancel(int id) {
    }
}
