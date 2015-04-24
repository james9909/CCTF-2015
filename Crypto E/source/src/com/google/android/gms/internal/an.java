// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            br, bo, me, ak, 
//            am, hk, al, hf, 
//            fq

public class an extends Thread
{
    class a
    {

        final an nV;
        final int oa;
        final int ob;

        a(int i, int j)
        {
            nV = an.this;
            super();
            oa = i;
            ob = j;
        }
    }


    private final Object mL = new Object();
    private boolean mStarted;
    private final int nB;
    private boolean nM;
    private boolean nN;
    private final am nO;
    private final al nP;
    private final fq nQ;
    private final int nR;
    private final int nS;
    private final int nT;
    private final int nz;

    public an(am am1, al al1, fq fq1)
    {
        mStarted = false;
        nM = false;
        nN = false;
        nO = am1;
        nP = al1;
        nQ = fq1;
        nz = ((Integer)br.pH.get()).intValue();
        nS = ((Integer)br.pI.get()).intValue();
        nB = ((Integer)br.pJ.get()).intValue();
        nT = ((Integer)br.pK.get()).intValue();
        nR = ((Integer)br.pL.get()).intValue();
        setName("ContentFetchTask");
    }

    private void a(Activity activity)
    {
        if (activity != null)
        {
            Window window = activity.getWindow();
            View view = null;
            if (window != null)
            {
                View view1 = activity.getWindow().getDecorView();
                view = null;
                if (view1 != null)
                {
                    view = activity.getWindow().getDecorView().findViewById(0x1020002);
                }
            }
            if (view != null)
            {
                f(view);
                return;
            }
        }
    }

    private boolean a(WebView webview, ak ak1)
    {
        if (!me.kw())
        {
            return false;
        } else
        {
            ak1.be();
            webview.post(new Runnable(ak1, webview) {

                final an nV;
                ValueCallback nW;
                final ak nX;
                final WebView nY;

                public void run()
                {
                    if (nY.getSettings().getJavaScriptEnabled())
                    {
                        nY.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", nW);
                    }
                }

            
            {
                nV = an.this;
                nX = ak1;
                nY = webview;
                super();
                nW = new _cls1(this);
            }
            });
            return true;
        }
    }

