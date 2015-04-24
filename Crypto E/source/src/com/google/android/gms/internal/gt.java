// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import java.math.BigInteger;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.internal:
//            ab, gx

public final class gt
{

    private static final Object mx = new Object();
    private static String xq;

    public static String a(Context context, String s, String s1)
    {
        String s2;
        synchronized (mx)
        {
            if (xq == null && !TextUtils.isEmpty(s))
            {
                b(context, s, s1);
            }
            s2 = xq;
        }
        return s2;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void b(Context context, String s, String s1)
    {
        ClassLoader classloader;
        Class class1;
        BigInteger biginteger;
        String as[];
        BigInteger biginteger1;
        try
        {
            classloader = context.createPackageContext(s1, 3).getClassLoader();
            class1 = Class.forName("com.google.ads.mediation.MediationAdapter", false, classloader);
        }
        catch (Throwable throwable)
        {
            xq = "err";
            return;
        }
        biginteger = new BigInteger(new byte[1]);
        as = s.split(",");
        biginteger1 = biginteger;
        for (int i = 0; i < as.length; i++)
        {
            if (ab.aG().a(classloader, class1, as[i]))
            {
                biginteger1 = biginteger1.setBit(i);
            }
        }

        xq = String.format(Locale.US, "%X", new Object[] {
            biginteger1
        });
    }

    public static String dz()
    {
        String s;
        synchronized (mx)
        {
            s = xq;
        }
        return s;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
