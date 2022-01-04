package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class ListFragment extends Fragment {
    private final Handler T = new Handler();
    private final Runnable U = new Runnable() {
        /* class android.support.v4.app.ListFragment.AnonymousClass1 */

        public final void run() {
            ListFragment.this.b.focusableViewAvailable(ListFragment.this.b);
        }
    };
    private final AdapterView.OnItemClickListener V = new AdapterView.OnItemClickListener() {
        /* class android.support.v4.app.ListFragment.AnonymousClass2 */

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> parent, View v, int position, long id) {
            ListFragment.this.onListItemClick((ListView) parent, v, position, id);
        }
    };
    ListAdapter a;
    ListView b;
    View c;
    TextView d;
    View e;
    View f;
    CharSequence g;
    boolean h;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Context context = getActivity();
        FrameLayout root = new FrameLayout(context);
        LinearLayout pframe = new LinearLayout(context);
        pframe.setId(16711682);
        pframe.setOrientation(1);
        pframe.setVisibility(8);
        pframe.setGravity(17);
        pframe.addView(new ProgressBar(context, null, 16842874), new FrameLayout.LayoutParams(-2, -2));
        root.addView(pframe, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout lframe = new FrameLayout(context);
        lframe.setId(16711683);
        TextView tv = new TextView(getActivity());
        tv.setId(16711681);
        tv.setGravity(17);
        lframe.addView(tv, new FrameLayout.LayoutParams(-1, -1));
        ListView lv = new ListView(getActivity());
        lv.setId(16908298);
        lv.setDrawSelectorOnTop(false);
        lframe.addView(lv, new FrameLayout.LayoutParams(-1, -1));
        root.addView(lframe, new FrameLayout.LayoutParams(-1, -1));
        root.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return root;
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        g();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        this.T.removeCallbacks(this.U);
        this.b = null;
        this.h = false;
        this.f = null;
        this.e = null;
        this.c = null;
        this.d = null;
        super.onDestroyView();
    }

    public void onListItemClick(ListView l, View v, int position, long id) {
    }

    public void setListAdapter(ListAdapter adapter) {
        boolean hadAdapter;
        boolean z = false;
        if (this.a != null) {
            hadAdapter = true;
        } else {
            hadAdapter = false;
        }
        this.a = adapter;
        if (this.b != null) {
            this.b.setAdapter(adapter);
            if (!this.h && !hadAdapter) {
                if (getView().getWindowToken() != null) {
                    z = true;
                }
                a(true, z);
            }
        }
    }

    public void setSelection(int position) {
        g();
        this.b.setSelection(position);
    }

    public int getSelectedItemPosition() {
        g();
        return this.b.getSelectedItemPosition();
    }

    public long getSelectedItemId() {
        g();
        return this.b.getSelectedItemId();
    }

    public ListView getListView() {
        g();
        return this.b;
    }

    public void setEmptyText(CharSequence text) {
        g();
        if (this.d == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        this.d.setText(text);
        if (this.g == null) {
            this.b.setEmptyView(this.d);
        }
        this.g = text;
    }

    public void setListShown(boolean shown) {
        a(shown, true);
    }

    public void setListShownNoAnimation(boolean shown) {
        a(shown, false);
    }

    private void a(boolean shown, boolean animate) {
        g();
        if (this.e == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        } else if (this.h != shown) {
            this.h = shown;
            if (shown) {
                if (animate) {
                    this.e.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432577));
                    this.f.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432576));
                } else {
                    this.e.clearAnimation();
                    this.f.clearAnimation();
                }
                this.e.setVisibility(8);
                this.f.setVisibility(0);
                return;
            }
            if (animate) {
                this.e.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432576));
                this.f.startAnimation(AnimationUtils.loadAnimation(getActivity(), 17432577));
            } else {
                this.e.clearAnimation();
                this.f.clearAnimation();
            }
            this.e.setVisibility(0);
            this.f.setVisibility(8);
        }
    }

    public ListAdapter getListAdapter() {
        return this.a;
    }

    private void g() {
        if (this.b == null) {
            View root = getView();
            if (root == null) {
                throw new IllegalStateException("Content view not yet created");
            }
            if (root instanceof ListView) {
                this.b = (ListView) root;
            } else {
                this.d = (TextView) root.findViewById(16711681);
                if (this.d == null) {
                    this.c = root.findViewById(16908292);
                } else {
                    this.d.setVisibility(8);
                }
                this.e = root.findViewById(16711682);
                this.f = root.findViewById(16711683);
                View rawListView = root.findViewById(16908298);
                if (rawListView instanceof ListView) {
                    this.b = (ListView) rawListView;
                    if (this.c != null) {
                        this.b.setEmptyView(this.c);
                    } else if (this.g != null) {
                        this.d.setText(this.g);
                        this.b.setEmptyView(this.d);
                    }
                } else if (rawListView == null) {
                    throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                } else {
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
            }
            this.h = true;
            this.b.setOnItemClickListener(this.V);
            if (this.a != null) {
                ListAdapter adapter = this.a;
                this.a = null;
                setListAdapter(adapter);
            } else if (this.e != null) {
                a(false, false);
            }
            this.T.post(this.U);
        }
    }
}
