// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker.Util;

import android.content.res.AssetManager;
import android.graphics.Typeface;

public class FontUtils
{

    public static Typeface a;

    public FontUtils()
    {
    }

    public static void a(AssetManager assetmanager)
    {
        a = Typeface.createFromAsset(assetmanager, "Roboto-Light.ttf");
    }
}
