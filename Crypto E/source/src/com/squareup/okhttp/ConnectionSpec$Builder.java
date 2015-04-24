// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;


// Referenced classes of package com.squareup.okhttp:
//            ConnectionSpec, CipherSuite, TlsVersion

public static final class <init>
{

    private boolean a;
    private String b[];
    private String c[];
    private boolean d;

    static boolean a(<init> <init>1)
    {
        return <init>1.a;
    }

    static String[] b(a a1)
    {
        return a1.b;
    }

    static String[] c(b b1)
    {
        return b1.c;
    }

    static boolean d(c c1)
    {
        return c1.d;
    }

    public d a(boolean flag)
    {
        if (!a)
        {
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        } else
        {
            d = flag;
            return this;
        }
    }

    public transient d a(CipherSuite aciphersuite[])
    {
        if (!a)
        {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        String as[] = new String[aciphersuite.length];
        for (int i = 0; i < aciphersuite.length; i++)
        {
            as[i] = aciphersuite[i].aS;
        }

        return a(as);
    }

    public transient a a(TlsVersion atlsversion[])
    {
        if (!a)
        {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        String as[] = new String[atlsversion.length];
        for (int i = 0; i < atlsversion.length; i++)
        {
            as[i] = atlsversion[i].e;
        }

        return b(as);
    }

    b a(String as[])
    {
        b = as;
        return this;
    }

    public ConnectionSpec a()
    {
        return new ConnectionSpec(this, null);
    }

    transient b b(String as[])
    {
        c = as;
        return this;
    }

    public (ConnectionSpec connectionspec)
    {
        a = connectionspec.d;
        b = ConnectionSpec.a(connectionspec);
        c = ConnectionSpec.b(connectionspec);
        d = connectionspec.e;
    }

    private d(boolean flag)
    {
        a = flag;
    }

    a(boolean flag, a a1)
    {
        this(flag);
    }
}
