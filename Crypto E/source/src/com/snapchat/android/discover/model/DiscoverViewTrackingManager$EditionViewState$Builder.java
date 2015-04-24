// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;


// Referenced classes of package com.snapchat.android.discover.model:
//            DiscoverViewTrackingManager

public static class e
{

    private String a;
    private int b;
    private boolean c;
    private int d;
    private int e;

    private void b()
    {
        if (a == null)
        {
            throw new IllegalArgumentException("Cannot build EditionViewState with null ID.");
        } else
        {
            return;
        }
    }

    public a a(int i)
    {
        b = i;
        return this;
    }

    public b a(b b1)
    {
        if (b1 != null)
        {
            a = a(b1);
            b = b(b1);
            c = c(b1);
            d = d(b1);
            e = e(b1);
        }
        return this;
    }

    public e a(String s)
    {
        a = s;
        return this;
    }

    public a a(boolean flag)
    {
        c = flag;
        return this;
    }

    public c a()
    {
        b();
        return new b(a, b, c, d, e, null);
    }

    public e b(int i)
    {
        d = i;
        return this;
    }

    public d c(int i)
    {
        e = i;
        return this;
    }

    public ()
    {
        b = -1;
        d = 0;
        e = 0;
    }
}
