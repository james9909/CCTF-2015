// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.ByteString;

public final class CertificatePinner
{
    public static final class Builder
    {

        private final Map a = new LinkedHashMap();

        static Map a(Builder builder)
        {
            return builder.a;
        }

        public CertificatePinner a()
        {
            return new CertificatePinner(this);
        }

        public Builder()
        {
        }
    }


    public static final CertificatePinner a = (new Builder()).a();
    private final Map b;

    private CertificatePinner(Builder builder)
    {
        b = Util.a(Builder.a(builder));
    }


    public static String a(Certificate certificate)
    {
        if (!(certificate instanceof X509Certificate))
        {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        } else
        {
            return (new StringBuilder()).append("sha1/").append(a((X509Certificate)certificate).b()).toString();
        }
    }

    private static ByteString a(X509Certificate x509certificate)
    {
        return Util.a(ByteString.a(x509certificate.getPublicKey().getEncoded()));
    }

    public void a(String s, List list)
    {
        int i;
        List list1;
        i = 0;
        list1 = (List)b.get(s);
        if (list1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j = list.size();
        int k = 0;
label0:
        do
        {
label1:
            {
                if (k >= j)
                {
                    break label1;
                }
                if (list1.contains(a((X509Certificate)list.get(k))))
                {
                    break label0;
                }
                k++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        StringBuilder stringbuilder = (new StringBuilder()).append("Certificate pinning failure!").append("\n  Peer certificate chain:");
        int l = list.size();
        for (int i1 = 0; i1 < l; i1++)
        {
            X509Certificate x509certificate = (X509Certificate)list.get(i1);
            stringbuilder.append("\n    ").append(a(((Certificate) (x509certificate)))).append(": ").append(x509certificate.getSubjectDN().getName());
        }

        stringbuilder.append("\n  Pinned certificates for ").append(s).append(":");
        for (int j1 = list1.size(); i < j1; i++)
        {
            ByteString bytestring = (ByteString)list1.get(i);
            stringbuilder.append("\n    sha1/").append(bytestring.b());
        }

        throw new SSLPeerUnverifiedException(stringbuilder.toString());
    }

}
