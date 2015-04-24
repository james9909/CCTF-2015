// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;

// Referenced classes of package com.google.android.gms.internal:
//            hr, fz, hk, ab, 
//            gx, hf

public class fi
    implements Runnable
{
    public final class a extends AsyncTask
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
            ug = Bitmap.createBitmap(fi.a(uh), fi.b(uh), android.graphics.Bitmap.Config.ARGB_8888);
            uf.setVisibility(0);
            uf.measure(android.view.View.MeasureSpec.makeMeasureSpec(fi.a(uh), 0), android.view.View.MeasureSpec.makeMeasureSpec(fi.b(uh), 0));
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

        public a(WebView webview)
        {
            uh = fi.this;
            super();
            uf = webview;
        }
    }


    private final int li;
    private final int lj;
    protected final hk mj;
    private final Handler tZ;
    private final long ua;
    private long ub;
    private hl.a uc;
    protected boolean ud;
    protected boolean ue;

    public fi(hl.a a1, hk hk1, int i, int j)
    {
        this(a1, hk1, i, j, 200L, 50L);
    }

    public fi(hl.a a1, hk hk1, int i, int j, long l, long l1)
    {
        ua = l;
        ub = l1;
        tZ = new Handler(Looper.getMainLooper());
        mj = hk1;
        uc = a1;
        ud = false;
        ue = false;
        lj = j;
        li = i;
    }

    static int a(fi fi1)
    {
        return fi1.li;
    }

    static int b(fi fi1)
    {
        return fi1.lj;
    }

    static long c(fi fi1)
    {
        long l = fi1.ub - 1L;
        fi1.ub = l;
        return l;
    }

    static long d(fi fi1)
    {
        return fi1.ub;
    }

    static hl.a e(fi fi1)
    {
        return fi1.uc;
    }

    static long f(fi fi1)
    {
        return fi1.ua;
    }

    static Handler g(fi fi1)
    {
        return fi1.tZ;
    }

    public void a(fz fz1)
    {
        a(fz1, new hr(this, mj, fz1.vg));
    }

    public void a(fz fz1, hr hr1)
    {
        mj.setWebViewClient(hr1);
        hk hk1 = mj;
        String s;
        if (TextUtils.isEmpty(fz1.sT))
        {
            s = null;
        } else
        {
            s = ab.aG().O(fz1.sT);
        }
        hk1.loadDataWithBaseURL(s, fz1.uX, "text/html", "UTF-8", null);
    }

    public void cM()
    {
        tZ.postDelayed(this, ua);
    }

    public void cN()
    {
        this;
        JVM INSTR monitorenter ;
        ud = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean cO()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = ud;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean cP()
    {
        return ue;
    }

    public void run()
    {
        if (mj == null || cO())
        {
            uc.a(mj);
            return;
        } else
        {
            (new a(mj.getWebView())).execute(new Void[0]);
            return;
        }
    }
}
