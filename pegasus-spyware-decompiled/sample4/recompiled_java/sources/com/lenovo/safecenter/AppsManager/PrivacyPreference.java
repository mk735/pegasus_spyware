package com.lenovo.safecenter.AppsManager;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.lenovo.safecenter.R;

public class PrivacyPreference extends Preference {
    private Context a;

    public PrivacyPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.a = context;
    }

    public PrivacyPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.a = context;
    }

    public PrivacyPreference(Context context) {
        super(context);
        this.a = context;
    }

    /* access modifiers changed from: protected */
    public View onCreateView(ViewGroup parent) {
        super.onCreateView(parent);
        View view = LayoutInflater.from(this.a).inflate(R.layout.title, (ViewGroup) null);
        ((TextView) view.findViewById(R.id.txt_title)).setText(R.string.safemode_settings);
        return view;
    }
}
