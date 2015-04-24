// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.util;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.ViewUtils;

public class PortraitDisplayMetrics extends DisplayMetrics
{

    public PortraitDisplayMetrics()
    {
        this(((WindowManager)SnapchatApplication.e().getApplicationContext().getSystemService("window")).getDefaultDisplay());
    }

    public PortraitDisplayMetrics(Display display)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        display.getMetrics(displaymetrics);
        setTo(displaymetrics);
        widthPixels = ViewUtils.a(displaymetrics, false);
        heightPixels = ViewUtils.b(displaymetrics, false);
        if (widthPixels != displaymetrics.widthPixels)
        {
            xdpi = displaymetrics.ydpi;
            ydpi = displaymetrics.xdpi;
        }
    }
}
