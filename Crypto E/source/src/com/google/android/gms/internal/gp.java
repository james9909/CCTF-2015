// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ab, gx, gq, br, 
//            gs, go, gr, gv, 
//            ae, cr, bo, hg, 
//            fq, me, am, al, 
//            an

public class gp
{

    private static final gp wW;
    public static final String wX;
    private ae lw;
    private Context mContext;
    private final Object mL = new Object();
    private hg mP;
    private am nO;
    private al nP;
    private final fq nQ = null;
    private boolean pw;
    private boolean vX;
    private boolean vY;
    public final String wY = ab.aG().dD();
    private final gq wZ;
    private BigInteger xa;
    private final HashSet xb = new HashSet();
    private final HashMap xc = new HashMap();
    private boolean xd;
    private an xe;
    private final LinkedList xf = new LinkedList();
    private String xg;

    private gp()
    {
        xa = BigInteger.ONE;
        xd = false;
        vX = true;
        pw = false;
        vY = true;
        nO = null;
        xe = null;
        nP = null;
        wZ = new gq(wY);
    }

    static Context a(gp gp1)
    {
        return gp1.mContext;
    }

    public static Bundle a(Context context, gr gr1, String s)
    {
        return wW.b(context, gr1, s);
    }

    public static void a(Context context, boolean flag)
    {
        wW.b(context, flag);
    }

    static hg b(gp gp1)
    {
        return gp1.mP;
    }

    public static void b(Context context, hg hg1)
    {
        wW.c(context, hg1);
    }

    public static void b(HashSet hashset)
    {
        wW.c(hashset);
    }

    public static String c(int i, String s)
    {
        return wW.d(i, s);
    }

    public static gp dl()
    {
        return wW;
    }

    public static String dn()
    {
        return wW._mthdo();
    }

    public static gq dp()
    {
        return wW.dq();
    }

    public static boolean dr()
    {
        return wW.ds();
    }

    public static boolean dt()
    {
        return wW.du();
    }

    public static String dv()
    {
        return wW.dw();
    }

    public static void e(Throwable throwable)
    {
        wW.f(throwable);
    }

    public void a(go go1)
    {
        synchronized (mL)
        {
            xb.add(go1);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, gs gs1)
    {
        synchronized (mL)
        {
            xc.put(s, gs1);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Thread thread)
    {
        br.a(new Runnable(thread) {

            final Thread xh;
            final gp xi;

            public void run()
            {
                fq.a(gp.a(xi), xh, gp.b(xi));
            }

            
            {
                xi = gp.this;
                xh = thread;
                super();
            }
        });
    }

    public Bundle b(Context context, gr gr1, String s)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        Bundle bundle;
        Bundle bundle1;
        bundle = new Bundle();
        bundle.putBundle("app", wZ.b(context, s));
        bundle1 = new Bundle();
        String s1;
        for (Iterator iterator = xc.keySet().iterator(); iterator.hasNext(); bundle1.putBundle(s1, ((gs)xc.get(s1)).toBundle()))
        {
            s1 = (String)iterator.next();
        }

        break MISSING_BLOCK_LABEL_112;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        ArrayList arraylist;
        bundle.putBundle("slots", bundle1);
        arraylist = new ArrayList();
        for (Iterator iterator1 = xb.iterator(); iterator1.hasNext(); arraylist.add(((go)iterator1.next()).toBundle())) { }
        bundle.putParcelableArrayList("ads", arraylist);
        gr1.a(xb);
        xb.clear();
        obj;
        JVM INSTR monitorexit ;
        return bundle;
    }

    public void b(Context context, boolean flag)
    {
        synchronized (mL)
        {
            if (flag != vX)
            {
                vX = flag;
                gv.a(context, flag);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c(Context context, hg hg1)
    {
        synchronized (mL)
        {
            if (!pw)
            {
                mContext = context.getApplicationContext();
                mP = hg1;
                vX = gv.p(context);
                a(Thread.currentThread());
                lw = new ae(context.getApplicationContext(), mP, new cr(context.getApplicationContext(), mP, (String)br.py.get()));
                xg = ab.aG().c(context, hg1.xP);
                pw = true;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c(HashSet hashset)
    {
        synchronized (mL)
        {
            xb.addAll(hashset);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String d(int i, String s)
    {
        Resources resources;
        if (mP.xS)
        {
            resources = mContext.getResources();
        } else
        {
            resources = GooglePlayServicesUtil.getRemoteResource(mContext);
        }
        if (resources == null)
        {
            return s;
        } else
        {
            return resources.getString(i);
        }
    }

    public boolean dm()
    {
        boolean flag;
        synchronized (mL)
        {
            flag = vY;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String _mthdo()
    {
        String s;
        synchronized (mL)
        {
            s = xa.toString();
            xa = xa.add(BigInteger.ONE);
        }
        return s;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public gq dq()
    {
        gq gq1;
        synchronized (mL)
        {
            gq1 = wZ;
        }
        return gq1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean ds()
    {
        boolean flag;
        synchronized (mL)
        {
            flag = xd;
            xd = true;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean du()
    {
        boolean flag;
        synchronized (mL)
        {
            flag = vX;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String dw()
    {
        String s;
        synchronized (mL)
        {
            s = xg;
        }
        return s;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ae dx()
    {
        return lw;
    }

    public void f(Throwable throwable)
    {
        if (pw)
        {
            (new fq(mContext, mP, null, null)).b(throwable);
        }
    }

    public an m(Context context)
    {
label0:
        {
            if (!((Boolean)br.pG.get()).booleanValue() || !me.kt() || dm())
            {
                return null;
            }
            synchronized (mL)
            {
                if (nO != null)
                {
                    break MISSING_BLOCK_LABEL_77;
                }
                if (context instanceof Activity)
                {
                    break label0;
                }
            }
            return null;
        }
        nO = new am((Application)context.getApplicationContext(), (Activity)context);
        an an1;
        if (nP == null)
        {
            nP = new al();
        }
        if (xe == null)
        {
            xe = new an(nO, nP, new fq(mContext, mP, null, null));
        }
        xe.bi();
        an1 = xe;
        obj;
        JVM INSTR monitorexit ;
        return an1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void y(boolean flag)
    {
        synchronized (mL)
        {
            vY = flag;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static 
    {
        wW = new gp();
        wX = wW.wY;
    }
}
