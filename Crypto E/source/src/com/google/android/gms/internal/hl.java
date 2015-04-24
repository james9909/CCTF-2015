// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            dr, hk, bl, ab, 
//            gx, hf, ch, ay, 
//            dy, dn, dw, v, 
//            ce, cg, cm, cl, 
//            cj, he, l, k, 
//            dv, cf, ck, ci, 
//            ds, t, dz, ec

public class hl extends WebViewClient
{
    public static interface a
    {

        public abstract void a(hk hk1);
    }


    private final Object mL;
    protected final hk mj;
    private cf qg;
    private ck qq;
    private dn qr;
    private ci qt;
    private v qu;
    private ds rT;
    private a uc;
    private final HashMap xY;
    private t xZ;
    private dz ya;
    private boolean yb;
    private boolean yc;
    private ec yd;
    private final dr ye;

    public hl(hk hk1, boolean flag)
    {
        this(hk1, flag, new dr(hk1, hk1.getContext(), new bl(hk1.getContext())));
    }

    hl(hk hk1, boolean flag, dr dr1)
    {
        xY = new HashMap();
        mL = new Object();
        yb = false;
        mj = hk1;
        yc = flag;
        ye = dr1;
    }

    private static boolean e(Uri uri)
    {
        String s = uri.getScheme();
        return "http".equalsIgnoreCase(s) || "https".equalsIgnoreCase(s);
    }

    private void f(Uri uri)
    {
        String s = uri.getPath();
        List list = (List)xY.get(s);
        if (list != null)
        {
            Map map = ab.aG().c(uri);
            if (hf.x(2))
            {
                hf.W((new StringBuilder()).append("Received GMSG: ").append(s).toString());
                String s1;
                for (Iterator iterator1 = map.keySet().iterator(); iterator1.hasNext(); hf.W((new StringBuilder()).append("  ").append(s1).append(": ").append((String)map.get(s1)).toString()))
                {
                    s1 = (String)iterator1.next();
                }

            }
            for (Iterator iterator = list.iterator(); iterator.hasNext(); ((ch)iterator.next()).a(mj, map)) { }
        } else
        {
            hf.W((new StringBuilder()).append("No GMSG handler found for GMSG: ").append(uri).toString());
        }
    }

    public final void A(boolean flag)
    {
        yb = flag;
    }

    public final void a(dv dv1)
    {
        boolean flag = mj.dR();
        t t;
        dz dz;
        if (flag && !mj.aa().oA)
        {
            t = null;
        } else
        {
            t = xZ;
        }
        dz = null;
        if (!flag)
        {
            dz = ya;
        }
        a(new dy(dv1, t, dz, yd, mj.dQ()));
    }

    protected void a(dy dy1)
    {
        boolean flag = qr.bZ();
        qr.k(false);
        android.content.Context context = mj.getContext();
        boolean flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        dw.a(context, dy1, flag1);
    }

    public final void a(a a1)
    {
        uc = a1;
    }

    public void a(t t, dz dz, cf cf, ec ec, boolean flag, ci ci, ck ck, 
            v v1, ds ds)
    {
        if (v1 == null)
        {
            v1 = new v(false);
        }
        qr = new dn(mj, ds);
        a("/appEvent", ((ch) (new ce(cf))));
        a("/canOpenURLs", cg.qi);
        a("/click", cg.qj);
        a("/close", cg.qk);
        a("/customClose", cg.ql);
        a("/httpTrack", cg.qm);
        a("/log", cg.qn);
        a("/open", ((ch) (new cm(ci, v1, qr))));
        a("/touch", cg.qo);
        a("/video", cg.qp);
        a("/mraid", ((ch) (new cl(qr))));
        if (ck != null)
        {
            a("/setInterstitialProperties", ((ch) (new cj(ck))));
        }
        xZ = t;
        ya = dz;
        qg = cf;
        qt = ci;
        yd = ec;
        qu = v1;
        rT = ds;
        qq = ck;
        A(flag);
    }

