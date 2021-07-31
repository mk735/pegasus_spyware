package com.lenovo.safecenter.encoders;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class Hex {
    private static final Encoder a = new HexEncoder();

    public static byte[] encode(byte[] data) {
        return encode(data, 0, data.length);
    }

    public static byte[] encode(byte[] data, int off, int length) {
        ByteArrayOutputStream bOut = new ByteArrayOutputStream();
        try {
            a.encode(data, off, length, bOut);
            return bOut.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("exception encoding Hex string: " + e);
        }
    }

    public static int encode(byte[] data, OutputStream out) throws IOException {
        return a.encode(data, 0, data.length, out);
    }

    public static int encode(byte[] data, int off, int length, OutputStream out) throws IOException {
        return a.encode(data, off, length, out);
    }

    public static byte[] decode(byte[] data) {
        ByteArrayOutputStream bOut = new ByteArrayOutputStream();
        try {
            a.decode(data, 0, data.length, bOut);
            return bOut.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("exception decoding Hex string: " + e);
        }
    }

    public static byte[] decode(String data) {
        ByteArrayOutputStream bOut = new ByteArrayOutputStream();
        try {
            a.decode(data, bOut);
            return bOut.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("exception decoding Hex string: " + e);
        }
    }

    public static int decode(String data, OutputStream out) throws IOException {
        return a.decode(data, out);
    }
}
