// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.tls;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

// Referenced classes of package com.squareup.okhttp.internal.tls:
//            DistinguishedNameParser

public final class OkHostnameVerifier
    implements HostnameVerifier
{

    public static final OkHostnameVerifier a = new OkHostnameVerifier();
    private static final Pattern b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    private OkHostnameVerifier()
    {
    }

    public static List a(X509Certificate x509certificate)
    {
        List list = a(x509certificate, 7);
        List list1 = a(x509certificate, 2);
        ArrayList arraylist = new ArrayList(list.size() + list1.size());
        arraylist.addAll(list);
        arraylist.addAll(list1);
        return arraylist;
    }

    private static List a(X509Certificate x509certificate, int i)
    {
        ArrayList arraylist;
        arraylist = new ArrayList();
        Collection collection;
        Iterator iterator;
        List list;
        Integer integer;
        String s;
        try
        {
            collection = x509certificate.getSubjectAlternativeNames();
        }
        catch (CertificateParsingException certificateparsingexception)
        {
            return Collections.emptyList();
        }
        if (collection != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        return Collections.emptyList();
        iterator = collection.iterator();
_L2:
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_132;
            }
            list = (List)iterator.next();
        } while (list == null);
        if (list.size() < 2)
        {
            continue; /* Loop/switch isn't completed */
        }
        integer = (Integer)list.get(0);
        if (integer == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (integer.intValue() != i)
        {
            continue; /* Loop/switch isn't completed */
        }
        s = (String)list.get(1);
        if (s == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        arraylist.add(s);
        if (true) goto _L2; else goto _L1
_L1:
        return arraylist;
    }

    static boolean a(String s)
    {
        return b.matcher(s).matches();
    }

    private boolean a(String s, String s1)
    {
        if (s != null && s.length() != 0 && !s.startsWith(".") && !s.endsWith("..") && s1 != null && s1.length() != 0 && !s1.startsWith(".") && !s1.endsWith(".."))
        {
            if (!s.endsWith("."))
            {
                s = (new StringBuilder()).append(s).append('.').toString();
            }
            if (!s1.endsWith("."))
            {
                s1 = (new StringBuilder()).append(s1).append('.').toString();
            }
            String s2 = s1.toLowerCase(Locale.US);
            if (!s2.contains("*"))
            {
                return s.equals(s2);
            }
            if (s2.startsWith("*.") && s2.indexOf('*', 1) == -1 && s.length() >= s2.length() && !"*.".equals(s2))
            {
                String s3 = s2.substring(1);
                if (s.endsWith(s3))
                {
                    int i = s.length() - s3.length();
                    if (i <= 0 || s.lastIndexOf('.', i - 1) == -1)
                    {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private boolean b(String s, X509Certificate x509certificate)
    {
        List list = a(x509certificate, 7);
        int i = list.size();
        for (int j = 0; j < i; j++)
        {
            if (s.equalsIgnoreCase((String)list.get(j)))
            {
                return true;
            }
        }

        return false;
    }

    private boolean c(String s, X509Certificate x509certificate)
    {
        String s1 = s.toLowerCase(Locale.US);
        List list = a(x509certificate, 2);
        int i = list.size();
        int j = 0;
        boolean flag;
        for (flag = false; j < i; flag = true)
        {
            if (a(s1, (String)list.get(j)))
            {
                return true;
            }
            j++;
        }

        if (!flag)
        {
            String s2 = (new DistinguishedNameParser(x509certificate.getSubjectX500Principal())).a("cn");
            if (s2 != null)
            {
                return a(s1, s2);
            }
        }
        return false;
    }

    public boolean a(String s, X509Certificate x509certificate)
    {
        if (a(s))
        {
            return b(s, x509certificate);
        } else
        {
            return c(s, x509certificate);
        }
    }

    public boolean verify(String s, SSLSession sslsession)
    {
        boolean flag;
        try
        {
            flag = a(s, (X509Certificate)sslsession.getPeerCertificates()[0]);
        }
        catch (SSLException sslexception)
        {
            return false;
        }
        return flag;
    }

}
