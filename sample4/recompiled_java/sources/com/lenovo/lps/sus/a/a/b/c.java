package com.lenovo.lps.sus.a.a.b;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

public class c {
    public static String a(String str) {
        try {
            return new String(a(str.getBytes()), "ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("ASCII is not supported!", e);
        }
    }

    public static String a(String str, String str2) {
        try {
            try {
                return new String(a(str.getBytes(str2)), "ASCII");
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException("ASCII is not supported!", e);
            }
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("Unsupported charset: " + str2, e2);
        }
    }

    private static void a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static byte[] a(byte[] bArr) {
        return c(bArr);
    }

    public static String b(String str) {
        try {
            return new String(b(str.getBytes("ASCII")));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("ASCII is not supported!", e);
        }
    }

    public static String b(String str, String str2) {
        try {
            try {
                return new String(b(str.getBytes("ASCII")), str2);
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException("Unsupported charset: " + str2, e);
            }
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("ASCII is not supported!", e2);
        }
    }

    public static byte[] b(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            a(new a(byteArrayInputStream), byteArrayOutputStream);
            try {
                byteArrayInputStream.close();
                try {
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                } catch (IOException e) {
                    throw new RuntimeException("Close IO error", e);
                }
            } catch (IOException e2) {
                throw new RuntimeException("Close IO error", e2);
            }
        } catch (IOException e3) {
            throw new RuntimeException("Unexpected I/O error", e3);
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
                try {
                    byteArrayOutputStream.close();
                    throw th;
                } catch (IOException e4) {
                    throw new RuntimeException("Close IO error", e4);
                }
            } catch (IOException e5) {
                throw new RuntimeException("Close IO error", e5);
            }
        }
    }

    private static byte[] c(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            b bVar = new b(byteArrayOutputStream);
            a(byteArrayInputStream, bVar);
            bVar.a();
            try {
                byteArrayInputStream.close();
                try {
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                } catch (IOException e) {
                    throw new RuntimeException("Close IO error", e);
                }
            } catch (IOException e2) {
                throw new RuntimeException("Close IO error", e2);
            }
        } catch (IOException e3) {
            throw new RuntimeException("Unexpected I/O error", e3);
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
                try {
                    byteArrayOutputStream.close();
                    throw th;
                } catch (IOException e4) {
                    throw new RuntimeException("Close IO error", e4);
                }
            } catch (IOException e5) {
                throw new RuntimeException("Close IO error", e5);
            }
        }
    }
}
