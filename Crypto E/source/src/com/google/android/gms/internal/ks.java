// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.Path;
import android.net.Uri;
import android.widget.ImageView;

public final class ks extends ImageView
{
    public static interface a
    {

        public abstract Path m(int i, int j);
    }


    private Uri TD;
    private int TE;
    private int TF;
    private a TG;
    private int TH;
    private float TI;

    public void bJ(int i)
    {
        TE = i;
    }

    public void h(Uri uri)
    {
        TD = uri;
    }

    public int jz()
    {
        return TE;
    }

    protected void onDraw(Canvas canvas)
    {
        if (TG != null)
        {
            canvas.clipPath(TG.m(getWidth(), getHeight()));
        }
        super.onDraw(canvas);
        if (TF != 0)
        {
            canvas.drawColor(TF);
        }
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        TH;
        JVM INSTR tableswitch 1 2: default 32
    //                   1 33
    //                   2 57;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        int k;
        int l;
        l = getMeasuredHeight();
        k = (int)((float)l * TI);
_L5:
        setMeasuredDimension(k, l);
        return;
_L3:
        k = getMeasuredWidth();
        l = (int)((float)k / TI);
        if (true) goto _L5; else goto _L4
_L4:
    }
}