    public final void a(String s, ch ch1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        Object obj1 = (List)xY.get(s);
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        obj1 = new ArrayList();
        xY.put(s, obj1);
        ((List) (obj1)).add(ch1);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a(boolean flag, int i)
    {
        t t;
        if (mj.dR() && !mj.aa().oA)
        {
            t = null;
        } else
        {
            t = xZ;
        }
        a(new dy(t, ya, yd, mj, flag, i, mj.dQ()));
    }

    public final void a(boolean flag, int i, String s)
    {
        boolean flag1 = mj.dR();
        t t;
        dz dz;
        if (flag1 && !mj.aa().oA)
        {
            t = null;
        } else
        {
            t = xZ;
        }
        dz = null;
        if (!flag1)
        {
            dz = ya;
        }
        a(new dy(t, dz, qg, yd, mj, flag, i, s, mj.dQ(), qt));
    }

    public final void a(boolean flag, int i, String s, String s1)
    {
        boolean flag1 = mj.dR();
        t t;
        dz dz;
        if (flag1 && !mj.aa().oA)
        {
            t = null;
        } else
        {
            t = xZ;
        }
        if (flag1)
        {
            dz = null;
        } else
        {
            dz = ya;
        }
        a(new dy(t, dz, qg, yd, mj, flag, i, s, s1, mj.dQ(), qt));
    }

    public void b(int i, int j)
    {
        qr.b(i, j);
    }

    public final void b(String s, ch ch1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        List list = (List)xY.get(s);
        if (list != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        list.remove(ch1);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void cn()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        dw dw1;
        yb = false;
        yc = true;
        dw1 = mj.dM();
        if (dw1 == null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        if (he.dK())
        {
            break MISSING_BLOCK_LABEL_56;
        }
        he.xO.post(new Runnable(dw1) {

            final dw yf;
            final hl yg;

            public void run()
            {
                yf.cn();
            }

            
            {
                yg = hl.this;
                yf = dw1;
                super();
            }
        });
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        dw1.cn();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void d(int i, int j)
    {
        qr.d(i, j);
    }

    public v dS()
    {
        return qu;
    }

    public boolean dT()
    {
        boolean flag;
        synchronized (mL)
        {
            flag = yc;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void dU()
    {
        if (dT())
        {
            ye.cf();
        }
    }

    public final void onLoadResource(WebView webview, String s)
    {
        hf.W((new StringBuilder()).append("Loading resource: ").append(s).toString());
        Uri uri = Uri.parse(s);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost()))
        {
            f(uri);
        }
    }

    public final void onPageFinished(WebView webview, String s)
    {
        if (uc != null)
        {
            uc.a(mj);
            uc = null;
        }
    }

    public final void reset()
    {
        synchronized (mL)
        {
            xY.clear();
            xZ = null;
            ya = null;
            uc = null;
            qg = null;
            yb = false;
            yc = false;
            qt = null;
            yd = null;
            if (qr != null)
            {
                qr.k(true);
                qr = null;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Uri uri;
        hf.W((new StringBuilder()).append("AdWebView shouldOverrideUrlLoading: ").append(s).toString());
        uri = Uri.parse(s);
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) goto _L2; else goto _L1
_L1:
        f(uri);
_L5:
        return true;
_L2:
        if (yb && webview == mj && e(uri))
        {
            return super.shouldOverrideUrlLoading(webview, s);
        }
        if (mj.willNotDraw())
        {
            break MISSING_BLOCK_LABEL_236;
        }
        k k1 = mj.dP();
        if (k1 == null)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        Uri uri2;
        if (!k1.b(uri))
        {
            break MISSING_BLOCK_LABEL_147;
        }
        uri2 = k1.a(uri, mj.getContext());
        uri = uri2;
        Uri uri1 = uri;
_L3:
        l l1;
        if (qu == null || qu.az())
        {
            a(new dv("android.intent.action.VIEW", uri1.toString(), null, null, null, null, null));
        } else
        {
            qu.d(s);
        }
        continue; /* Loop/switch isn't completed */
        l1;
        hf.X((new StringBuilder()).append("Unable to append parameter to URL: ").append(s).toString());
        uri1 = uri;
          goto _L3
        hf.X((new StringBuilder()).append("AdWebView unable to handle URL: ").append(s).toString());
        if (true) goto _L5; else goto _L4
_L4:
    }
}
