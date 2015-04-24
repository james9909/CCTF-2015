// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

// Referenced classes of package com.google.android.gms.internal:
//            bn, ab, bp, bq

public abstract class bo
    implements bn
{

    private final String pp;
    private final Object pq;

    private bo(String s, Object obj)
    {
        pp = s;
        pq = obj;
        ab.aI().a(this);
    }


    public static bo a(String s, int i)
    {
        return new bo(s, Integer.valueOf(i)) {

            public Object a(Bundle bundle)
            {
                return c(bundle);
            }

            public Integer c(Bundle bundle)
            {
                return Integer.valueOf(bundle.getInt(getKey(), ((Integer)bE()).intValue()));
            }

        };
    }

    public static bo a(String s, Boolean boolean1)
    {
        return new bo(s, boolean1) {

            public Object a(Bundle bundle)
            {
                return b(bundle);
            }

            public Boolean b(Bundle bundle)
            {
                return Boolean.valueOf(bundle.getBoolean(getKey(), ((Boolean)bE()).booleanValue()));
            }

        };
    }

    public static bo a(String s, String s1)
    {
        return new bo(s, s1) {

            public Object a(Bundle bundle)
            {
                return d(bundle);
            }

            public String d(Bundle bundle)
            {
                return bo.b(bundle, getKey(), (String)bE());
            }

        };
    }

    private static String a(Bundle bundle, String s, String s1)
    {
        String s2 = bundle.getString(s);
        if (s2 == null)
        {
            return s1;
        } else
        {
            return s2;
        }
    }

    static String b(Bundle bundle, String s, String s1)
    {
        return a(bundle, s, s1);
    }

    public static bo y(String s)
    {
        bo bo1 = new bo(s, null) {

            public Object a(Bundle bundle)
            {
                return d(bundle);
            }

            public String d(Bundle bundle)
            {
                return bo.b(bundle, getKey(), (String)bE());
            }

        };
        ab.aI().a(bo1);
        return bo1;
    }

    protected abstract Object a(Bundle bundle);

    public Object bE()
    {
        return pq;
    }

    public Object get()
    {
        Future future;
        future = ab.aJ().bG();
        if (!future.isDone())
        {
            return pq;
        }
        Object obj = a((Bundle)future.get());
        return obj;
        InterruptedException interruptedexception;
        interruptedexception;
_L2:
        return pq;
        ExecutionException executionexception;
        executionexception;
        continue; /* Loop/switch isn't completed */
        CancellationException cancellationexception;
        cancellationexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String getKey()
    {
        return pp;
    }
}