    private boolean bj()
    {
        Context context;
        ActivityManager activitymanager;
        KeyguardManager keyguardmanager;
        PowerManager powermanager;
        List list;
        Iterator iterator;
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo;
        boolean flag;
        try
        {
            context = nO.getContext();
        }
        catch (Throwable throwable)
        {
            return false;
        }
        if (context == null)
        {
            return false;
        }
        activitymanager = (ActivityManager)context.getSystemService("activity");
        keyguardmanager = (KeyguardManager)context.getSystemService("keyguard");
        powermanager = (PowerManager)context.getSystemService("power");
        if (activitymanager == null || keyguardmanager == null || powermanager == null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        list = activitymanager.getRunningAppProcesses();
        if (list == null)
        {
            return false;
        }
        iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_150;
            }
            runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
        } while (Process.myPid() != runningappprocessinfo.pid);
        if (runningappprocessinfo.importance != 100 || keyguardmanager.inKeyguardRestrictedInputMode())
        {
            break MISSING_BLOCK_LABEL_150;
        }
        flag = powermanager.isScreenOn();
        if (flag)
        {
            return true;
        }
        return false;
        return false;
    }

    a a(View view, ak ak1)
    {
        int i = 0;
        if (view == null)
        {
            return new a(0, 0);
        }
        if ((view instanceof TextView) && !(view instanceof EditText))
        {
            ak1.i(((TextView)view).getText().toString());
            return new a(1, 0);
        }
        if ((view instanceof WebView) && !(view instanceof hk))
        {
            ak1.be();
            if (a((WebView)view, ak1))
            {
                return new a(0, 1);
            } else
            {
                return new a(0, 0);
            }
        }
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            int j = 0;
            int k = 0;
            for (; i < viewgroup.getChildCount(); i++)
            {
                a a1 = a(viewgroup.getChildAt(i), ak1);
                k += a1.oa;
                j += a1.ob;
            }

            return new a(k, j);
        } else
        {
            return new a(0, 0);
        }
    }

    void a(ak ak1, WebView webview, String s)
    {
        ak1.bd();
        String s1;
        if (!TextUtils.isEmpty(s))
        {
            s1 = (new JSONObject(s)).optString("text");
            if (TextUtils.isEmpty(webview.getTitle()))
            {
                break MISSING_BLOCK_LABEL_86;
            }
            ak1.h((new StringBuilder()).append(webview.getTitle()).append("\n").append(s1).toString());
        }
_L2:
        if (ak1.ba())
        {
            nP.b(ak1);
            return;
        }
        break MISSING_BLOCK_LABEL_123;
        ak1.h(s1);
        if (true) goto _L2; else goto _L1
_L1:
        JSONException jsonexception;
        jsonexception;
        hf.T("Json string may be malformed.");
        return;
        Throwable throwable;
        throwable;
        hf.a("Failed to get webview content.", throwable);
        nQ.b(throwable);
    }

    public void bi()
    {
label0:
        {
            synchronized (mL)
            {
                if (!mStarted)
                {
                    break label0;
                }
                hf.T("Content hash thread already started, quiting...");
            }
            return;
        }
        mStarted = true;
        obj;
        JVM INSTR monitorexit ;
        start();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ak bk()
    {
        return nP.bh();
    }

    public void bl()
    {
        synchronized (mL)
        {
            nM = true;
            hf.T((new StringBuilder()).append("ContentFetchThread: paused, mPause = ").append(nM).toString());
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean bm()
    {
        return nM;
    }

    boolean f(View view)
    {
        if (view == null)
        {
            return false;
        } else
        {
            view.post(new Runnable(view) {

                final View nU;
                final an nV;

                public void run()
                {
                    nV.g(nU);
                }

            
            {
                nV = an.this;
                nU = view;
                super();
            }
            });
            return true;
        }
    }

    void g(View view)
    {
        ak ak1;
        a a1;
        ak1 = new ak(nz, nS, nB, nT);
        a1 = a(view, ak1);
        ak1.bf();
        if (a1.oa == 0 && a1.ob == 0)
        {
            return;
        }
        try
        {
            if ((a1.ob != 0 || ak1.bg() != 0) && (a1.ob != 0 || !nP.a(ak1)))
            {
                nP.c(ak1);
                return;
            }
        }
        catch (Exception exception)
        {
            hf.b("Exception in fetchContentOnUIThread", exception);
            nQ.b(exception);
        }
        return;
    }

    public void run()
    {
_L11:
        if (nN)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!bj()) goto _L2; else goto _L1
_L1:
        Activity activity = nO.getActivity();
        if (activity != null) goto _L4; else goto _L3
_L3:
        try
        {
            hf.T("ContentFetchThread: no activity");
            continue; /* Loop/switch isn't completed */
        }
        catch (Throwable throwable)
        {
            hf.b("Error in ContentFetchTask", throwable);
            nQ.b(throwable);
        }
_L8:
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
_L7:
        boolean flag = nM;
        if (!flag) goto _L6; else goto _L5
_L5:
        Exception exception;
        try
        {
            hf.T("ContentFetchTask: waiting");
            mL.wait();
        }
        catch (InterruptedException interruptedexception) { }
        finally { }
        if (true) goto _L7; else goto _L6
_L4:
        a(activity);
_L9:
        Thread.sleep(1000 * nR);
          goto _L8
_L2:
        hf.T("ContentFetchTask: sleeping");
        bl();
          goto _L9
_L6:
        obj;
        JVM INSTR monitorexit ;
        if (true) goto _L11; else goto _L10
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L10:
    }

    public void wakeup()
    {
        synchronized (mL)
        {
            nM = false;
            mL.notifyAll();
            hf.T("ContentFetchThread: wakeup");
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    // Unreferenced inner class com/google/android/gms/internal/an$2$1

/* anonymous class */
    class _cls1
        implements ValueCallback
    {

        final _cls2 nZ;

        public void k(String s)
        {
            nZ.nV.a(nZ.nX, nZ.nY, s);
        }

        public void onReceiveValue(Object obj)
        {
            k((String)obj);
        }

            
            {
                nZ = _pcls2;
                super();
            }
    }

}
