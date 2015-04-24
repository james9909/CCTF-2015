// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.os.ConditionVariable;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            f, dg, a, au, 
//            c

public final class g
    implements f, Runnable
{

    private List a;
    private URL b;
    private long c;
    private ConditionVariable d;
    private au e;
    private ConditionVariable f;
    private volatile boolean g;
    private final Object h;
    private int i;
    private volatile long j;

    public g(au au, URL url)
    {
        this(au, url, (byte)0);
    }

    private g(au au, URL url, byte byte0)
    {
        a = new LinkedList();
        b = null;
        c = System.currentTimeMillis();
        d = new ConditionVariable(false);
        f = new ConditionVariable(false);
        g = false;
        h = new Object();
        i = 50;
        j = 10000L;
        e = au;
        b = url;
        i = 50;
        j = 10000L;
    }

    private static boolean a(HttpURLConnection httpurlconnection, JSONObject jsonobject)
    {
        int k;
        boolean flag;
        try
        {
            httpurlconnection.getOutputStream().write(jsonobject.toString().getBytes("UTF8"));
            k = httpurlconnection.getResponseCode();
            httpurlconnection.disconnect();
        }
        catch (IOException ioexception)
        {
            return false;
        }
        catch (Exception exception)
        {
            return false;
        }
        flag = false;
        if (k == 202)
        {
            flag = true;
        }
        return flag;
    }

    private long b()
    {
        long l;
        long l1;
        long l2;
        l = 0L;
        l1 = j;
        l2 = System.currentTimeMillis() - c;
        if (l2 <= l) goto _L2; else goto _L1
_L1:
        l1 -= l2;
        if (l1 >= l) goto _L2; else goto _L3
_L3:
        j;
        return l;
_L2:
        l = l1;
        if (true) goto _L3; else goto _L4
_L4:
    }

    private HttpURLConnection c()
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)b.openConnection();
        httpurlconnection.setConnectTimeout(2500);
        httpurlconnection.setRequestProperty("User-Agent", "4.5.4");
        httpurlconnection.setRequestProperty("Content-Type", "application/json");
        httpurlconnection.setDoOutput(true);
        httpurlconnection.setRequestMethod("POST");
        return httpurlconnection;
        IOException ioexception;
        ioexception;
        IOException ioexception1;
        httpurlconnection = null;
        ioexception1 = ioexception;
_L2:
        dg.b("Crittercism", (new StringBuilder("Failed to instantiate URLConnection to APM server: ")).append(ioexception1.getMessage()).toString());
        return httpurlconnection;
        ioexception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean d()
    {
        return !g && a.size() < i;
    }

    public final void a()
    {
        f.open();
    }

    public final void a(int k, TimeUnit timeunit)
    {
        j = timeunit.toMillis(k);
    }

    public final void a(c c1)
    {
label0:
        {
            if (!d())
            {
                return;
            }
            synchronized (h)
            {
                if (d())
                {
                    break label0;
                }
            }
            return;
        }
        a.add(c1);
        d.open();
        obj;
        JVM INSTR monitorexit ;
    }

    public final void run()
    {
_L2:
        boolean flag;
        if (g)
        {
            break; /* Loop/switch isn't completed */
        }
        f.block();
        d.block();
        flag = g;
        if (flag)
        {
            break; /* Loop/switch isn't completed */
        }
        HttpURLConnection httpurlconnection;
        a a1;
        try
        {
            if (b() > 0L)
            {
                Thread.sleep(b());
            }
        }
        catch (InterruptedException interruptedexception) { }
        c = System.currentTimeMillis();
        httpurlconnection = c();
        if (httpurlconnection == null)
        {
            List list;
            try
            {
                g = true;
                dg.b("Crittercism", "Disabling APM due to failure instantiating connection");
                return;
            }
            catch (Exception exception)
            {
                Log.e("Crittercism", (new StringBuilder("Exited APM send task due to: \n")).append(exception).toString());
            }
            break MISSING_BLOCK_LABEL_165;
        }
        synchronized (h)
        {
            list = a;
            a = new LinkedList();
            d.close();
        }
        a1 = crittercism.android.a.a(e, list);
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        g = true;
        dg.b("Crittercism", "Disabling APM due to failure building request");
        return;
        return;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        a(httpurlconnection, a1.a);
        if (true) goto _L2; else goto _L1
_L1:
    }
}
