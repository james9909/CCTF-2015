// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ad, ay, gn, hi, 
//            hf, ah, cg, ag, 
//            ac, ch, hg, hk

public final class af
    implements android.view.ViewTreeObserver.OnGlobalLayoutListener, android.view.ViewTreeObserver.OnScrollChangedListener
{

    private static final long nb;
    private final Object mL = new Object();
    private final Context mO;
    private final WeakReference mR;
    private WeakReference mS;
    private final WeakReference mT;
    private final ad mU;
    private final hi mV;
    private boolean mW;
    private final WindowManager mX;
    private final PowerManager mY;
    private final KeyguardManager mZ;
    private boolean ms;
    private ag na;
    private boolean nc;
    private long nd;
    private boolean ne;
    private boolean nf;
    private BroadcastReceiver ng;
    private final HashSet nh = new HashSet();
    private final ch ni = new ch() {

        final af nm;

        public void a(hk hk1, Map map)
        {
            if (!nm.a(map))
            {
                return;
            } else
            {
                nm.a(hk1.getWebView(), map);
                return;
            }
        }

            
            {
                nm = af.this;
                super();
            }
    };
    private final ch nj = new ch() {

        final af nm;

        public void a(hk hk, Map map)
        {
            if (!nm.a(map))
            {
                return;
            } else
            {
                hf.T((new StringBuilder()).append("Received request to untrack: ").append(af.b(nm).aP()).toString());
                nm.destroy();
                return;
            }
        }

            
            {
                nm = af.this;
                super();
            }
    };
    private final ch nk = new ch() {

        final af nm;

        public void a(hk hk, Map map)
        {
            while (!nm.a(map) || !map.containsKey("isVisible")) 
            {
                return;
            }
            boolean flag;
            Boolean boolean1;
            if ("1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible")))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            boolean1 = Boolean.valueOf(flag);
            nm.f(boolean1.booleanValue());
        }

            
            {
                nm = af.this;
                super();
            }
    };

    public af(ay ay1, gn gn1, hg hg, View view, hi hi1)
    {
        ms = false;
        nc = false;
        nd = 0x8000000000000000L;
        mR = new WeakReference(gn1);
        mT = new WeakReference(view);
        mS = new WeakReference(null);
        ne = true;
        mU = new ad(UUID.randomUUID().toString(), hg, ay1.oz, gn1.wC);
        mV = hi1;
        mX = (WindowManager)view.getContext().getSystemService("window");
        mY = (PowerManager)view.getContext().getApplicationContext().getSystemService("power");
        mZ = (KeyguardManager)view.getContext().getSystemService("keyguard");
        mO = view.getContext().getApplicationContext();
        try
        {
            JSONObject jsonobject = d(view);
            mV.a(new hi.b(jsonobject) {

                final JSONObject nl;
                final af nm;

                public void a(Object obj)
                {
                    b((ah)obj);
                }

                public void b(ah ah1)
                {
                    nm.a(nl);
                }

            
            {
                nm = af.this;
                nl = jsonobject;
                super();
            }
            }, new hi.a() {

                final af nm;

                public void run()
                {
                }

            
            {
                nm = af.this;
                super();
            }
            });
        }
        catch (Throwable throwable) { }
        mV.a(new hi.b() {

            final af nm;

            public void a(Object obj)
            {
                b((ah)obj);
            }

            public void b(ah ah1)
            {
                af.b(nm, true);
                nm.a(ah1);
                nm.aQ();
                nm.g(false);
            }

            
            {
                nm = af.this;
                super();
            }
        }, new hi.a() {

            final af nm;

            public void run()
            {
                nm.destroy();
            }

            
            {
                nm = af.this;
                super();
            }
        });
        hf.T((new StringBuilder()).append("Tracking ad unit: ").append(mU.aP()).toString());
    }

    static ad b(af af1)
    {
        return af1.mU;
    }

    static boolean b(af af1, boolean flag)
    {
        af1.mW = flag;
        return flag;
    }

    protected int a(int i, DisplayMetrics displaymetrics)
    {
        float f1 = displaymetrics.density;
        return (int)((float)i / f1);
    }

    protected void a(View view, Map map)
    {
        g(false);
    }

    public void a(ac ac1)
    {
        nh.add(ac1);
    }

    public void a(ag ag1)
    {
        synchronized (mL)
        {
            na = ag1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(ah ah1)
    {
        ah1.a("/updateActiveView", ni);
        ah1.a("/untrackActiveViewUnit", nj);
        ah1.a("/visibilityChanged", nk);
        ah1.a("/viewabilityChanged", cg.qh);
    }

    protected void a(JSONObject jsonobject)
    {
        try
        {
            JSONArray jsonarray = new JSONArray();
            JSONObject jsonobject1 = new JSONObject();
            jsonarray.put(jsonobject);
            jsonobject1.put("units", jsonarray);
            mV.a(new hi.b(jsonobject1) {

                final af nm;
                final JSONObject nn;

                public void a(Object obj)
                {
                    b((ah)obj);
                }

                public void b(ah ah1)
                {
                    ah1.a("AFMA_updateActiveView", nn);
                }

            
            {
                nm = af.this;
                nn = jsonobject;
                super();
            }
            }, new hi.a() {

                final af nm;

                public void run()
                {
                }

            
            {
                nm = af.this;
                super();
            }
            });
            return;
        }
        catch (Throwable throwable)
        {
            hf.b("Skipping active view message.", throwable);
        }
    }

    protected boolean a(Map map)
    {
        if (map == null)
        {
            return false;
        }
        String s = (String)map.get("hashCode");
        boolean flag;
        if (!TextUtils.isEmpty(s) && s.equals(mU.aP()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    protected void aQ()
    {
label0:
        {
            synchronized (mL)
            {
                if (ng == null)
                {
                    break label0;
                }
            }
            return;
        }
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.SCREEN_ON");
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        ng = new BroadcastReceiver() {

            final af nm;

            public void onReceive(Context context, Intent intent)
            {
                nm.g(false);
            }

            
            {
                nm = af.this;
                super();
            }
        };
        mO.registerReceiver(ng, intentfilter);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void aR()
    {
        synchronized (mL)
        {
            if (ng != null)
            {
                mO.unregisterReceiver(ng);
                ng = null;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void aS()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (!ne) goto _L2; else goto _L1
_L1:
        nf = true;
        a(aY());
_L3:
        hf.T((new StringBuilder()).append("Untracking ad unit: ").append(mU.aP()).toString());
_L2:
        return;
        JSONException jsonexception;
        jsonexception;
        hf.b("JSON Failure while processing active view data.", jsonexception);
          goto _L3
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void aT()
    {
        if (na != null)
        {
            na.a(this);
        }
    }

    public boolean aU()
    {
        boolean flag;
        synchronized (mL)
        {
            flag = ne;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void aV()
    {
        View view = (View)mT.get();
        if (view != null)
        {
            ViewTreeObserver viewtreeobserver = (ViewTreeObserver)mS.get();
            ViewTreeObserver viewtreeobserver1 = view.getViewTreeObserver();
            if (viewtreeobserver1 != viewtreeobserver)
            {
                mS = new WeakReference(viewtreeobserver1);
                viewtreeobserver1.addOnScrollChangedListener(this);
                viewtreeobserver1.addOnGlobalLayoutListener(this);
                return;
            }
        }
    }

    protected void aW()
    {
        ViewTreeObserver viewtreeobserver = (ViewTreeObserver)mS.get();
        if (viewtreeobserver == null || !viewtreeobserver.isAlive())
        {
            return;
        } else
        {
            viewtreeobserver.removeOnScrollChangedListener(this);
            viewtreeobserver.removeGlobalOnLayoutListener(this);
            return;
        }
    }

    protected JSONObject aX()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("afmaVersion", mU.aN()).put("activeViewJSON", mU.aO()).put("timestamp", TimeUnit.NANOSECONDS.toMillis(System.nanoTime())).put("adFormat", mU.aM()).put("hashCode", mU.aP());
        return jsonobject;
    }

    protected JSONObject aY()
    {
        JSONObject jsonobject = aX();
        jsonobject.put("doneReasonCode", "u");
        return jsonobject;
    }

    protected JSONObject d(View view)
    {
        int ai[] = new int[2];
        int ai1[] = new int[2];
        view.getLocationOnScreen(ai);
        view.getLocationInWindow(ai1);
        JSONObject jsonobject = aX();
        DisplayMetrics displaymetrics = view.getContext().getResources().getDisplayMetrics();
        Rect rect = new Rect();
        rect.left = ai[0];
        rect.top = ai[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect1 = new Rect();
        rect1.right = mX.getDefaultDisplay().getWidth();
        rect1.bottom = mX.getDefaultDisplay().getHeight();
        Rect rect2 = new Rect();
        boolean flag = view.getGlobalVisibleRect(rect2, null);
        Rect rect3 = new Rect();
        boolean flag1 = view.getLocalVisibleRect(rect3);
        jsonobject.put("viewBox", (new JSONObject()).put("top", a(rect1.top, displaymetrics)).put("bottom", a(rect1.bottom, displaymetrics)).put("left", a(rect1.left, displaymetrics)).put("right", a(rect1.right, displaymetrics))).put("adBox", (new JSONObject()).put("top", a(rect.top, displaymetrics)).put("bottom", a(rect.bottom, displaymetrics)).put("left", a(rect.left, displaymetrics)).put("right", a(rect.right, displaymetrics))).put("globalVisibleBox", (new JSONObject()).put("top", a(rect2.top, displaymetrics)).put("bottom", a(rect2.bottom, displaymetrics)).put("left", a(rect2.left, displaymetrics)).put("right", a(rect2.right, displaymetrics))).put("globalVisibleBoxVisible", flag).put("localVisibleBox", (new JSONObject()).put("top", a(rect3.top, displaymetrics)).put("bottom", a(rect3.bottom, displaymetrics)).put("left", a(rect3.left, displaymetrics)).put("right", a(rect3.right, displaymetrics))).put("localVisibleBoxVisible", flag1).put("screenDensity", displaymetrics.density).put("isVisible", e(view)).put("isStopped", nc).put("isPaused", ms);
        return jsonobject;
    }

    protected void destroy()
    {
        synchronized (mL)
        {
            aW();
            aR();
            ne = false;
            aT();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected boolean e(View view)
    {
        return view.getVisibility() == 0 && view.isShown() && mY.isScreenOn() && !mZ.inKeyguardRestrictedInputMode();
    }

    protected void f(boolean flag)
    {
        for (Iterator iterator = nh.iterator(); iterator.hasNext(); ((ac)iterator.next()).a(this, flag)) { }
    }

    protected void g(boolean flag)
    {
label0:
        {
            synchronized (mL)
            {
                if (mW && ne)
                {
                    break label0;
                }
            }
            return;
        }
        long l = System.nanoTime();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        if (nd + nb <= l)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        gn gn1;
        View view;
        nd = l;
        gn1 = (gn)mR.get();
        view = (View)mT.get();
        boolean flag1;
        JSONException jsonexception;
        if (view != null && gn1 != null)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        aS();
        obj;
        JVM INSTR monitorexit ;
        return;
        a(d(view));
_L1:
        aV();
        aT();
        obj;
        JVM INSTR monitorexit ;
        return;
        jsonexception;
        hf.a("Active view update failed.", jsonexception);
          goto _L1
    }

    public void onGlobalLayout()
    {
        g(false);
    }

    public void onScrollChanged()
    {
        g(true);
    }

    public void pause()
    {
        synchronized (mL)
        {
            ms = true;
            g(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void resume()
    {
        synchronized (mL)
        {
            ms = false;
            g(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void stop()
    {
        synchronized (mL)
        {
            nc = true;
            g(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static 
    {
        nb = TimeUnit.MILLISECONDS.toNanos(200L);
    }
}
