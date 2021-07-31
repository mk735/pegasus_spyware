package android.support.v4.view;

import android.support.v4.view.LayoutInflaterCompatHC;
import android.view.LayoutInflater;

class LayoutInflaterCompatLollipop {
    LayoutInflaterCompatLollipop() {
    }

    static void setFactory(LayoutInflater inflater, LayoutInflaterFactory factory) {
        inflater.setFactory2(factory != null ? new LayoutInflaterCompatHC.FactoryWrapperHC(factory) : null);
    }
}
