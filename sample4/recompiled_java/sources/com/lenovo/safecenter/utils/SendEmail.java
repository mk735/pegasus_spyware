package com.lenovo.safecenter.utils;

import QQPIM.EModelID;
import android.app.ActivityManagerNative;
import android.content.Context;
import android.util.Log;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.lps.sus.c.c;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.apache.commons.httpclient.methods.MultipartPostMethod;

public class SendEmail {
    private Context a;
    private String b;

    public SendEmail(Context context, String toAddress) {
        this.a = context;
        this.b = toAddress;
    }

    public boolean send() {
        Map<String, String> params = new HashMap<>();
        params.put("tomail", this.b);
        try {
            if (ActivityManagerNative.getDefault().getConfiguration().locale.getCountry().equals("CN")) {
                params.put("lang", "zh-cn");
            } else {
                params.put("lang", "en");
            }
            File f1 = new File(this.a.getFilesDir().getPath(), "Contacts.vcf");
            File f2 = new File(this.a.getFilesDir().getPath(), "smsbackup.txt");
            Map<String, File> files = new HashMap<>();
            files.put("Contacts.vcf", f1);
            files.put("smsbackup.txt", f2);
            String BOUNDARY = UUID.randomUUID().toString();
            HttpURLConnection conn = (HttpURLConnection) new URL("http://sss.lenovomm.com/sss/1.0/backup").openConnection();
            conn.setReadTimeout(EModelID._EMID_QQPim_Begin);
            conn.setDoInput(true);
            conn.setDoOutput(true);
            conn.setUseCaches(false);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("connection", "keep-alive");
            conn.setRequestProperty("Charsert", b.a);
            conn.setRequestProperty("Content-Type", MultipartPostMethod.MULTIPART_FORM_CONTENT_TYPE + ";boundary=" + BOUNDARY);
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : params.entrySet()) {
                sb.append("--");
                sb.append(BOUNDARY);
                sb.append("\r\n");
                sb.append("Content-Disposition: form-data; name=\"" + entry.getKey() + c.M + "\r\n");
                sb.append("Content-Type: text/plain; charset=" + b.a + "\r\n");
                sb.append("Content-Transfer-Encoding: 8bit" + "\r\n");
                sb.append("\r\n");
                sb.append(entry.getValue());
                sb.append("\r\n");
            }
            DataOutputStream outStream = new DataOutputStream(conn.getOutputStream());
            outStream.write(sb.toString().getBytes());
            for (Map.Entry<String, File> file : files.entrySet()) {
                StringBuilder sb1 = new StringBuilder();
                sb1.append("--");
                sb1.append(BOUNDARY);
                sb1.append("\r\n");
                if (file.getKey().equals("Contacts.vcf")) {
                    sb1.append("Content-Disposition: form-data; name=\"contacts\"; filename=\"" + file.getKey() + c.M + "\r\n");
                } else {
                    sb1.append("Content-Disposition: form-data; name=\"smsbackup\"; filename=\"" + file.getKey() + c.M + "\r\n");
                }
                sb1.append("Content-Type: application/octet-stream; charset=" + b.a + "\r\n");
                sb1.append("\r\n");
                outStream.write(sb1.toString().getBytes());
                InputStream is = new FileInputStream(file.getValue());
                byte[] buffer = new byte[1024];
                while (true) {
                    int len = is.read(buffer);
                    if (len == -1) {
                        break;
                    }
                    outStream.write(buffer, 0, len);
                }
                is.close();
                outStream.write("\r\n".getBytes());
            }
            outStream.write(("--" + BOUNDARY + "--" + "\r\n").getBytes());
            outStream.flush();
            int res = conn.getResponseCode();
            Log.i("ydp", "res:" + res);
            outStream.close();
            conn.disconnect();
            if (res == 200) {
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
