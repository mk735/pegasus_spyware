package com.lenovo.safecenter.utils;

import android.util.Patterns;
import com.tencent.tmsecure.module.permission.PermissionControlConfig;

public class Untils {
    public static final char PAUSE = ',';
    public static final int TOA_International = 145;
    public static final int TOA_Unknown = 129;
    public static final char WAIT = ';';
    public static final char WILD = 'N';
    private static final boolean[] a = {true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, true, true, true, true, true, false, true, false, false, true, true, false, false, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true, false, true, false, false, true, true, true, true, true, true, true, false, false, true, false};
    private static final int b = a.length;

    public static boolean compare(String a2, String b2, boolean useStrictComparation) {
        return useStrictComparation ? compareStrictly(a2, b2) : compareLoosely(a2, b2);
    }

    public static boolean compareStrictly(String a2, String b2) {
        return compareStrictly(a2, b2, true);
    }

    public static boolean compareStrictly(String a2, String b2, boolean acceptInvalidCCCPrefix) {
        if (a2 == null || b2 == null) {
            return false;
        }
        if (a2.length() == 0 && b2.length() == 0) {
            return false;
        }
        int forwardIndexA = 0;
        int forwardIndexB = 0;
        a cccA = a(a2, acceptInvalidCCCPrefix);
        a cccB = a(b2, acceptInvalidCCCPrefix);
        boolean bothHasCountryCallingCode = false;
        boolean okToIgnorePrefix = true;
        boolean trunkPrefixIsOmittedA = false;
        boolean trunkPrefixIsOmittedB = false;
        if (cccA == null || cccB == null) {
            if (cccA == null && cccB == null) {
                okToIgnorePrefix = false;
            } else {
                if (cccA != null) {
                    forwardIndexA = cccA.b;
                } else {
                    int tmp = a(b2);
                    if (tmp >= 0) {
                        forwardIndexA = tmp;
                        trunkPrefixIsOmittedA = true;
                    }
                }
                if (cccB != null) {
                    forwardIndexB = cccB.b;
                } else {
                    int tmp2 = a(b2);
                    if (tmp2 >= 0) {
                        forwardIndexB = tmp2;
                        trunkPrefixIsOmittedB = true;
                    }
                }
            }
        } else if (cccA.a != cccB.a) {
            return false;
        } else {
            okToIgnorePrefix = false;
            bothHasCountryCallingCode = true;
            forwardIndexA = cccA.b;
            forwardIndexB = cccB.b;
        }
        int backwardIndexA = a2.length() - 1;
        int backwardIndexB = b2.length() - 1;
        while (backwardIndexA >= forwardIndexA && backwardIndexB >= forwardIndexB) {
            boolean skip_compare = false;
            char chA = a2.charAt(backwardIndexA);
            char chB = b2.charAt(backwardIndexB);
            if (a(chA)) {
                backwardIndexA--;
                skip_compare = true;
            }
            if (a(chB)) {
                backwardIndexB--;
                skip_compare = true;
            }
            if (!skip_compare) {
                if (chA != chB) {
                    return false;
                }
                backwardIndexA--;
                backwardIndexB--;
            }
        }
        if (!okToIgnorePrefix) {
            boolean maybeNamp = !bothHasCountryCallingCode;
            while (backwardIndexA >= forwardIndexA) {
                char chA2 = a2.charAt(backwardIndexA);
                if (isDialable(chA2)) {
                    if (!maybeNamp || b(chA2) != 1) {
                        return false;
                    }
                    maybeNamp = false;
                }
                backwardIndexA--;
            }
            while (backwardIndexB >= forwardIndexB) {
                char chB2 = b2.charAt(backwardIndexB);
                if (isDialable(chB2)) {
                    if (!maybeNamp || b(chB2) != 1) {
                        return false;
                    }
                    maybeNamp = false;
                }
                backwardIndexB--;
            }
        } else if ((!trunkPrefixIsOmittedA || forwardIndexA > backwardIndexA) && a(a2, forwardIndexA, backwardIndexA)) {
            if ((trunkPrefixIsOmittedB && forwardIndexB <= backwardIndexB) || !a(b2, forwardIndexA, backwardIndexB)) {
                if (acceptInvalidCCCPrefix) {
                    return compare(a2, b2, false);
                }
                return false;
            }
        } else if (acceptInvalidCCCPrefix) {
            return compare(a2, b2, false);
        } else {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: private */
    public static class a {
        public final int a;
        public final int b;

        public a(int countryCode, int newIndex) {
            this.a = countryCode;
            this.b = newIndex;
        }
    }

    private static a a(String str, boolean acceptThailandCase) {
        int state = 0;
        int ccc = 0;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char ch = str.charAt(i);
            switch (state) {
                case 0:
                    if (ch != '+') {
                        if (ch == '0') {
                            state = 2;
                            break;
                        } else if (ch != '1') {
                            if (!isDialable(ch)) {
                                break;
                            } else {
                                return null;
                            }
                        } else if (acceptThailandCase) {
                            state = 8;
                            break;
                        } else {
                            return null;
                        }
                    } else {
                        state = 1;
                        break;
                    }
                case 1:
                case 3:
                case 5:
                case 6:
                case 7:
                    int ret = b(ch);
                    if (ret > 0) {
                        ccc = (ccc * 10) + ret;
                        if (ccc < 100) {
                            if (!(ccc > 0 && ccc < b && a[ccc])) {
                                if (state != 1 && state != 3 && state != 5) {
                                    state++;
                                    break;
                                } else {
                                    state = 6;
                                    break;
                                }
                            }
                        }
                        return new a(ccc, i + 1);
                    } else if (!isDialable(ch)) {
                        break;
                    } else {
                        return null;
                    }
                    break;
                case 2:
                    if (ch != '0') {
                        if (ch == '1') {
                            state = 4;
                            break;
                        } else if (!isDialable(ch)) {
                            break;
                        } else {
                            return null;
                        }
                    } else {
                        state = 3;
                        break;
                    }
                case 4:
                    if (ch == '1') {
                        state = 5;
                        break;
                    } else if (!isDialable(ch)) {
                        break;
                    } else {
                        return null;
                    }
                case 8:
                    if (ch == '6') {
                        state = 9;
                        break;
                    } else if (!isDialable(ch)) {
                        break;
                    } else {
                        return null;
                    }
                case 9:
                    if (ch == '6') {
                        return new a(66, i + 1);
                    }
                    return null;
                default:
                    return null;
            }
        }
        return null;
    }

    private static int a(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char ch = str.charAt(i);
            if (b(ch) >= 0) {
                return i + 1;
            }
            if (isDialable(ch)) {
                return -1;
            }
        }
        return -1;
    }

