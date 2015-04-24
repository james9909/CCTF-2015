// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.ph;

// Referenced classes of package com.google.android.gms.common.internal:
//            s

public final class l
{

    private final String UF;

    public l(String s1)
    {
        UF = (String)s.l(s1);
    }

    public void a(Context context, String s1, String s2, Throwable throwable)
    {
        StackTraceElement astacktraceelement[] = throwable.getStackTrace();
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < astacktraceelement.length && i < 2; i++)
        {
            stringbuilder.append(astacktraceelement[i].toString());
            stringbuilder.append("\n");
        }

        ph ph1 = new ph(context, 10);
        String as[] = new String[2];
        as[0] = "GMS_WTF";
        as[1] = stringbuilder.toString();
        ph1.a("GMS_WTF", null, as);
        ph1.send();
        if (bN(7))
        {
            Log.e(s1, s2, throwable);
            Log.wtf(s1, s2, throwable);
        }
    }

    public void a(String s1, String s2, Throwable throwable)
    {
        if (bN(4))
        {
            Log.i(s1, s2, throwable);
        }
    }

    public void b(String s1, String s2, Throwable throwable)
    {
        if (bN(5))
        {
            Log.w(s1, s2, throwable);
        }
    }

    public boolean bN(int i)
    {
        return Log.isLoggable(UF, i);
    }

    public void c(String s1, String s2, Throwable throwable)
    {
        if (bN(6))
        {
            Log.e(s1, s2, throwable);
        }
    }

    public void o(String s1, String s2)
    {
        if (bN(3))
        {
            Log.d(s1, s2);
        }
    }

    public void p(String s1, String s2)
    {
        if (bN(2))
        {
            Log.v(s1, s2);
        }
    }

    public void q(String s1, String s2)
    {
        if (bN(5))
        {
            Log.w(s1, s2);
        }
    }

    public void r(String s1, String s2)
    {
        if (bN(6))
        {
            Log.e(s1, s2);
        }
    }
}
