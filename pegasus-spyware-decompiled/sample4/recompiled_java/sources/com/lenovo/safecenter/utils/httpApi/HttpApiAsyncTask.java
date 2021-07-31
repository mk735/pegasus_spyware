package com.lenovo.safecenter.utils.httpApi;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.lenovo.safecenter.AppsManager.DownApkManager;
import com.lenovo.safecenter.utils.WflUtils;
import java.io.IOException;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class HttpApiAsyncTask extends AsyncTask<Void, Void, Object> {
    public static final int BUSSINESS_ERROR = 610;
    public static final int TIMEOUT_ERROR = 600;
    private Context a;
    private int b;
    private ApiRequestListener c;
    private Object d;
    private DefaultHttpClient e = new DefaultHttpClient();

    public interface ApiRequestListener {
        void onError(int i, int i2);

        void onSuccess(int i, Object obj);
    }

    public HttpApiAsyncTask(Context context, int action, ApiRequestListener listener, Object params) {
        this.a = context;
        this.b = action;
        this.c = listener;
        this.d = params;
        this.e.getParams().setParameter(HttpConnectionParams.CONNECTION_TIMEOUT, 5000);
        this.e.getParams().setParameter("http.socket.timeout", 5000);
    }

    /* access modifiers changed from: protected */
    public Object doInBackground(Void... params) {
        if (!WflUtils.isNetworkAvailable(this.a)) {
            Log.i("wu0wu", "<<<HttpApiAsyncTask doInBackground no net can used...>>>");
            return null;
        } else if (this.b == 999) {
            DownApkManager.parseNewApk(this.a);
            DownApkManager.praseTop100(this.a);
            return Integer.valueOf(this.b);
        } else {
            Log.i("wu0wu", "<<<HttpApiAsyncTask doInBackground >>> mRequestAction=" + this.b);
            String requestUrl = LeSafeAPI.API_URLS[this.b];
            HttpGet request = ApiRequestFactory.getRequest(requestUrl, this.b, ApiRequestFactory.getRequestEntity(this.a, this.b, this.d), this.d);
            try {
                Log.i("wu0wu", "<<<HttpApiAsyncTask doInBackground >>> start mClient.execute ");
                HttpResponse response = this.e.execute(request);
                int statusCode = response.getStatusLine().getStatusCode();
                Log.i("wu0wu", "<<<HttpApiAsyncTask doInBackground >>> requestUrl " + requestUrl + " statusCode: " + statusCode);
                if (200 != statusCode) {
                    return Integer.valueOf(statusCode);
                }
                return ApiResponseFactory.getResponse(this.a, this.b, response);
            } catch (ClientProtocolException e2) {
                e2.printStackTrace();
                return 600;
            } catch (IOException e3) {
                e3.printStackTrace();
                return 600;
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Object result) {
        if (this.c != null) {
            if (result == null) {
                this.c.onError(this.b, BUSSINESS_ERROR);
                return;
            }
            if (result instanceof Integer) {
                Integer statusCode = (Integer) result;
                if (this.b == 0) {
                    if (statusCode.intValue() != 304) {
                        this.c.onError(this.b, statusCode.intValue());
                        return;
                    }
                } else if (statusCode.intValue() != 200) {
                    this.c.onError(this.b, statusCode.intValue());
                    return;
                }
            }
            this.c.onSuccess(this.b, result);
            super.onPostExecute(result);
        }
    }
}
