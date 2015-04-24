// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import android.graphics.Bitmap;
import android.net.Uri;
import com.snapchat.android.discover.DSnapMediaCompressor;
import com.snapchat.android.model.UserPrefs;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.discover.model:
//            DSnapVideobryo, DSnapImagebryo, DSnapbryo

public static class c
{

    private String a;
    private String b;
    private String c;
    private String d;
    private Bitmap e;
    private Uri f;
    private Bitmap g;
    private Date h;
    private String i;
    private LinkedHashSet j;
    private com.snapchat.android.model.atus k;
    private com.snapchat.android.model.us l;
    private com.snapchat.android.model.us m;
    private String n;
    private boolean o;
    private DSnapMediaCompressor p;

    static String a(c c1)
    {
        return c1.i;
    }

    static Date b(i i1)
    {
        return i1.h;
    }

    static String c(h h1)
    {
        return h1.a;
    }

    static String d(a a1)
    {
        return a1.b;
    }

    static String e(b b1)
    {
        return b1.c;
    }

    static String f(c c1)
    {
        return c1.d;
    }

    static LinkedHashSet g(d d1)
    {
        return d1.j;
    }

    static com.snapchat.android.model.atus h(j j1)
    {
        return j1.k;
    }

    static com.snapchat.android.model.us i(k k1)
    {
        return k1.l;
    }

    static com.snapchat.android.model.us j(l l1)
    {
        return l1.m;
    }

    static boolean k(m m1)
    {
        return m1.o;
    }

    static Bitmap l(o o1)
    {
        return o1.e;
    }

    static Uri m(e e1)
    {
        return e1.f;
    }

    static String n(f f1)
    {
        return f1.n;
    }

    static Bitmap o(n n1)
    {
        return n1.g;
    }

    public g a(Bitmap bitmap)
    {
        e = bitmap;
        return this;
    }

    public e a(String s)
    {
        d = s;
        return this;
    }

    public DSnapbryo a()
    {
        if (f != null)
        {
            return new DSnapVideobryo(this);
        } else
        {
            return new DSnapImagebryo(this);
        }
    }

    public (String s, String s1, String s2)
    {
        h = new Date();
        j = new LinkedHashSet();
        k = com.snapchat.android.model.atus.NOT_UPLOADED;
        l = com.snapchat.android.model.us.UNSENT;
        m = com.snapchat.android.model.us.NOT_POSTED;
        p = new DSnapMediaCompressor();
        i = (new StringBuilder()).append(UserPrefs.k()).append("~").append(UUID.randomUUID().toString()).toString().toUpperCase(Locale.US);
        a = s;
        b = s1;
        c = s2;
    }
}
