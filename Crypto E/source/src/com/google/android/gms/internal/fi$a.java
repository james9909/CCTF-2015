// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.webkit.WebView;

// Referenced classes of package com.google.android.gms.internal:
//            fi, hf

public final class uf extends AsyncTask
{

    private final WebView uf;
    private Bitmap ug;
    final fi uh;

    protected void a(Boolean boolean1)
    {
        fi.c(uh);
        if (boolean1.booleanValue() || uh.cO() || fi.d(uh) <= 0L)
        {
            uh.ue = boolean1.booleanValue();
            fi.e(uh).a(uh.mj);
        } else
        if (fi.d(uh) > 0L)
        {
            if (hf.x(2))
            {
                hf.T("Ad not detected, scheduling another run.");
            }
            fi.g(uh).postDelayed(uh, fi.f(uh));
            return;
        }
    }

    protected transient Boolean b(Void avoid[])
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        int j;
        i = ug.getWidth();
        j = ug.getHeight();
        if (i != 0 && j != 0) goto _L2; else goto _L1
_L1:
        Boolean boolean1 = Boolean.valueOf(false);
        Boolean boolean2 = boolean1;
_L7:
        this;
        JVM INSTR monitorexit ;
        return boolean2;
_L2:
        int k;
        int l;
        k = 0;
        l = 0;
_L9:
        if (k >= i) goto _L4; else goto _L3
_L3:
        int i1 = 0;
_L8:
        if (i1 >= j) goto _L6; else goto _L5
_L5:
        if (ug.getPixel(k, i1) != 0)
        {
            l++;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        boolean flag;
        Boolean boolean3;
        if ((double)l / ((double)(i * j) / 100D) > 0.10000000000000001D)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        boolean3 = Boolean.valueOf(flag);
        boolean2 = boolean3;
          goto _L7
        Exception exception;
        exception;
        throw exception;
          goto _L8
_L6:
        k += 10;
          goto _L9
    }

    protected Object doInBackground(Object aobj[])
    {
        return b((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    protected void onPreExecute()
    {
        this;
        JVM INSTR monitorenter ;
        ug = Bitmap.createBitmap(fi.a(uh), fi.b(uh), android.graphics.p.Config.ARGB_8888);
        uf.setVisibility(0);
        uf.measure(android.view.MeasureSpec.makeMeasureSpec(fi.a(uh), 0), android.view.MeasureSpec.makeMeasureSpec(fi.b(uh), 0));
        uf.layout(0, 0, fi.a(uh), fi.b(uh));
        Canvas canvas = new Canvas(ug);
        uf.draw(canvas);
        uf.invalidate();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public (fi fi1, WebView webview)
    {
        uh = fi1;
        super();
        uf = webview;
    }
}
