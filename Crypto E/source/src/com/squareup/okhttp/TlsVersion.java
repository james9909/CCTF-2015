// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;


public final class TlsVersion extends Enum
{

    public static final TlsVersion a;
    public static final TlsVersion b;
    public static final TlsVersion c;
    public static final TlsVersion d;
    private static final TlsVersion f[];
    final String e;

    private TlsVersion(String s, int i, String s1)
    {
        super(s, i);
        e = s1;
    }

    static TlsVersion a(String s)
    {
        byte byte0 = -1;
        s.hashCode();
        JVM INSTR lookupswitch 4: default 48
    //                   -503070503: 121
    //                   -503070502: 107
    //                   79201641: 149
    //                   79923350: 135;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        break; /* Loop/switch isn't completed */
_L4:
        break MISSING_BLOCK_LABEL_149;
_L6:
        switch (byte0)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unexpected TLS version: ").append(s).toString());

        case 0: // '\0'
            return a;

        case 1: // '\001'
            return b;

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return d;
        }
_L3:
        if (s.equals("TLSv1.2"))
        {
            byte0 = 0;
        }
          goto _L6
_L2:
        if (s.equals("TLSv1.1"))
        {
            byte0 = 1;
        }
          goto _L6
_L5:
        if (s.equals("TLSv1"))
        {
            byte0 = 2;
        }
          goto _L6
        if (s.equals("SSLv3"))
        {
            byte0 = 3;
        }
          goto _L6
    }

    public static TlsVersion valueOf(String s)
    {
        return (TlsVersion)Enum.valueOf(com/squareup/okhttp/TlsVersion, s);
    }

    public static TlsVersion[] values()
    {
        return (TlsVersion[])f.clone();
    }

    static 
    {
        a = new TlsVersion("TLS_1_2", 0, "TLSv1.2");
        b = new TlsVersion("TLS_1_1", 1, "TLSv1.1");
        c = new TlsVersion("TLS_1_0", 2, "TLSv1");
        d = new TlsVersion("SSL_3_0", 3, "SSLv3");
        TlsVersion atlsversion[] = new TlsVersion[4];
        atlsversion[0] = a;
        atlsversion[1] = b;
        atlsversion[2] = c;
        atlsversion[3] = d;
        f = atlsversion;
    }
}
