// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import java.util.concurrent.TimeUnit;

// Referenced classes of package com.squareup.okhttp:
//            CacheControl

public static final class e
{

    boolean a;
    boolean b;
    int c;
    int d;
    int e;
    boolean f;
    boolean g;

    public e a()
    {
        a = true;
        return this;
    }

    public a a(int i, TimeUnit timeunit)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("maxStale < 0: ").append(i).toString());
        }
        long l = timeunit.toSeconds(i);
        int j;
        if (l > 0x7fffffffL)
        {
            j = 0x7fffffff;
        } else
        {
            j = (int)l;
        }
        d = j;
        return this;
    }

    public d b()
    {
        f = true;
        return this;
    }

    public CacheControl c()
    {
        return new CacheControl(this, null);
    }

    public ()
    {
        c = -1;
        d = -1;
        e = -1;
    }
}
