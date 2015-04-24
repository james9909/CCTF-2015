// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            gu, fz, fx, ay, 
//            gp, cw, an, hf, 
//            k, g, fu, he

public class ft extends gu
    implements fu.a
{
    static final class a extends Exception
    {

        private final int uq;

        public int getErrorCode()
        {
            return uq;
        }

        public a(String s, int i)
        {
            super(s);
            uq = i;
        }
    }


    private final Context mContext;
    private final Object mL = new Object();
    private cw qJ;
    private final fs.a uB;
    private final fx.a uC;
    private final k uD;
    private gu uE;
    private final Object ul = new Object();
    private fz un;

    public ft(Context context, fx.a a1, k k1, fs.a a2)
    {
        uB = a2;
        mContext = context;
        uC = a1;
        uD = k1;
    }

    private ay a(fx fx1)
    {
        if (un.vc == null)
        {
            throw new a("The ad response must specify one of the supported ad sizes.", 0);
        }
        String as[] = un.vc.split("x");
        if (as.length != 2)
        {
            throw new a((new StringBuilder()).append("Could not parse the ad size from the ad response: ").append(un.vc).toString(), 0);
        }
        int i;
        int j;
        ay aay[];
        int l;
        try
        {
            i = Integer.parseInt(as[0]);
            j = Integer.parseInt(as[1]);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new a((new StringBuilder()).append("Could not parse the ad size from the ad response: ").append(un.vc).toString(), 0);
        }
        aay = fx1.lL.oB;
        l = aay.length;
        ay ay1;
        int j1;
        int k1;
        for (int i1 = 0; i1 < l; i1++)
        {
            ay1 = aay[i1];
            float f = mContext.getResources().getDisplayMetrics().density;
            if (ay1.width == -1)
            {
                j1 = (int)((float)ay1.widthPixels / f);
            } else
            {
                j1 = ay1.width;
            }
            if (ay1.height == -2)
            {
                k1 = (int)((float)ay1.heightPixels / f);
            } else
            {
                k1 = ay1.height;
            }
            if (i == j1 && j == k1)
            {
                return new ay(ay1, fx1.lL.oB);
            }
        }

        throw new a((new StringBuilder()).append("The ad size from the ad response was not one of the requested sizes: ").append(un.vc).toString(), 0);
    }

    static Object a(ft ft1)
    {
        return ft1.mL;
    }

    static fs.a b(ft ft1)
    {
        return ft1.uB;
    }

    private boolean c(long l)
    {
        long l1 = 60000L - (SystemClock.elapsedRealtime() - l);
        if (l1 <= 0L)
        {
            return false;
        }
        try
        {
            mL.wait(l1);
        }
        catch (InterruptedException interruptedexception)
        {
            throw new a("Ad request cancelled.", -1);
        }
        return true;
    }

    private void cS()
    {
        if (un.errorCode != -3)
        {
            if (TextUtils.isEmpty(un.uX))
            {
                throw new a("No fill from ad server.", 3);
            }
            gp.a(mContext, un.uS);
            if (un.uZ)
            {
                try
                {
                    qJ = new cw(un.uX);
                    return;
                }
                catch (JSONException jsonexception)
                {
                    throw new a((new StringBuilder()).append("Could not parse mediation config: ").append(un.uX).toString(), 0);
                }
            }
        }
    }

    private void g(long l)
    {
        do
        {
            if (!c(l))
            {
                throw new a("Timed out waiting for ad response.", 2);
            }
        } while (un == null);
        synchronized (ul)
        {
            uE = null;
        }
        if (un.errorCode != -2 && un.errorCode != -3)
        {
            throw new a((new StringBuilder()).append("There was a problem getting an ad response. ErrorCode: ").append(un.errorCode).toString(), un.errorCode);
        } else
        {
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void u(boolean flag)
    {
        gp.dl().y(flag);
        an an1 = gp.dl().m(mContext);
        if (an1 != null && !an1.isAlive())
        {
            hf.T("start fetching content...");
            an1.bi();
        }
    }

    public void b(fz fz1)
    {
        synchronized (mL)
        {
            hf.T("Received ad response.");
            un = fz1;
            mL.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void cG()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        fx fx1;
        hf.T("AdLoaderBackgroundTask started.");
        String s = uD.C().a(mContext);
        fx1 = new fx(uC, s);
        int i;
        long l;
        i = -2;
        l = -1L;
        long l2;
        gu gu1;
        l2 = SystemClock.elapsedRealtime();
        gu1 = fu.a(mContext, fx1, this);
        Object obj1 = ul;
        obj1;
        JVM INSTR monitorenter ;
        uE = gu1;
        if (uE == null)
        {
            throw new a("Could not start the ad request service.", 0);
        }
          goto _L1
        Exception exception2;
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
        a a1;
        a1;
        ay ay1 = null;
_L12:
        i = a1.getErrorCode();
        if (i != 3 && i != -1) goto _L3; else goto _L2
_L2:
        hf.V(a1.getMessage());
_L9:
        if (un != null) goto _L5; else goto _L4
_L4:
        un = new fz(i);
_L10:
        he.xO.post(new Runnable() {

            final ft uF;

            public void run()
            {
                uF.onStop();
            }

            
            {
                uF = ft.this;
                super();
            }
        });
        long l1 = l;
_L8:
        boolean flag = TextUtils.isEmpty(un.vh);
        if (flag) goto _L7; else goto _L6
_L6:
        JSONObject jsonobject = new JSONObject(un.vh);
_L11:
        gn.a a2 = new gn.a(fx1, un, qJ, ay1, i, l1, un.vd, jsonobject);
        he.xO.post(new Runnable(a2) {

            final ft uF;
            final gn.a uG;

            public void run()
            {
                synchronized (ft.a(uF))
                {
                    ft.b(uF).a(uG);
                }
                return;
                exception3;
                obj2;
                JVM INSTR monitorexit ;
                throw exception3;
            }

            
            {
                uF = ft.this;
                uG = a1;
                super();
            }
        });
        obj;
        JVM INSTR monitorexit ;
        return;
_L1:
        obj1;
        JVM INSTR monitorexit ;
        ay ay2;
        g(l2);
        l = SystemClock.elapsedRealtime();
        cS();
        if (fx1.lL.oB == null)
        {
            break MISSING_BLOCK_LABEL_388;
        }
        ay2 = a(fx1);
        ay1 = ay2;
_L13:
        u(un.vk);
        l1 = l;
          goto _L8
_L3:
        hf.X(a1.getMessage());
          goto _L9
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L5:
        un = new fz(i, un.rb);
          goto _L10
        Exception exception1;
        exception1;
        hf.b("Error parsing the JSON for Active View.", exception1);
_L7:
        jsonobject = null;
          goto _L11
        a1;
          goto _L12
        ay1 = null;
          goto _L13
    }

    public void onStop()
    {
        synchronized (ul)
        {
            if (uE != null)
            {
                uE.cancel();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
