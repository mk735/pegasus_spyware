package com.lenovo.safecenter.utils.httpApi;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.httpApi.HttpApiAsyncTask;
import java.util.HashMap;
import java.util.concurrent.Executors;

public class LeSafeAPI {
    public static final int ACTION_BLACK_URL_SYNC_FLAG = 3;
    public static final int ACTION_GET_SAFE_BROWSER_HOMEPAGE_FLAG = 2;
    public static final int ACTION_HOLIDAY_IMG_DOWNLOAD = 1;
    public static final int ACTION_HOLIDAY_IMG_SYNC = 0;
    public static final int ACTION_SAFEPAY_APK_SYNC = 4;
    public static final String API_BASE_URL = "http://sss.lenovomm.com/sss/1.0/";
    public static final String[] API_URLS = {"http://sss.lenovomm.com/sss/1.0/holidayimgsync", "http://sss.lenovomm.com/sss/1.0/downholidayimg", "http://sss.lenovomm.com/sss/1.0/guideswitch?z=" + System.currentTimeMillis(), "http://sss.lenovomm.com/sss/1.0/blackurllistsync?lang=zh-cn", "http://sss.lenovomm.com/sss/1.0/safepayapklistsync"};
    public static final long DEFAULT_TAG_VERSION = 1355815718989L;

    public static void getHolidayImgSync(Context context, HttpApiAsyncTask.ApiRequestListener listener) {
        Log.i("wu0wu", "<<< LeSafeAPI getHolidayImgSync >>>");
        HashMap<String, Object> params = new HashMap<>(2);
        params.put(QueryPermissions.ID, Const.getHolidayImgId());
        params.put("version", Const.getHolidayImgVersion());
        new HttpApiAsyncTask(context, 0, listener, params).execute(null);
    }

    public static void downloadHolidayImg(Context context, HttpApiAsyncTask.ApiRequestListener listener) {
        Log.i("wu0wu", "<<< LeSafeAPI downloadHolidayImg >>>");
        new HttpApiAsyncTask(context, 1, listener, null).execute(new Void[0]);
    }

    public static void getSafeBrowserHomepageFlag(Context context, HttpApiAsyncTask.ApiRequestListener listener) {
        Log.i("wu0wu", "<<< LeSafeAPI getSafeBrowserHomepageFlag >>>");
        new HttpApiAsyncTask(context, 2, listener, null).execute(new Void[0]);
    }

    public static void getBlackUrlSyncFlag(Context context, HttpApiAsyncTask.ApiRequestListener listener) {
        SharedPreferences dfprefs = PreferenceManager.getDefaultSharedPreferences(context);
        long lastTAG = dfprefs.getLong(Const.KEY_URL_BLACK_LAST_FLAG, DEFAULT_TAG_VERSION);
        long expTAG = dfprefs.getLong(Const.KEY_URL_BLACK_EXP_FLAG, DEFAULT_TAG_VERSION);
        HashMap<String, Long> map = new HashMap<>();
        map.put("lastintag", Long.valueOf(lastTAG));
        map.put("expiredtag", Long.valueOf(expTAG));
        new HttpApiAsyncTask(context, 3, listener, map).execute(new Void[0]);
    }

    public static void getSafePayList(Context context, HttpApiAsyncTask.ApiRequestListener listener) {
        SharedPreferences dfprefs = PreferenceManager.getDefaultSharedPreferences(context);
        String lastTAG = dfprefs.getString(Const.KEY_URL_SAFEPAY_LAST_FLAG, "1355815718989");
        String expTAG = dfprefs.getString(Const.KEY_URL_SAFEPAY_EXP_FLAG, "1355815718989");
        HashMap<String, String> map = new HashMap<>();
        map.put("lastintag", lastTAG);
        map.put("expiredtag", expTAG);
        new HttpApiAsyncTask(context, 4, listener, map).execute(new Void[0]);
    }

    public static void getAppSync(Context context) {
        if (Const.SDK_VERSION < 14) {
            new HttpApiAsyncTask(context, 999, null, null).execute(new Void[0]);
        } else {
            new HttpApiAsyncTask(context, 999, null, null).executeOnExecutor(Executors.newCachedThreadPool(), new Void[0]);
        }
    }
}