    private static boolean a(char ch) {
        return !isDialable(ch) && ('a' > ch || ch > 'z') && ('A' > ch || ch > 'Z');
    }

    private static boolean a(String str, int forwardIndex, int backwardIndex) {
        boolean trunk_prefix_was_read = false;
        while (backwardIndex >= forwardIndex) {
            if (b(str.charAt(backwardIndex)) >= 0) {
                if (trunk_prefix_was_read) {
                    return false;
                }
                trunk_prefix_was_read = true;
            } else if (isDialable(str.charAt(backwardIndex))) {
                return false;
            }
            backwardIndex--;
        }
        return true;
    }

    private static int b(char ch) {
        if ('0' > ch || ch > '9') {
            return -1;
        }
        return ch - '0';
    }

    public static boolean compareLoosely(String a2, String b2) {
        int numNonDialableCharsInA = 0;
        int numNonDialableCharsInB = 0;
        if (a2 == null || b2 == null || a2.length() == 0 || b2.length() == 0) {
            return false;
        }
        int ia = b(a2);
        int ib = b(b2);
        int matched = 0;
        while (ia >= 0 && ib >= 0) {
            boolean skipCmp = false;
            char ca = a2.charAt(ia);
            if (!isDialable(ca)) {
                ia--;
                skipCmp = true;
                numNonDialableCharsInA++;
            }
            char cb = b2.charAt(ib);
            if (!isDialable(cb)) {
                ib--;
                skipCmp = true;
                numNonDialableCharsInB++;
            }
            if (!skipCmp) {
                if (cb != ca && ca != 'N' && cb != 'N') {
                    break;
                }
                ia--;
                ib--;
                matched++;
            }
        }
        if (matched < 7) {
            int effectiveALen = a2.length() - numNonDialableCharsInA;
            if (effectiveALen == b2.length() - numNonDialableCharsInB && effectiveALen == matched) {
                return true;
            }
            return false;
        } else if (matched >= 7 && (ia < 0 || ib < 0)) {
            return true;
        } else {
            if (b(a2, ia + 1) && b(b2, ib + 1)) {
                return true;
            }
            if (a(a2, ia + 1) && c(b2, ib + 1)) {
                return true;
            }
            if (!a(b2, ib + 1) || !c(a2, ia + 1)) {
                return false;
            }
            return true;
        }
    }

    private static boolean a(String a2, int len) {
        boolean found = false;
        for (int i = 0; i < len; i++) {
            char c = a2.charAt(i);
            if (c == '0' && !found) {
                found = true;
            } else if (isNonSeparator(c)) {
                return false;
            }
        }
        return found;
    }

