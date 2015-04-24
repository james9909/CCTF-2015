// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            cq, ck, dg, ce, 
//            cg

public class cs extends cq
{

    private static final String a = crittercism/android/cs.getName();
    private ce b;
    private ck c;
    private boolean d;
    private cg e;

    public cs(ce ce1, ck ck1, cg cg1)
    {
        this(ce1, ck1, false, cg1);
    }

    public cs(ce ce1, ck ck1, boolean flag, cg cg1)
    {
        b = ce1;
        c = ck1;
        d = flag;
        e = cg1;
    }

    private static JSONObject a(URLConnection urlconnection)
    {
        StringBuilder stringbuilder = new StringBuilder();
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(urlconnection.getInputStream()));
        do
        {
            int i = bufferedreader.read();
            if (i != -1)
            {
                stringbuilder.append((char)i);
            } else
            {
                bufferedreader.close();
                return new JSONObject(stringbuilder.toString());
            }
        } while (true);
    }

    public final void a()
    {
        ck ck1;
        HttpURLConnection httpurlconnection;
        ck1 = c;
        httpurlconnection = (HttpURLConnection)ck1.a.openConnection();
        for (Iterator iterator = ck1.b.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            Iterator iterator1 = ((List)entry.getValue()).iterator();
            while (iterator1.hasNext()) 
            {
                String s = (String)iterator1.next();
                httpurlconnection.addRequestProperty((String)entry.getKey(), s);
            }
        }

        httpurlconnection.setConnectTimeout(ck1.h);
        httpurlconnection.setReadTimeout(ck1.h);
        httpurlconnection.setDoInput(ck1.d);
        httpurlconnection.setDoOutput(ck1.e);
        if (ck1.g)
        {
            httpurlconnection.setChunkedStreamingMode(ck1.c);
        }
        httpurlconnection.setRequestMethod(ck1.f);
        if (httpurlconnection == null) goto _L2; else goto _L1
_L1:
        int i1;
        ce ce1 = b;
        OutputStream outputstream = httpurlconnection.getOutputStream();
        dg.b();
        outputstream.write((new JSONObject(ce1.a)).toString().getBytes("UTF8"));
        i1 = httpurlconnection.getResponseCode();
        int j = i1;
        if (!d) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject2 = a(((URLConnection) (httpurlconnection)));
        JSONObject jsonobject1 = jsonobject2;
_L10:
        boolean flag;
        JSONObject jsonobject;
        jsonobject = jsonobject1;
        flag = false;
_L5:
        httpurlconnection.disconnect();
        if (e != null)
        {
            e.a(flag, j, jsonobject);
            return;
        }
        break; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        UnsupportedEncodingException unsupportedencodingexception1;
        int l;
        unsupportedencodingexception1 = unsupportedencodingexception;
        l = -1;
_L9:
        a;
        (new StringBuilder("UnsupportedEncodingException in proceed(): ")).append(unsupportedencodingexception1.getMessage());
        dg.b();
        dg.c();
        j = l;
        flag = false;
        jsonobject = null;
          goto _L5
        SocketTimeoutException sockettimeoutexception;
        sockettimeoutexception;
        j = -1;
_L8:
        a;
        (new StringBuilder("SocketTimeoutException in proceed(): ")).append(sockettimeoutexception.getMessage());
        dg.b();
        flag = true;
        jsonobject = null;
          goto _L5
        IOException ioexception1;
        ioexception1;
        IOException ioexception2;
        int k;
        ioexception2 = ioexception1;
        k = -1;
_L7:
        a;
        (new StringBuilder("IOException in proceed(): ")).append(ioexception2.getMessage());
        dg.b();
        dg.c();
        j = k;
        flag = false;
        jsonobject = null;
          goto _L5
        JSONException jsonexception;
        jsonexception;
        JSONException jsonexception1;
        int i;
        jsonexception1 = jsonexception;
        i = -1;
_L6:
        a;
        (new StringBuilder("JSONException in proceed(): ")).append(jsonexception1.getMessage());
        dg.b();
        j = i;
        dg.c();
        flag = false;
        jsonobject = null;
          goto _L5
        JSONException jsonexception2;
        jsonexception2;
        i = j;
        jsonexception1 = jsonexception2;
          goto _L6
        IOException ioexception3;
        ioexception3;
        k = j;
        ioexception2 = ioexception3;
          goto _L7
        sockettimeoutexception;
          goto _L8
        UnsupportedEncodingException unsupportedencodingexception2;
        unsupportedencodingexception2;
        l = j;
        unsupportedencodingexception1 = unsupportedencodingexception2;
          goto _L9
_L4:
        jsonobject1 = null;
        if (true) goto _L10; else goto _L2
        IOException ioexception;
        ioexception;
_L2:
    }

}
