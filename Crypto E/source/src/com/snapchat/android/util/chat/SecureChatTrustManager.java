// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class SecureChatTrustManager
    implements X509TrustManager
{

    private static final String a[] = {
        "feelinsonice.com", "www.feelinsonice.com"
    };
    private static final Set b = new HashSet(Arrays.asList(a));
    private X509TrustManager c;

    public SecureChatTrustManager()
    {
        this(null);
    }

    SecureChatTrustManager(KeyStore keystore)
    {
        try
        {
            TrustManagerFactory trustmanagerfactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustmanagerfactory.init(keystore);
            c = a(trustmanagerfactory);
            if (c == null)
            {
                throw new IllegalStateException("Couldn't find X509TrustManager");
            }
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new RuntimeException(generalsecurityexception);
        }
    }

    private static X509TrustManager a(TrustManagerFactory trustmanagerfactory)
    {
        javax.net.ssl.TrustManager atrustmanager[] = trustmanagerfactory.getTrustManagers();
        int i = atrustmanager.length;
        for (int j = 0; j < i; j++)
        {
            javax.net.ssl.TrustManager trustmanager = atrustmanager[j];
            if (trustmanager instanceof X509TrustManager)
            {
                return (X509TrustManager)trustmanager;
            }
        }

        return null;
    }

    public void checkClientTrusted(X509Certificate ax509certificate[], String s)
    {
        throw new CertificateException("Client certificate checking is unsupported.");
    }

    public void checkServerTrusted(X509Certificate ax509certificate[], String s)
    {
        Collection collection;
        c.checkServerTrusted(ax509certificate, s);
        collection = ax509certificate[0].getSubjectAlternativeNames();
        if (collection == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = collection.iterator();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L3
_L3:
        List list = (List)iterator.next();
        if (((Integer)list.get(0)).intValue() != 2) goto _L5; else goto _L4
_L4:
        String s1 = (String)list.get(1);
        if (!b.contains(s1)) goto _L5; else goto _L6
_L6:
        boolean flag = true;
_L8:
        if (!flag)
        {
            throw new CertificateException("Certificate did not match an expected DNS name.");
        } else
        {
            return;
        }
_L2:
        flag = false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public X509Certificate[] getAcceptedIssuers()
    {
        return c.getAcceptedIssuers();
    }

}
