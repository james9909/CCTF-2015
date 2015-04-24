// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedList;

// Referenced classes of package com.google.android.gms.internal:
//            hf, br, bo, fr, 
//            ab, hg, gp, gx

public class fq
    implements Thread.UncaughtExceptionHandler
{

    private Context mContext;
    private hg uA;
    private Thread.UncaughtExceptionHandler uy;
    private Thread.UncaughtExceptionHandler uz;

    public fq(Context context, hg hg1, Thread.UncaughtExceptionHandler uncaughtexceptionhandler, Thread.UncaughtExceptionHandler uncaughtexceptionhandler1)
    {
        uy = uncaughtexceptionhandler;
        uz = uncaughtexceptionhandler1;
        mContext = context;
        uA = hg1;
    }

    public static fq a(Context context, Thread thread, hg hg1)
    {
        if (context == null || thread == null || hg1 == null)
        {
            return null;
        }
        if (!l(context))
        {
            return null;
        }
        Thread.UncaughtExceptionHandler uncaughtexceptionhandler = thread.getUncaughtExceptionHandler();
        fq fq1 = new fq(context, hg1, uncaughtexceptionhandler, Thread.getDefaultUncaughtExceptionHandler());
        if (uncaughtexceptionhandler == null || !(uncaughtexceptionhandler instanceof fq))
        {
            try
            {
                thread.setUncaughtExceptionHandler(fq1);
            }
            catch (SecurityException securityexception)
            {
                hf.c("Fail to set UncaughtExceptionHandler.", securityexception);
                return null;
            }
            return fq1;
        } else
        {
            return (fq)uncaughtexceptionhandler;
        }
    }

    private String cR()
    {
        String s = Build.MANUFACTURER;
        String s1 = Build.MODEL;
        if (s1.startsWith(s))
        {
            return s1;
        } else
        {
            return (new StringBuilder()).append(s).append(" ").append(s1).toString();
        }
    }

    private Throwable d(Throwable throwable)
    {
        if (((Boolean)br.pA.get()).booleanValue())
        {
            return throwable;
        }
        LinkedList linkedlist = new LinkedList();
        for (; throwable != null; throwable = throwable.getCause())
        {
            linkedlist.push(throwable);
        }

        Throwable throwable1 = null;
        while (!linkedlist.isEmpty()) 
        {
            Throwable throwable2 = (Throwable)linkedlist.pop();
            StackTraceElement astacktraceelement[] = throwable2.getStackTrace();
            ArrayList arraylist = new ArrayList();
            arraylist.add(new StackTraceElement(throwable2.getClass().getName(), "<filtered>", "<filtered>", 1));
            int i = astacktraceelement.length;
            int j = 0;
            boolean flag = false;
            while (j < i) 
            {
                StackTraceElement stacktraceelement = astacktraceelement[j];
                if (K(stacktraceelement.getClassName()))
                {
                    arraylist.add(stacktraceelement);
                    flag = true;
                } else
                if (L(stacktraceelement.getClassName()))
                {
                    arraylist.add(stacktraceelement);
                } else
                {
                    arraylist.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                }
                j++;
            }
            Throwable throwable3;
            if (flag)
            {
                if (throwable1 == null)
                {
                    throwable3 = new Throwable(throwable2.getMessage());
                } else
                {
                    throwable3 = new Throwable(throwable2.getMessage(), throwable1);
                }
                throwable3.setStackTrace((StackTraceElement[])arraylist.toArray(new StackTraceElement[0]));
            } else
            {
                throwable3 = throwable1;
            }
            throwable1 = throwable3;
        }
        return throwable1;
    }

    private static boolean l(Context context)
    {
        return ((Boolean)br.pz.get()).booleanValue();
    }

    protected boolean K(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return false;
        }
        if (s.startsWith("com.google.android.gms.ads"))
        {
            return true;
        }
        if (s.startsWith("com.google.ads"))
        {
            return true;
        }
        boolean flag;
        try
        {
            flag = Class.forName(s).isAnnotationPresent(com/google/android/gms/internal/fr);
        }
        catch (Exception exception)
        {
            hf.a((new StringBuilder()).append("Fail to check class type for class ").append(s).toString(), exception);
            return false;
        }
        return flag;
    }

    protected boolean L(String s)
    {
        while (TextUtils.isEmpty(s) || !s.startsWith("android.") && !s.startsWith("java.")) 
        {
            return false;
        }
        return true;
    }

    protected boolean a(Throwable throwable)
    {
        boolean flag = true;
        if (throwable == null)
        {
            return false;
        }
        boolean flag1 = false;
        boolean flag2 = false;
        for (; throwable != null; throwable = throwable.getCause())
        {
            StackTraceElement astacktraceelement[] = throwable.getStackTrace();
            int i = astacktraceelement.length;
            for (int j = 0; j < i; j++)
            {
                StackTraceElement stacktraceelement = astacktraceelement[j];
                if (K(stacktraceelement.getClassName()))
                {
                    flag2 = flag;
                }
                if (getClass().getName().equals(stacktraceelement.getClassName()))
                {
                    flag1 = flag;
                }
            }

        }

        if (!flag2 || flag1)
        {
            flag = false;
        }
        return flag;
    }

    public void b(Throwable throwable)
    {
        Throwable throwable1;
        if (l(mContext))
        {
            if ((throwable1 = d(throwable)) != null)
            {
                ArrayList arraylist = new ArrayList();
                arraylist.add(c(throwable1));
                ab.aG().a(mContext, uA.xP, arraylist, gp.dv());
                return;
            }
        }
    }

    protected String c(Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringwriter));
        return (new android.net.Uri.Builder()).scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", android.os.Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(android.os.Build.VERSION.SDK_INT)).appendQueryParameter("device", cR()).appendQueryParameter("js", uA.xP).appendQueryParameter("appid", mContext.getApplicationContext().getPackageName()).appendQueryParameter("stacktrace", stringwriter.toString()).appendQueryParameter("eids", TextUtils.join(",", br.bF())).toString();
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        if (!a(throwable)) goto _L2; else goto _L1
_L1:
        b(throwable);
        if (Looper.getMainLooper().getThread() == thread) goto _L2; else goto _L3
_L3:
        return;
_L2:
        if (uy != null)
        {
            uy.uncaughtException(thread, throwable);
            return;
        }
        if (uz != null)
        {
            uz.uncaughtException(thread, throwable);
            return;
        }
        if (true) goto _L3; else goto _L4
_L4:
    }
}
