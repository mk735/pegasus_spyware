package com.tencent.tmsecure.module.plugin;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;

public interface IContext {

    public interface ILayoutInflater {
        View inflate(Activity activity, int i, ViewGroup viewGroup);

        View inflate(Activity activity, int i, ViewGroup viewGroup, boolean z);
    }

    AssetManager getAssertManager();

    Context getContext();

    ILayoutInflater getLayoutInflater();

    Resources getResources();
}
