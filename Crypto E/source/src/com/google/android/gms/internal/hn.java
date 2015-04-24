// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.content.res.Resources;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hk, ab, hg, gx, 
//            gy, ay, hf, me, 
//            hl, dw, k

public class hn extends WebView
    implements DownloadListener, hk
{
    public static class a extends MutableContextWrapper
    {

        private Context mO;
        private Activity yp;

        public Activity dL()
        {
            return yp;
        }

        public void setBaseContext(Context context)
        {
            mO = context.getApplicationContext();
            Activity activity;
            if (context instanceof Activity)
            {
                activity = (Activity)context;
            } else
            {
                activity = null;
            }
            yp = activity;
            super.setBaseContext(mO);
        }

        public void startActivity(Intent intent)
        {
            if (yp != null && !me.kx())
            {
                yp.startActivity(intent);
                return;
            } else
            {
                intent.setFlags(0x10000000);
                mO.startActivity(intent);
                return;
            }
        }

        public a(Context context)
        {
            super(context);
            setBaseContext(context);
        }
    }


    private final Object mL = new Object();
    private final hg mP;
    private final WindowManager mX = (WindowManager)getContext().getSystemService("window");
    private ay rj;
    private final k uD;
    private final hl yh;
    private final a yi;
    private dw yj;
    private boolean yk;
    private boolean yl;
    private boolean ym;
    private boolean yn;
    private int yo;

    protected hn(a a1, ay ay1, boolean flag, boolean flag1, k k1, hg hg1)
    {
        super(a1);
        yi = a1;
        rj = ay1;
        yk = flag;
        yo = -1;
        uD = k1;
        mP = hg1;
        setBackgroundColor(0);
        WebSettings websettings = getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setSavePassword(false);
        websettings.setSupportMultipleWindows(true);
        websettings.setJavaScriptCanOpenWindowsAutomatically(true);
        ab.aG().a(a1, hg1.xP, websettings);
        ab.aL().a(getContext(), websettings);
        setDownloadListener(this);
        yh = ab.aL().a(this, flag1);
        setWebViewClient(yh);
        setWebChromeClient(ab.aL().c(this));
        dV();
    }

    static hn b(Context context, ay ay1, boolean flag, boolean flag1, k k1, hg hg1)
    {
        return new hn(new a(context), ay1, flag, flag1, k1, hg1);
    }

    private void dV()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (!yk && !rj.oA) goto _L2; else goto _L1
_L1:
        if (android.os.Build.VERSION.SDK_INT >= 14) goto _L4; else goto _L3
_L3:
        hf.T("Disabling hardware acceleration on an overlay.");
        dW();
_L5:
        return;
_L4:
        hf.T("Enabling hardware acceleration on an overlay.");
        dX();
          goto _L5
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
label0:
        {
            if (android.os.Build.VERSION.SDK_INT >= 18)
            {
                break label0;
            }
            hf.T("Disabling hardware acceleration on an AdView.");
            dW();
        }
          goto _L5
        hf.T("Enabling hardware acceleration on an AdView.");
        dX();
          goto _L5
    }

    private void dW()
    {
        synchronized (mL)
        {
            if (!yl)
            {
                ab.aL().i(this);
            }
            yl = true;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void dX()
    {
        synchronized (mL)
        {
            if (yl)
            {
                ab.aL().h(this);
            }
            yl = false;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void Y(String s)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (isDestroyed())
        {
            break MISSING_BLOCK_LABEL_22;
        }
        loadUrl(s);
_L2:
        return;
        hf.X("The webview is destroyed. Ignoring action.");
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void Z(String s)
    {
        if (me.kw())
        {
            a(s, ((ValueCallback) (null)));
            return;
        } else
        {
            Y((new StringBuilder()).append("javascript:").append(s).toString());
            return;
        }
    }

    public void a(Context context, ay ay1)
    {
        synchronized (mL)
        {
            yi.setBaseContext(context);
            yj = null;
            rj = ay1;
            yk = false;
            yn = false;
            yo = -1;
            ab.aL().b(this);
            loadUrl("about:blank");
            yh.reset();
            setOnTouchListener(null);
            setOnClickListener(null);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ay ay1)
    {
        synchronized (mL)
        {
            rj = ay1;
            requestLayout();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(dw dw1)
    {
        synchronized (mL)
        {
            yj = dw1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(String s, ValueCallback valuecallback)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (isDestroyed()) goto _L2; else goto _L1
_L1:
        evaluateJavascript(s, valuecallback);
_L4:
        return;
_L2:
        hf.X("The webview is destroyed. Ignoring action.");
        if (valuecallback == null) goto _L4; else goto _L3
_L3:
        valuecallback.onReceiveValue(null);
          goto _L4
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, Map map)
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = ab.aG().v(map);
        }
        catch (JSONException jsonexception)
        {
            hf.X("Could not convert parameters to JSON.");
            return;
        }
        b(s, jsonobject);
    }

    public void a(String s, JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            jsonobject = new JSONObject();
        }
        String s1 = jsonobject.toString();
        new StringBuilder();
        Z((new StringBuilder()).append(s).append("(").append(s1).append(");").toString());
    }

    public ay aa()
    {
        ay ay1;
        synchronized (mL)
        {
            ay1 = rj;
        }
        return ay1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(String s, JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            jsonobject = new JSONObject();
        }
        String s1 = jsonobject.toString();
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AFMA_ReceiveMessage('");
        stringbuilder.append(s);
        stringbuilder.append("'");
        stringbuilder.append(",");
        stringbuilder.append(s1);
        stringbuilder.append(");");
        hf.W((new StringBuilder()).append("Dispatching AFMA event: ").append(stringbuilder.toString()).toString());
        Z(stringbuilder.toString());
    }

    public void ci()
    {
        if (!dN().dT())
        {
            return;
        }
        DisplayMetrics displaymetrics = new DisplayMetrics();
        Display display = mX.getDefaultDisplay();
        display.getMetrics(displaymetrics);
        float f = 160F / (float)displaymetrics.densityDpi;
        int i = Math.round(f * (float)displaymetrics.widthPixels);
        int j = Math.round(f * (float)displaymetrics.heightPixels);
        Activity activity = dL();
        int l;
        int i1;
        if (activity == null || activity.getWindow() == null)
        {
            l = j;
            i1 = i;
        } else
        {
            int ai[] = ab.aG().g(activity);
            i1 = Math.round(f * (float)ai[0]);
            l = Math.round(f * (float)ai[1]);
        }
        try
        {
            b("onScreenInfoChanged", (new JSONObject()).put("width", i).put("height", j).put("maxSizeWidth", i1).put("maxSizeHeight", l).put("density", displaymetrics.density).put("rotation", display.getRotation()));
            return;
        }
        catch (JSONException jsonexception)
        {
            hf.b("Error occured while obtaining screen information.", jsonexception);
        }
    }

    public void cq()
    {
        HashMap hashmap = new HashMap(1);
        hashmap.put("version", mP.xP);
        a("onshow", hashmap);
    }

    public void cr()
    {
        HashMap hashmap = new HashMap(1);
        hashmap.put("version", mP.xP);
        a("onhide", hashmap);
    }

    public Activity dL()
    {
        return yi.dL();
    }

    public dw dM()
    {
        dw dw1;
        synchronized (mL)
        {
            dw1 = yj;
        }
        return dw1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public hl dN()
    {
        return yh;
    }

    public boolean dO()
    {
        return yn;
    }

    public k dP()
    {
        return uD;
    }

    public hg dQ()
    {
        return mP;
    }

    public boolean dR()
    {
        boolean flag;
        synchronized (mL)
        {
            flag = yk;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void destroy()
    {
        synchronized (mL)
        {
            if (yj != null)
            {
                yj.close();
                yj.onDestroy();
            }
            yh.reset();
            ym = true;
            super.destroy();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void evaluateJavascript(String s, ValueCallback valuecallback)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (!isDestroyed())
        {
            break MISSING_BLOCK_LABEL_33;
        }
        hf.X("The webview is destroyed. Ignoring action.");
        if (valuecallback == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        valuecallback.onReceiveValue(null);
        obj;
        JVM INSTR monitorexit ;
        return;
        super.evaluateJavascript(s, valuecallback);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int getRequestedOrientation()
    {
        int i;
        synchronized (mL)
        {
            i = yo;
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public WebView getWebView()
    {
        return this;
    }

    public boolean isDestroyed()
    {
        boolean flag;
        synchronized (mL)
        {
            flag = ym;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onDownloadStart(String s, String s1, String s2, String s3, long l)
    {
        try
        {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(s), s3);
            getContext().startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            hf.T((new StringBuilder()).append("Couldn't find an Activity to view url/mimetype: ").append(s).append(" / ").append(s3).toString());
        }
    }

    protected void onMeasure(int i, int j)
    {
        int l;
label0:
        {
            l = 0x7fffffff;
            synchronized (mL)
            {
                if (!isInEditMode() && !yk)
                {
                    break label0;
                }
                super.onMeasure(i, j);
            }
            return;
        }
        if (!rj.oA)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        DisplayMetrics displaymetrics = new DisplayMetrics();
        mX.getDefaultDisplay().getMetrics(displaymetrics);
        setMeasuredDimension(displaymetrics.widthPixels, displaymetrics.heightPixels);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        int i1;
        int j1;
        int k1;
        int l1;
        i1 = android.view.View.MeasureSpec.getMode(i);
        j1 = android.view.View.MeasureSpec.getSize(i);
        k1 = android.view.View.MeasureSpec.getMode(j);
        l1 = android.view.View.MeasureSpec.getSize(j);
        break MISSING_BLOCK_LABEL_120;
_L4:
        if (rj.widthPixels <= i2 && rj.heightPixels <= l)
        {
            break MISSING_BLOCK_LABEL_294;
        }
        float f = yi.getResources().getDisplayMetrics().density;
        hf.X((new StringBuilder()).append("Not enough space to show ad. Needs ").append((int)((float)rj.widthPixels / f)).append("x").append((int)((float)rj.heightPixels / f)).append(" dp, but only has ").append((int)((float)j1 / f)).append("x").append((int)((float)l1 / f)).append(" dp.").toString());
        if (getVisibility() != 8)
        {
            setVisibility(4);
        }
        setMeasuredDimension(0, 0);
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        if (getVisibility() != 8)
        {
            setVisibility(0);
        }
        setMeasuredDimension(rj.widthPixels, rj.heightPixels);
        if (true) goto _L2; else goto _L1
_L1:
        int i2;
        if (i1 != 0x80000000 && i1 != 0x40000000)
        {
            i2 = l;
        } else
        {
            i2 = j1;
        }
        if (k1 == 0x80000000 || k1 == 0x40000000)
        {
            l = l1;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (uD != null)
        {
            uD.a(motionevent);
        }
        return super.onTouchEvent(motionevent);
    }

    public void r(boolean flag)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        if (yj == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        yj.r(flag);
_L2:
        return;
        yn = flag;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setContext(Context context)
    {
        yi.setBaseContext(context);
    }

    public void setRequestedOrientation(int i)
    {
        synchronized (mL)
        {
            yo = i;
            if (yj != null)
            {
                yj.setRequestedOrientation(yo);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void z(boolean flag)
    {
        synchronized (mL)
        {
            yk = flag;
            dV();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
