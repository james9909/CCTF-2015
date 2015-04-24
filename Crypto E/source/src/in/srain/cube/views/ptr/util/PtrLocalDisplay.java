// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.util;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class PtrLocalDisplay
{

    public static int a;
    public static int b;
    public static float c;
    public static int d;
    public static int e;
    private static boolean f;

    public PtrLocalDisplay()
    {
    }

    public static int a(float f1)
    {
        return (int)(0.5F + f1 * c);
    }

    public static void a(Context context)
    {
        if (f || context == null)
        {
            return;
        } else
        {
            f = true;
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            a = displaymetrics.widthPixels;
            b = displaymetrics.heightPixels;
            c = displaymetrics.density;
            d = (int)((float)a / displaymetrics.density);
            e = (int)((float)b / displaymetrics.density);
            return;
        }
    }
}
