// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Authenticator;
import com.squareup.okhttp.Challenge;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HeaderParser

public final class OkHeaders
{

    static final String a = Platform.a().b();
    public static final String b = (new StringBuilder()).append(a).append("-Sent-Millis").toString();
    public static final String c = (new StringBuilder()).append(a).append("-Received-Millis").toString();
    public static final String d = (new StringBuilder()).append(a).append("-Selected-Protocol").toString();
    private static final Comparator e = new Comparator() {

        public int a(String s, String s1)
        {
            if (s == s1)
            {
                return 0;
            }
            if (s == null)
            {
                return -1;
            }
            if (s1 == null)
            {
                return 1;
            } else
            {
                return String.CASE_INSENSITIVE_ORDER.compare(s, s1);
            }
        }

        public int compare(Object obj, Object obj1)
        {
            return a((String)obj, (String)obj1);
        }

    };

    private OkHeaders()
    {
    }

    public static long a(Headers headers)
    {
        return b(headers.a("Content-Length"));
    }

    public static long a(Request request)
    {
        return a(request.e());
    }

    public static long a(Response response)
    {
        return a(response.f());
    }

    public static Request a(Authenticator authenticator, Response response, Proxy proxy)
    {
        if (response.c() == 407)
        {
            return authenticator.b(proxy, response);
        } else
        {
            return authenticator.a(proxy, response);
        }
    }

    private static String a(List list)
    {
        if (list.size() == 1)
        {
            return (String)list.get(0);
        }
        StringBuilder stringbuilder = new StringBuilder();
        int i = list.size();
        for (int j = 0; j < i; j++)
        {
            if (j > 0)
            {
                stringbuilder.append("; ");
            }
            stringbuilder.append((String)list.get(j));
        }

        return stringbuilder.toString();
    }

    public static Map a(Headers headers, String s)
    {
        TreeMap treemap = new TreeMap(e);
        int i = headers.a();
        for (int j = 0; j < i; j++)
        {
            String s1 = headers.a(j);
            String s2 = headers.b(j);
            ArrayList arraylist = new ArrayList();
            List list = (List)treemap.get(s1);
            if (list != null)
            {
                arraylist.addAll(list);
            }
            arraylist.add(s2);
            treemap.put(s1, Collections.unmodifiableList(arraylist));
        }

        if (s != null)
        {
            treemap.put(null, Collections.unmodifiableList(Collections.singletonList(s)));
        }
        return Collections.unmodifiableMap(treemap);
    }

    public static void a(com.squareup.okhttp.Request.Builder builder, Map map)
    {
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            if (("Cookie".equalsIgnoreCase(s) || "Cookie2".equalsIgnoreCase(s)) && !((List)entry.getValue()).isEmpty())
            {
                builder.b(s, a((List)entry.getValue()));
            }
        } while (true);
    }

    public static boolean a(Response response, Headers headers, Request request)
    {
        for (Iterator iterator = d(response).iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if (!Util.a(headers.c(s), request.b(s)))
            {
                return false;
            }
        }

        return true;
    }

    static boolean a(String s)
    {
        return !"Connection".equalsIgnoreCase(s) && !"Keep-Alive".equalsIgnoreCase(s) && !"Proxy-Authenticate".equalsIgnoreCase(s) && !"Proxy-Authorization".equalsIgnoreCase(s) && !"TE".equalsIgnoreCase(s) && !"Trailers".equalsIgnoreCase(s) && !"Transfer-Encoding".equalsIgnoreCase(s) && !"Upgrade".equalsIgnoreCase(s);
    }

    private static long b(String s)
    {
        if (s == null)
        {
            return -1L;
        }
        long l;
        try
        {
            l = Long.parseLong(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return -1L;
        }
        return l;
    }

    public static List b(Headers headers, String s)
    {
        ArrayList arraylist;
        int i;
        int j;
        arraylist = new ArrayList();
        i = headers.a();
        j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_193;
        }
        if (s.equalsIgnoreCase(headers.a(j)))
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        String s1;
        int k;
        s1 = headers.b(j);
        k = 0;
_L6:
        if (k >= s1.length()) goto _L4; else goto _L3
_L3:
        String s2;
        int i1;
        int l = HeaderParser.a(s1, k, " ");
        s2 = s1.substring(k, l).trim();
        i1 = HeaderParser.a(s1, l);
        if (!s1.regionMatches(true, i1, "realm=\"", 0, "realm=\"".length())) goto _L4; else goto _L5
_L5:
        int j1 = i1 + "realm=\"".length();
        int k1 = HeaderParser.a(s1, j1, "\"");
        String s3 = s1.substring(j1, k1);
        k = HeaderParser.a(s1, 1 + HeaderParser.a(s1, k1 + 1, ","));
        arraylist.add(new Challenge(s2, s3));
          goto _L6
        return arraylist;
    }

    public static boolean b(Response response)
    {
        return d(response).contains("*");
    }

    public static Headers c(Response response)
    {
        Set set = d(response);
        if (set.isEmpty())
        {
            return (new com.squareup.okhttp.Headers.Builder()).a();
        }
        Headers headers = response.i().a().e();
        com.squareup.okhttp.Headers.Builder builder = new com.squareup.okhttp.Headers.Builder();
        int i = 0;
        for (int j = headers.a(); i < j; i++)
        {
            String s = headers.a(i);
            if (set.contains(s))
            {
                builder.a(s, headers.b(i));
            }
        }

        return builder.a();
    }

    private static Set d(Response response)
    {
        Object obj = Collections.emptySet();
        Headers headers = response.f();
        int i = headers.a();
        int j = 0;
        while (j < i) 
        {
            if ("Vary".equalsIgnoreCase(headers.a(j)))
            {
                String s = headers.b(j);
                if (((Set) (obj)).isEmpty())
                {
                    obj = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                }
                String as[] = s.split(",");
                int k = as.length;
                int l = 0;
                while (l < k) 
                {
                    ((Set) (obj)).add(as[l].trim());
                    l++;
                }
            }
            j++;
        }
        return ((Set) (obj));
    }

}
