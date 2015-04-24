// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

// Referenced classes of package com.squareup.okhttp:
//            CertificatePinner, Authenticator

public final class Address
{

    final Proxy a;
    final String b;
    final int c;
    final SocketFactory d;
    final SSLSocketFactory e;
    final HostnameVerifier f;
    final CertificatePinner g;
    final Authenticator h;
    final List i;
    final List j;
    final ProxySelector k;

    public Address(String s, int l, SocketFactory socketfactory, SSLSocketFactory sslsocketfactory, HostnameVerifier hostnameverifier, CertificatePinner certificatepinner, Authenticator authenticator, 
            Proxy proxy, List list, List list1, ProxySelector proxyselector)
    {
        if (s == null)
        {
            throw new NullPointerException("uriHost == null");
        }
        if (l <= 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("uriPort <= 0: ").append(l).toString());
        }
        if (authenticator == null)
        {
            throw new IllegalArgumentException("authenticator == null");
        }
        if (list == null)
        {
            throw new IllegalArgumentException("protocols == null");
        }
        if (proxyselector == null)
        {
            throw new IllegalArgumentException("proxySelector == null");
        } else
        {
            a = proxy;
            b = s;
            c = l;
            d = socketfactory;
            e = sslsocketfactory;
            f = hostnameverifier;
            g = certificatepinner;
            h = authenticator;
            i = Util.a(list);
            j = Util.a(list1);
            k = proxyselector;
            return;
        }
    }

    public String a()
    {
        return b;
    }

    public int b()
    {
        return c;
    }

    public List c()
    {
        return j;
    }

    public Proxy d()
    {
        return a;
    }

    public ProxySelector e()
    {
        return k;
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof Address;
        boolean flag1 = false;
        if (flag)
        {
            Address address = (Address)obj;
            boolean flag2 = Util.a(a, address.a);
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = b.equals(address.b);
                flag1 = false;
                if (flag3)
                {
                    int l = c;
                    int i1 = address.c;
                    flag1 = false;
                    if (l == i1)
                    {
                        boolean flag4 = Util.a(e, address.e);
                        flag1 = false;
                        if (flag4)
                        {
                            boolean flag5 = Util.a(f, address.f);
                            flag1 = false;
                            if (flag5)
                            {
                                boolean flag6 = Util.a(g, address.g);
                                flag1 = false;
                                if (flag6)
                                {
                                    boolean flag7 = Util.a(h, address.h);
                                    flag1 = false;
                                    if (flag7)
                                    {
                                        boolean flag8 = Util.a(i, address.i);
                                        flag1 = false;
                                        if (flag8)
                                        {
                                            boolean flag9 = Util.a(j, address.j);
                                            flag1 = false;
                                            if (flag9)
                                            {
                                                boolean flag10 = Util.a(k, address.k);
                                                flag1 = false;
                                                if (flag10)
                                                {
                                                    flag1 = true;
                                                }
                                            }
                                        }
                                    }
                                }
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
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        CertificatePinner certificatepinner;
        int j2;
        if (a != null)
        {
            l = a.hashCode();
        } else
        {
            l = 0;
        }
        i1 = 31 * (31 * (31 * (l + 527) + b.hashCode()) + c);
        if (e != null)
        {
            j1 = e.hashCode();
        } else
        {
            j1 = 0;
        }
        k1 = 31 * (j1 + i1);
        if (f != null)
        {
            l1 = f.hashCode();
        } else
        {
            l1 = 0;
        }
        i2 = 31 * (l1 + k1);
        certificatepinner = g;
        j2 = 0;
        if (certificatepinner != null)
        {
            j2 = g.hashCode();
        }
        return 31 * (31 * (31 * (31 * (i2 + j2) + h.hashCode()) + i.hashCode()) + j.hashCode()) + k.hashCode();
    }
}
