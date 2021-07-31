package com.lenovo.safecenter.encoders;

public class HexTranslator implements Translator {
    private static final byte[] a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    @Override // com.lenovo.safecenter.encoders.Translator
    public int getEncodedBlockSize() {
        return 2;
    }

    @Override // com.lenovo.safecenter.encoders.Translator
    public int encode(byte[] in, int inOff, int length, byte[] out, int outOff) {
        int i = 0;
        int j = 0;
        while (i < length) {
            out[outOff + j] = a[(in[inOff] >> 4) & 15];
            out[outOff + j + 1] = a[in[inOff] & 15];
            inOff++;
            i++;
            j += 2;
        }
        return length * 2;
    }

    @Override // com.lenovo.safecenter.encoders.Translator
    public int getDecodedBlockSize() {
        return 1;
    }

    @Override // com.lenovo.safecenter.encoders.Translator
    public int decode(byte[] in, int inOff, int length, byte[] out, int outOff) {
        int halfLength = length / 2;
        for (int i = 0; i < halfLength; i++) {
            byte left = in[(i * 2) + inOff];
            byte right = in[(i * 2) + inOff + 1];
            if (left < 97) {
                out[outOff] = (byte) ((left - 48) << 4);
            } else {
                out[outOff] = (byte) (((left - 97) + 10) << 4);
            }
            if (right < 97) {
                out[outOff] = (byte) (out[outOff] + ((byte) (right - 48)));
            } else {
                out[outOff] = (byte) (out[outOff] + ((byte) ((right - 97) + 10)));
            }
            outOff++;
        }
        return halfLength;
    }
}
