// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;

public class FontUtils
{

    public static Typeface a;

    public FontUtils()
    {
    }

    public static void a(AssetManager assetmanager)
    {
        a = Typeface.createFromAsset(assetmanager, "Roboto-BoldCondensed.ttf");
        net.simonvt.numberpicker.Util.FontUtils.a(assetmanager);
    }

    public static void a(View view, AssetManager assetmanager)
    {
        ((TextView)view).setTypeface(a);
    }
}
