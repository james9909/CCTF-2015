// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;

public class TimberTimingLogger
{

    ArrayList a;
    ArrayList b;
    private String c;
    private String d;

    public TimberTimingLogger(String s, String s1)
    {
        a(s, s1);
    }

    public void a()
    {
        if (a == null)
        {
            a = new ArrayList();
            b = new ArrayList();
        } else
        {
            a.clear();
            b.clear();
        }
        a(null);
    }

    public void a(String s)
    {
        long l = SystemClock.elapsedRealtime();
        a.add(Long.valueOf(l));
        b.add(s);
    }

    public void a(String s, String s1)
    {
        c = s;
        d = s1;
        a();
    }

    void b()
    {
        Log.d(c, (new StringBuilder()).append(d).append(": begin").toString());
        long l = ((Long)a.get(0)).longValue();
        int i = 1;
        long l1;
        long l2;
        for (l1 = l; i < a.size(); l1 = l2)
        {
            l2 = ((Long)a.get(i)).longValue();
            String s = (String)b.get(i);
            long l3 = ((Long)a.get(i - 1)).longValue();
            Log.d(c, (new StringBuilder()).append(d).append(":      ").append(l2 - l3).append(" ms, ").append(s).toString());
            i++;
        }

        Log.d(c, (new StringBuilder()).append(d).append(": end, ").append(l1 - l).append(" ms").toString());
    }
}
