package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.tencent.tmsecure.utils.Log;

public class QuestionAndAnswer extends Activity {
    TextView a;
    TextView b;
    TextView c;
    TextView d;
    TextView e;
    TextView f;
    TextView g;
    TextView h;
    TextView i;
    TextView j;
    TextView k;
    TextView l;
    TextView m;
    TextView n;
    LinearLayout o;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.questionandanswer);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.help);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.MainTab.QuestionAndAnswer.AnonymousClass1 */

            public final void onClick(View v) {
                QuestionAndAnswer.this.finish();
            }
        });
        this.a = (TextView) findViewById(R.id.question1);
        this.b = (TextView) findViewById(R.id.question2);
        this.c = (TextView) findViewById(R.id.question3);
        this.d = (TextView) findViewById(R.id.question4);
        this.e = (TextView) findViewById(R.id.question5);
        this.f = (TextView) findViewById(R.id.question6);
        this.g = (TextView) findViewById(R.id.question7);
        this.h = (TextView) findViewById(R.id.answer1);
        this.i = (TextView) findViewById(R.id.answer2);
        this.j = (TextView) findViewById(R.id.answer3);
        this.k = (TextView) findViewById(R.id.answer4);
        this.l = (TextView) findViewById(R.id.answer5);
        this.m = (TextView) findViewById(R.id.answer6);
        this.n = (TextView) findViewById(R.id.answer7);
        this.o = (LinearLayout) findViewById(R.id.line8);
        if (!TrafficStatsService.nacServerIsExist()) {
            Log.i("ydp", "3rd--------.");
            this.a.setText(R.string.question1_3rd);
            this.b.setText(R.string.question2_3rd);
            this.c.setText(R.string.question3_3rd);
            this.d.setText(R.string.question4_3rd);
            this.e.setText(R.string.question5_3rd);
            this.f.setText(R.string.question6_3rd);
            this.g.setVisibility(8);
            this.h.setText(R.string.answer1_3rd);
            this.i.setText(R.string.answer2_3rd);
            this.j.setText(R.string.answer3_3rd);
            this.k.setText(R.string.answer4_3rd);
            this.l.setText(R.string.answer5_3rd);
            this.m.setText(R.string.answer6_3rd);
            this.n.setVisibility(8);
            this.o.setVisibility(8);
        }
    }
}
