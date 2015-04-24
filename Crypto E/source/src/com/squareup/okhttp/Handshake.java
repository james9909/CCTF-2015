// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.security.Principal;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

public final class Handshake
{

    private final String a;
    private final List b;
    private final List c;

    private Handshake(String s, List list, List list1)
    {
        a = s;
        b = list;
        c = list1;
    }

    public static Handshake a(String s, List list, List list1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("cipherSuite == null");
        } else
        {
            return new Handshake(s, Util.a(list), Util.a(list1));
        }
    }

    public static Handshake a(SSLSession sslsession)
    {
        String s;
        s = sslsession.getCipherSuite();
        if (s == null)
        {
            throw new IllegalStateException("cipherSuite == null");
        }
        java.security.cert.Certificate acertificate2[] = sslsession.getPeerCertificates();
        java.security.cert.Certificate acertificate[] = acertificate2;
_L1:
        SSLPeerUnverifiedException sslpeerunverifiedexception;
        List list;
        java.security.cert.Certificate acertificate1[];
        List list1;
        if (acertificate != null)
        {
            list = Util.a(acertificate);
        } else
        {
            list = Collections.emptyList();
        }
        acertificate1 = sslsession.getLocalCertificates();
        if (acertificate1 != null)
        {
            list1 = Util.a(acertificate1);
        } else
        {
            list1 = Collections.emptyList();
        }
        return new Handshake(s, list, list1);
        sslpeerunverifiedexception;
        acertificate = null;
          goto _L1
    }

    public String a()
    {
        return a;
    }

    public List b()
    {
        return b;
    }

    public Principal c()
    {
        if (!b.isEmpty())
        {
            return ((X509Certificate)b.get(0)).getSubjectX500Principal();
        } else
        {
            return null;
        }
    }

    public List d()
    {
        return c;
    }

    public Principal e()
    {
        if (!c.isEmpty())
        {
            return ((X509Certificate)c.get(0)).getSubjectX500Principal();
        } else
        {
            return null;
        }
    }

    public boolean equals(Object obj)
    {
        Handshake handshake;
        if (obj instanceof Handshake)
        {
            if (a.equals((handshake = (Handshake)obj).a) && b.equals(handshake.b) && c.equals(handshake.c))
            {
                return true;
            }
        }
        return false;
    }

    public int hashCode()
    {
        return 31 * (31 * (527 + a.hashCode()) + b.hashCode()) + c.hashCode();
    }
}
