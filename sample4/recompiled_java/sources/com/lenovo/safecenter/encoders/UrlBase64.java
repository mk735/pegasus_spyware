package com.lenovo.safecenter.encoders;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class UrlBase64 {
    private static final Encoder a = new UrlBase64Encoder();

    public static byte[] encode(byte[] data) {
        ByteArrayOutputStream bOut = new ByteArrayOutputStream();
        try {
            a.encode(data, 0, data.length, bOut);
            return bOut.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("exception encoding URL safe base64 string: " + e);
        }
    }

    public static int encode(byte[] data, OutputStream out) throws IOException {
        return a.encode(data, 0, data.length, out);
    }

    public static byte[] decode(byte[] data) {
        ByteArrayOutputStream bOut = new ByteArrayOutputStream();
        try {
            a.decode(data, 0, data.length, bOut);
            return bOut.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("exception decoding URL safe base64 string: " + e);
        }
    }

    public static int decode(byte[] data, OutputStream out) throws IOException {
        return a.decode(data, 0, data.length, out);
    }

    public static byte[] decode(String data) {
        ByteArrayOutputStream bOut = new ByteArrayOutputStream();
        try {
            a.decode(data, bOut);
            return bOut.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("exception decoding URL safe base64 string: " + e);
        }
    }

    public static int decode(String data, OutputStream out) throws IOException {
        return a.decode(data, out);
    }

    public static void main(String[] args) {
        try {
            String token = new String(encode("2|4527|25181|460|00".getBytes()));
            System.out.println(token);
            System.out.println(new String(Base64.encode("2|4527|25181|460|00".getBytes())));
            System.out.println(new String(decode(token)));
            System.out.println(new String(Base64.decode(token)));
            System.out.println(new String(Base64.decode(Base64.encode("2|4527|25181|460|00".getBytes()))));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