    private static int b(String a2) {
        int trimIndex;
        int origLength = a2.length();
        int pIndex = a2.indexOf(44);
        int wIndex = a2.indexOf(59);
        if (pIndex < 0 || wIndex < 0) {
            trimIndex = pIndex >= 0 ? pIndex : wIndex >= 0 ? wIndex : -1;
        } else {
            if (pIndex >= wIndex) {
                pIndex = wIndex;
            }
            trimIndex = pIndex;
        }
        if (trimIndex < 0) {
            return origLength - 1;
        }
        return trimIndex - 1;
    }

    public static final boolean is12Key(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#';
    }

    public static final boolean isDialable(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+' || c == 'N';
    }

    public static final boolean isReallyDialable(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+';
    }

    public static final boolean isNonSeparator(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+' || c == 'N' || c == ';' || c == ',';
    }

    private static boolean b(String a2, int len) {
        int state = 0;
        for (int i = 0; i < len; i++) {
            char c = a2.charAt(i);
            switch (state) {
                case 0:
                    if (c != '+') {
                        if (c == '0') {
                            state = 2;
                            break;
                        } else if (!isNonSeparator(c)) {
                            break;
                        } else {
                            return false;
                        }
                    } else {
                        state = 1;
                        break;
                    }
                case 1:
                case 3:
                default:
                    if (!isNonSeparator(c)) {
                        break;
                    } else {
                        return false;
                    }
                case 2:
                    if (c != '0') {
                        if (c == '1') {
                            state = 4;
                            break;
                        } else if (!isNonSeparator(c)) {
                            break;
                        } else {
                            return false;
                        }
                    } else {
                        state = 3;
                        break;
                    }
                case 4:
                    if (c == '1') {
                        state = 5;
                        break;
                    } else if (!isNonSeparator(c)) {
                        break;
                    } else {
                        return false;
                    }
            }
        }
        return state == 1 || state == 3 || state == 5;
    }

    private static boolean c(String a2, int len) {
        int state = 0;
        for (int i = 0; i < len; i++) {
            char c = a2.charAt(i);
            switch (state) {
                case 0:
                    if (c != '+') {
                        if (c == '0') {
                            state = 2;
                            break;
                        } else if (!isNonSeparator(c)) {
                            break;
                        } else {
                            return false;
                        }
                    } else {
                        state = 1;
                        break;
                    }
                case 1:
                case 3:
                case 5:
                    if (isISODigit(c)) {
                        state = 6;
                        break;
                    } else if (!isNonSeparator(c)) {
                        break;
                    } else {
                        return false;
                    }
                case 2:
                    if (c != '0') {
                        if (c == '1') {
                            state = 4;
                            break;
                        } else if (!isNonSeparator(c)) {
                            break;
                        } else {
                            return false;
                        }
                    } else {
                        state = 3;
                        break;
                    }
                case 4:
                    if (c == '1') {
                        state = 5;
                        break;
                    } else if (!isNonSeparator(c)) {
                        break;
                    } else {
                        return false;
                    }
                case 6:
                case 7:
                    if (isISODigit(c)) {
                        state++;
                        break;
                    } else if (!isNonSeparator(c)) {
                        break;
                    } else {
                        return false;
                    }
                default:
                    if (!isNonSeparator(c)) {
                        break;
                    } else {
                        return false;
                    }
            }
        }
        if (state == 6 || state == 7 || state == 8) {
            return true;
        }
        return false;
    }

    public static boolean isISODigit(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean isPhoneNUmber(String number) {
        return Patterns.PHONE.matcher(number).matches();
    }

    public static String jiaMi(String s, String key) {
        String str = "";
        if (key.length() == 0) {
            return s;
        }
        if (s != null) {
            int i = 0;
            int j = 0;
            while (i < s.length()) {
                if (j > key.length() - 1) {
                    j %= key.length();
                }
                int ch = s.codePointAt(i) + key.codePointAt(j);
                if (ch > 65535) {
                    ch %= PermissionControlConfig.PERMISSION_MODE_NULL;
                }
                str = str + ((char) ch);
                i++;
                j++;
            }
        }
        return str;
    }

    public static String jieMi(String s, String key) {
        String str = "";
        if (key.length() == 0) {
            return s;
        }
        if (!s.equals(key)) {
            int i = 0;
            int j = 0;
            while (i < s.length()) {
                if (j > key.length() - 1) {
                    j %= key.length();
                }
                int ch = (s.codePointAt(i) + PermissionControlConfig.PERMISSION_MODE_NULL) - key.codePointAt(j);
                if (ch > 65535) {
                    ch %= PermissionControlConfig.PERMISSION_MODE_NULL;
                }
                str = str + ((char) ch);
                i++;
                j++;
            }
        }
        return str;
    }
}
