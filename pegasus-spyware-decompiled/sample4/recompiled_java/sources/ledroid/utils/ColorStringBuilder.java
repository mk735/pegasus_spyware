package ledroid.utils;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;

public final class ColorStringBuilder {
    private SpannableStringBuilder a;

    public ColorStringBuilder(CharSequence text) {
        this.a = new SpannableStringBuilder(text);
    }

    public ColorStringBuilder(CharSequence text, int colorid) {
        if (text != null) {
            String strText = text.toString();
            if (!strText.contains("#")) {
                this.a = new SpannableStringBuilder(text);
                return;
            }
            String[] items = strText.split("#");
            int[] itempos = new int[items.length];
            int pos = 0;
            String strColorString = "";
            for (int i = 0; i < items.length; i++) {
                pos += items[i].length();
                strColorString = strColorString + items[i];
                itempos[i] = pos;
            }
            this.a = new SpannableStringBuilder(strColorString);
            for (int i2 = 0; i2 < itempos.length / 2; i2++) {
                setColor(colorid, itempos[i2 * 2], itempos[(i2 * 2) + 1]);
            }
        }
    }

    public final ColorStringBuilder setColor(int color, int start) {
        setColor(color, start, this.a.length());
        return this;
    }

    public final ColorStringBuilder setColor(int color, int start, int end) {
        this.a.setSpan(new ForegroundColorSpan(color), start, end, 33);
        return this;
    }

    public final CharSequence getString() {
        return this.a;
    }

    public final String toString() {
        return this.a.toString();
    }
}
