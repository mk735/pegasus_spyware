package android.support.v4.app;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;

public class DialogFragment extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public static final int STYLE_NORMAL = 0;
    public static final int STYLE_NO_FRAME = 2;
    public static final int STYLE_NO_INPUT = 3;
    public static final int STYLE_NO_TITLE = 1;
    int a = 0;
    int b = 0;
    boolean c = true;
    boolean d = true;
    int e = -1;
    Dialog f;
    boolean g;
    boolean h;

    public void setStyle(int style, int theme) {
        this.a = style;
        if (this.a == 2 || this.a == 3) {
            this.b = 16973913;
        }
        if (theme != 0) {
            this.b = theme;
        }
    }

    public void show(FragmentManager manager, String tag) {
        FragmentTransaction ft = manager.beginTransaction();
        ft.add(this, tag);
        ft.commit();
    }

    public int show(FragmentTransaction transaction, String tag) {
        transaction.add(this, tag);
        this.h = false;
        this.e = transaction.commit();
        return this.e;
    }

    public void dismiss() {
        b(false);
    }

    private void b(boolean allowStateLoss) {
        if (this.f != null) {
            this.f.dismiss();
            this.f = null;
        }
        this.h = true;
        if (this.e >= 0) {
            getFragmentManager().popBackStack(this.e, 1);
            this.e = -1;
            return;
        }
        FragmentTransaction ft = getFragmentManager().beginTransaction();
        ft.remove(this);
        if (allowStateLoss) {
            ft.commitAllowingStateLoss();
        } else {
            ft.commit();
        }
    }

    public Dialog getDialog() {
        return this.f;
    }

    public int getTheme() {
        return this.b;
    }

    public void setCancelable(boolean cancelable) {
        this.c = cancelable;
        if (this.f != null) {
            this.f.setCancelable(cancelable);
        }
    }

    public boolean isCancelable() {
        return this.c;
    }

    public void setShowsDialog(boolean showsDialog) {
        this.d = showsDialog;
    }

    public boolean getShowsDialog() {
        return this.d;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.d = this.E == 0;
        if (savedInstanceState != null) {
            this.a = savedInstanceState.getInt("android:style", 0);
            this.b = savedInstanceState.getInt("android:theme", 0);
            this.c = savedInstanceState.getBoolean("android:cancelable", true);
            this.d = savedInstanceState.getBoolean("android:showsDialog", this.d);
            this.e = savedInstanceState.getInt("android:backStackId", -1);
        }
    }

    @Override // android.support.v4.app.Fragment
    public LayoutInflater getLayoutInflater(Bundle savedInstanceState) {
        if (!this.d) {
            return super.getLayoutInflater(savedInstanceState);
        }
        this.f = onCreateDialog(savedInstanceState);
        this.g = false;
        switch (this.a) {
            case 3:
                this.f.getWindow().addFlags(24);
            case 1:
            case 2:
                this.f.requestWindowFeature(1);
                break;
        }
        return (LayoutInflater) this.f.getContext().getSystemService("layout_inflater");
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        return new Dialog(getActivity(), getTheme());
    }

    public void onCancel(DialogInterface dialog) {
    }

    public void onDismiss(DialogInterface dialog) {
        if (!this.h) {
            b(true);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        Bundle dialogState;
        super.onActivityCreated(savedInstanceState);
        if (this.d) {
            View view = getView();
            if (view != null) {
                if (view.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                this.f.setContentView(view);
            }
            this.f.setOwnerActivity(getActivity());
            this.f.setCancelable(this.c);
            this.f.setOnCancelListener(this);
            this.f.setOnDismissListener(this);
            if (savedInstanceState != null && (dialogState = savedInstanceState.getBundle("android:savedDialogState")) != null) {
                this.f.onRestoreInstanceState(dialogState);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.f != null) {
            this.h = false;
            this.f.show();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Bundle dialogState;
        super.onSaveInstanceState(outState);
        if (!(this.f == null || (dialogState = this.f.onSaveInstanceState()) == null)) {
            outState.putBundle("android:savedDialogState", dialogState);
        }
        if (this.a != 0) {
            outState.putInt("android:style", this.a);
        }
        if (this.b != 0) {
            outState.putInt("android:theme", this.b);
        }
        if (!this.c) {
            outState.putBoolean("android:cancelable", this.c);
        }
        if (!this.d) {
            outState.putBoolean("android:showsDialog", this.d);
        }
        if (this.e != -1) {
            outState.putInt("android:backStackId", this.e);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.f != null) {
            this.f.hide();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.g = true;
        if (this.f != null) {
            this.h = true;
            this.f.dismiss();
            this.f = null;
        }
    }
}
