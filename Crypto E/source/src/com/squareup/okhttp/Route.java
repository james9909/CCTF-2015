// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;

// Referenced classes of package com.squareup.okhttp:
//            Address, ConnectionSpec

public final class Route
{

    final Address a;
    final Proxy b;
    final InetSocketAddress c;
    final ConnectionSpec d;
    final boolean e;

    public Route(Address address, Proxy proxy, InetSocketAddress inetsocketaddress, ConnectionSpec connectionspec, boolean flag)
    {
        if (address == null)
        {
            throw new NullPointerException("address == null");
        }
        if (proxy == null)
        {
            throw new NullPointerException("proxy == null");
        }
        if (inetsocketaddress == null)
        {
            throw new NullPointerException("inetSocketAddress == null");
        }
        if (connectionspec == null)
        {
            throw new NullPointerException("connectionConfiguration == null");
        } else
        {
            a = address;
            b = proxy;
            c = inetsocketaddress;
            d = connectionspec;
            e = flag;
            return;
        }
    }

    public Address a()
    {
        return a;
    }

    public Proxy b()
    {
        return b;
    }

    public boolean c()
    {
        return a.e != null && b.type() == java.net.Proxy.Type.HTTP;
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof Route;
        boolean flag1 = false;
        if (flag)
        {
            Route route = (Route)obj;
            boolean flag2 = a.equals(route.a);
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = b.equals(route.b);
                flag1 = false;
                if (flag3)
                {
                    boolean flag4 = c.equals(route.c);
                    flag1 = false;
                    if (flag4)
                    {
                        boolean flag5 = d.equals(route.d);
                        flag1 = false;
                        if (flag5)
                        {
                            boolean flag6 = e;
                            boolean flag7 = route.e;
                            flag1 = false;
                            if (flag6 == flag7)
                            {
                                flag1 = true;
                            }
                        }
                    }
                }
            }
        }
        return flag1;
    }

    public int hashCode()
    {
        int i = 31 * (31 * (31 * (31 * (527 + a.hashCode()) + b.hashCode()) + c.hashCode()) + d.hashCode());
        int j;
        if (e)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        return j + i;
    }
}
