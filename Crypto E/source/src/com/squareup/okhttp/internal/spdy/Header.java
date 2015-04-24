// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import okio.ByteString;

public final class Header
{

    public static final ByteString a = ByteString.a(":status");
    public static final ByteString b = ByteString.a(":method");
    public static final ByteString c = ByteString.a(":path");
    public static final ByteString d = ByteString.a(":scheme");
    public static final ByteString e = ByteString.a(":authority");
    public static final ByteString f = ByteString.a(":host");
    public static final ByteString g = ByteString.a(":version");
    public final ByteString h;
    public final ByteString i;
    final int j;

    public Header(String s, String s1)
    {
        this(ByteString.a(s), ByteString.a(s1));
    }

    public Header(ByteString bytestring, String s)
    {
        this(bytestring, ByteString.a(s));
    }

    public Header(ByteString bytestring, ByteString bytestring1)
    {
        h = bytestring;
        i = bytestring1;
        j = 32 + bytestring.e() + bytestring1.e();
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof Header;
        boolean flag1 = false;
        if (flag)
        {
            Header header = (Header)obj;
            boolean flag2 = h.equals(header.h);
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = i.equals(header.i);
                flag1 = false;
                if (flag3)
                {
                    flag1 = true;
                }
            }
        }
        return flag1;
    }

    public int hashCode()
    {
        return 31 * (527 + h.hashCode()) + i.hashCode();
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = h.a();
        aobj[1] = i.a();
        return String.format("%s: %s", aobj);
    }

}
