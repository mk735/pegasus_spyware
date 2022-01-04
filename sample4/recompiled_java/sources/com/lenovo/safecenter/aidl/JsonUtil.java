package com.lenovo.safecenter.aidl;

import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.aidl.healthcheck.RemoteHealthCheckService;
import com.lenovo.safecenter.aidl.killvirus.ScanVirusResult;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.tencent.tmsecure.module.software.AppEntity;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.httpclient.cookie.Cookie2;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonUtil {
    public static final String COMMAND_ACTION_ENABLE_UNKNOW_PACKAGE_INSTALL = "enableUnknowPackageInstall";
    public static final String COMMAND_ACTION_HEALTH_OPTIMIZE_FINISHED = "health_optimizecomplete";
    public static final String COMMAND_ACTION_HEALTH_OPTIMIZE_STARTED = "health_optimizestarted";
    public static final String COMMAND_ACTION_HEALTH_PROCESSING = "health_processingitem";
    public static final String COMMAND_ACTION_HEALTH_PROGRESS_CHANGED = "health_progresschange";
    public static final String COMMAND_ACTION_HEALTH_SCAN_FINISHED = "health_scancomplete";
    public static final String COMMAND_ACTION_HEALTH_SCAN_RESULT = "health_processeditem";
    public static final String COMMAND_ACTION_HEALTH_SCAN_STARTED = "health_scanstarted";
    public static final String COMMAND_ACTION_HEALTH_SCORE_CHANGED = "health_scorechange";
    public static final String COMMAND_ACTION_HEALTH_STATUS_CHANGED = "health_statuschange";
    public static final String COMMAND_ACTION_KILLVIRUS_SCAN_FINISHED = "killVirus_scanfinished";
    public static final String COMMAND_ACTION_KILLVIRUS_SCAN_RESULT = "killVirus_scanresult";
    public static final String COMMAND_ACTION_KILLVIRUS_SCAN_STARTED = "killVirus_scanstarted";
    public static final String COMMAND_ACTION_SET_USB_DEBUG_MODE = "setUsbDebugMode";

    public static String killVirusScanStarted(String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_KILLVIRUS_SCAN_STARTED);
            command.put("context", context);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String killVirusonScanFinished(String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_KILLVIRUS_SCAN_FINISHED);
            command.put("context", context);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String killViruScanResult(String context, int progress, ScanVirusResult result) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_KILLVIRUS_SCAN_RESULT);
            command.put("context", context);
            command.put("progress", progress);
            JSONObject data = new JSONObject();
            data.put("type", result.type);
            data.put("packageName", result.packageName);
            data.put("softName", result.softName);
            data.put("discription", result.discription);
            data.put("version", result.version);
            data.put(AppEntity.KEY_VERSION_CODE_INT, result.versionCode);
            data.put("apkType", result.apkType);
            data.put(Cookie2.PATH, result.path);
            data.put("certMd5", result.certMd5);
            data.put(AppEntity.KEY_SIZE_LONG, result.size);
            data.put("advice", result.advice);
            data.put("malwareid", result.malwareid);
            data.put("name", result.name);
            data.put("label", result.label);
            data.put("url", result.url);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthScanStarted(String context, int maxProgress, HashMap<Integer, String> statusMap, HashMap<Integer, String> viewTypeMap) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_HEALTH_SCAN_STARTED);
            command.put("context", context);
            JSONObject data = new JSONObject();
            data.put("maxProgress", maxProgress);
            JSONArray statusArray = new JSONArray();
            for (Map.Entry<Integer, String> entry : statusMap.entrySet()) {
                JSONObject statusObject = new JSONObject();
                statusObject.put("type", entry.getKey());
                statusObject.put("description", entry.getValue());
                statusArray.put(statusObject);
            }
            data.put("statuses", statusArray);
            JSONArray viewTypeArray = new JSONArray();
            for (Map.Entry<Integer, String> entry2 : viewTypeMap.entrySet()) {
                JSONObject viewTypeObject = new JSONObject();
                viewTypeObject.put("type", entry2.getKey());
                viewTypeObject.put("description", entry2.getValue());
                viewTypeArray.put(viewTypeObject);
            }
            data.put("viewTypes", viewTypeArray);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthOptimizesStarted(String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_HEALTH_OPTIMIZE_STARTED);
            command.put("context", context);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthOptimizeComplete(String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_HEALTH_OPTIMIZE_FINISHED);
            command.put("context", context);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthProcessed(HealthItemResult result, String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_HEALTH_SCAN_RESULT);
            command.put("context", context);
            JSONObject data = new JSONObject();
            data.put("key", result.key);
            data.put("title", result.title);
            data.put("title_detail", result.title_detail);
            data.put(AppDatabase.CONTENT, result.content);
            data.put("view_type", result.view_type);
            data.put("weight", result.weight);
            data.put("isOnly", result.isOnly);
            data.put("action_description", result.action_description);
            data.put("report_type", result.report_type);
            data.put("security_level", result.security_level);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthProcessing(HealthItemResult result, String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_HEALTH_PROCESSING);
            command.put("context", context);
            JSONObject data = new JSONObject();
            data.put("key", result.key);
            data.put("title", result.title);
            data.put("title_detail", result.title_detail);
            data.put(AppDatabase.CONTENT, result.content);
            data.put("view_type", result.view_type);
            data.put("weight", result.weight);
            data.put("isOnly", result.isOnly);
            data.put("action_description", result.action_description);
            data.put("report_type", result.report_type);
            data.put("security_level", result.security_level);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthStatusChanged(int statusId, String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_HEALTH_STATUS_CHANGED);
            command.put("context", context);
            JSONObject data = new JSONObject();
            data.put("status_id", statusId);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthScanFinished(String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_HEALTH_SCAN_FINISHED);
            command.put("context", context);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthScoreChanged(int score, String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_HEALTH_SCORE_CHANGED);
            command.put("context", context);
            JSONObject data = new JSONObject();
            data.put("score", score);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthProgressChanged(int progress, String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_HEALTH_PROGRESS_CHANGED);
            command.put("context", context);
            JSONObject data = new JSONObject();
            data.put("progress", progress);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthScan(String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", RemoteHealthCheckService.COMMAND_ACTION_HEALTH_SCAN);
            command.put("context", "healthContex");
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthCancelScan(String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", RemoteHealthCheckService.COMMAND_ACTION_HEALTH_CANCEL_SCAN);
            command.put("context", context);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String healthOptimize(String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", RemoteHealthCheckService.COMMAND_ACTION_HEALTH_OPTIMIZE);
            command.put("context", "healthContex");
            JSONObject data = new JSONObject();
            JSONArray keys = new JSONArray();
            keys.put(1).put(2);
            data.put("keys", keys);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String setUsbDebugMode(String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_SET_USB_DEBUG_MODE);
            command.put("context", context);
            JSONObject data = new JSONObject();
            data.put("enable", true);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String returnUsbDebugMode(String context, boolean isEnable) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_SET_USB_DEBUG_MODE);
            command.put("context", context);
            JSONObject data = new JSONObject();
            data.put("enable", isEnable);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String enableUnknowPackageInstall(String context) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_ENABLE_UNKNOW_PACKAGE_INSTALL);
            command.put("context", context);
            JSONObject data = new JSONObject();
            data.put("enable", true);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String returnenableUnknowPackageInstall(String context, boolean isEnable) {
        JSONObject command = new JSONObject();
        try {
            command.put("action", COMMAND_ACTION_ENABLE_UNKNOW_PACKAGE_INSTALL);
            command.put("context", context);
            JSONObject data = new JSONObject();
            data.put("enable", isEnable);
            command.put(SettingUtil.DATA, data);
            return command.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
