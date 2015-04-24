// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.eventengine;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.snapchat.eventengine:
//            WorkerThread, DatabaseHelper, Constants

class ScAnalyticsEventEngineStatic
{

    static WorkerThread a;
    static WorkerThread b;
    private static Context c;
    private static Map d;
    private static long e = -1L;
    private static boolean f = false;
    private static long g = 0x1b7740L;
    private static Runnable h;
    private static AtomicBoolean i = new AtomicBoolean(false);
    private static AtomicBoolean j = new AtomicBoolean(false);

    private ScAnalyticsEventEngineStatic()
    {
    }

    static long a(String s1, Map map, long l1, boolean flag)
    {
        return c(s1, map, l1, flag);
    }

    private static long a(Map map)
    {
        JSONObject jsonobject = new JSONObject(map);
        DatabaseHelper databasehelper = DatabaseHelper.a(c);
        long l1 = databasehelper.a(jsonobject.toString());
        if (databasehelper.a() >= 1000L)
        {
            databasehelper.b(databasehelper.a(20L));
        }
        if (databasehelper.a() >= 30L)
        {
            t();
            return l1;
        } else
        {
            c(30000L);
            return l1;
        }
    }

    private static Object a(Object obj)
    {
        if (obj == null)
        {
            obj = JSONObject.NULL;
        }
        return obj;
    }

    public static void a()
    {
        if (!a("uploadEvents()"))
        {
            return;
        } else
        {
            a.a(new Runnable() {

                public void run()
                {
                    ScAnalyticsEventEngineStatic.b();
                }

            });
            return;
        }
    }

    static void a(long l1)
    {
        f(l1);
    }

    public static void a(Context context, Map map)
    {
        com/snapchat/eventengine/ScAnalyticsEventEngineStatic;
        JVM INSTR monitorenter ;
        if (context != null) goto _L2; else goto _L1
_L1:
        Log.e("com.amplitude.api.Amplitude", "Argument context cannot be null in initialize()");
_L3:
        com/snapchat/eventengine/ScAnalyticsEventEngineStatic;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (map != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        Log.e("com.amplitude.api.Amplitude", "Argument userProperties cannot be null in initialize()");
          goto _L3
        Exception exception;
        exception;
        throw exception;
        c = context.getApplicationContext();
        d = new HashMap(map);
          goto _L3
    }

    private static void a(Runnable runnable)
    {
        if (Thread.currentThread() != a)
        {
            a.a(runnable);
            return;
        } else
        {
            runnable.run();
            return;
        }
    }

    public static void a(String s1, Map map)
    {
        if (map == null)
        {
            map = new HashMap();
        }
        b(s1, map, System.currentTimeMillis(), true);
    }

    static void a(String s1, JSONArray jsonarray, long l1)
    {
        b(s1, jsonarray, l1);
    }

    static void a(boolean flag)
    {
        b(flag);
    }

    private static boolean a(String s1)
    {
        boolean flag = false;
        com/snapchat/eventengine/ScAnalyticsEventEngineStatic;
        JVM INSTR monitorenter ;
        if (c != null) goto _L2; else goto _L1
_L1:
        Log.e("com.amplitude.api.Amplitude", (new StringBuilder()).append("context cannot be null, set context with initialize() before calling ").append(s1).toString());
_L4:
        com/snapchat/eventengine/ScAnalyticsEventEngineStatic;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        if (d != null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        Log.e("com.amplitude.api.Amplitude", (new StringBuilder()).append("userPrefs cannot be null, set userPrefs with initialize() before calling ").append(s1).toString());
        flag = false;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        flag = true;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void b()
    {
        t();
    }

    static void b(long l1)
    {
        d(l1);
    }

    private static void b(String s1, Map map, long l1, boolean flag)
    {
        if (TextUtils.isEmpty(s1))
        {
            Log.e("com.amplitude.api.Amplitude", "Argument eventType cannot be null or blank in logEvent()");
        } else
        if (a("logEvent()"))
        {
            a(new Runnable(s1, map, l1, flag) {

                final String a;
                final Map b;
                final long c;
                final boolean d;

                public void run()
                {
                    ScAnalyticsEventEngineStatic.a(a, b, c, d);
                }

            
            {
                a = s1;
                b = map;
                c = l1;
                d = flag;
                super();
            }
            });
            return;
        }
    }

    private static void b(String s1, JSONArray jsonarray, long l1)
    {
        HttpPost httppost;
        long l2;
        int i1;
        httppost = new HttpPost(s1);
        l2 = System.currentTimeMillis();
        i1 = 0;
_L2:
        if (i1 >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        jsonarray.getJSONObject(i1).put("client_upload_ts", l2);
        i1++;
        if (true) goto _L2; else goto _L1
        JSONException jsonexception;
        jsonexception;
        Log.e("com.amplitude.api.Amplitude", jsonexception.toString());
_L6:
        return;
_L1:
        DefaultHttpClient defaulthttpclient;
        boolean flag;
        boolean flag1;
        int j1;
        BasicHttpParams basichttpparams;
        try
        {
            httppost.setEntity(new StringEntity(jsonarray.toString(), "UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.e("com.amplitude.api.Amplitude", unsupportedencodingexception.toString());
        }
        basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setSoTimeout(basichttpparams, 10000);
        defaulthttpclient = new DefaultHttpClient(basichttpparams);
        j1 = defaulthttpclient.execute(httppost).getStatusLine().getStatusCode();
        if (j1 >= 500) goto _L4; else goto _L3
_L3:
        flag1 = true;
        a.a(new Runnable(l1) {

            final long a;

            public void run()
            {
                DatabaseHelper databasehelper = DatabaseHelper.a(ScAnalyticsEventEngineStatic.g());
                databasehelper.b(a);
                ScAnalyticsEventEngineStatic.m().set(false);
                if (databasehelper.a() > 30L)
                {
                    ScAnalyticsEventEngineStatic.a.a(new Runnable(this) {

                        final _cls8 a;

                        public void run()
                        {
                            ScAnalyticsEventEngineStatic.a(false);
                        }

            
            {
                a = _pcls8;
                super();
            }
                    });
                }
            }

            
            {
                a = l1;
                super();
            }
        });
_L7:
        if (defaulthttpclient.getConnectionManager() == null)
        {
            break MISSING_BLOCK_LABEL_586;
        }
        defaulthttpclient.getConnectionManager().shutdown();
        flag = flag1;
_L8:
        if (flag) goto _L6; else goto _L5
_L5:
        j.set(false);
        return;
_L4:
        Log.w("com.amplitude.api.Amplitude", (new StringBuilder()).append("Event upload failed, with code ").append(j1).append(", will attempt to reupload later").toString());
        flag1 = false;
          goto _L7
        HttpHostConnectException httphostconnectexception;
        httphostconnectexception;
        flag1 = false;
_L14:
        Log.e("com.amplitude.api.Amplitude", "No service, will attempt to re-upload events later.");
        if (defaulthttpclient.getConnectionManager() == null)
        {
            break MISSING_BLOCK_LABEL_586;
        }
        defaulthttpclient.getConnectionManager().shutdown();
        flag = flag1;
          goto _L8
        UnknownHostException unknownhostexception;
        unknownhostexception;
        flag1 = false;
_L13:
        Log.e("com.amplitude.api.Amplitude", "No service, will attempt to re-upload events later.");
        if (defaulthttpclient.getConnectionManager() == null)
        {
            break MISSING_BLOCK_LABEL_586;
        }
        defaulthttpclient.getConnectionManager().shutdown();
        flag = flag1;
          goto _L8
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
        flag = false;
_L12:
        Log.e("com.amplitude.api.Amplitude", clientprotocolexception.toString());
        if (defaulthttpclient.getConnectionManager() != null)
        {
            defaulthttpclient.getConnectionManager().shutdown();
        }
          goto _L8
        IOException ioexception;
        ioexception;
        flag = false;
_L11:
        Log.e("com.amplitude.api.Amplitude", ioexception.toString());
        if (defaulthttpclient.getConnectionManager() != null)
        {
            defaulthttpclient.getConnectionManager().shutdown();
        }
          goto _L8
        AssertionError assertionerror;
        assertionerror;
        flag = false;
_L10:
        Log.e("com.amplitude.api.Amplitude", "Exception:", assertionerror);
        if (defaulthttpclient.getConnectionManager() != null)
        {
            defaulthttpclient.getConnectionManager().shutdown();
        }
          goto _L8
        Exception exception1;
        exception1;
        flag = false;
_L9:
        Log.e("com.amplitude.api.Amplitude", "Exception:", exception1);
        if (defaulthttpclient.getConnectionManager() != null)
        {
            defaulthttpclient.getConnectionManager().shutdown();
        }
          goto _L8
        Exception exception;
        exception;
        if (defaulthttpclient.getConnectionManager() != null)
        {
            defaulthttpclient.getConnectionManager().shutdown();
        }
        throw exception;
        Exception exception2;
        exception2;
        flag = flag1;
        exception1 = exception2;
          goto _L9
        AssertionError assertionerror1;
        assertionerror1;
        flag = flag1;
        assertionerror = assertionerror1;
          goto _L10
        IOException ioexception1;
        ioexception1;
        flag = flag1;
        ioexception = ioexception1;
          goto _L11
        ClientProtocolException clientprotocolexception1;
        clientprotocolexception1;
        flag = flag1;
        clientprotocolexception = clientprotocolexception1;
          goto _L12
        UnknownHostException unknownhostexception1;
        unknownhostexception1;
          goto _L13
        HttpHostConnectException httphostconnectexception1;
        httphostconnectexception1;
          goto _L14
        flag = flag1;
          goto _L8
    }

    private static void b(boolean flag)
    {
        if (j.getAndSet(true))
        {
            break MISSING_BLOCK_LABEL_80;
        }
        DatabaseHelper databasehelper = DatabaseHelper.a(c);
        long l1;
        byte byte0;
        Pair pair;
        long l2;
        JSONArray jsonarray;
        try
        {
            l1 = q();
        }
        catch (JSONException jsonexception)
        {
            j.set(false);
            Log.e("com.amplitude.api.Amplitude", jsonexception.toString());
            return;
        }
        if (flag)
        {
            byte0 = 100;
        } else
        {
            byte0 = -1;
        }
        pair = databasehelper.a(l1, byte0);
        l2 = ((Long)pair.first).longValue();
        jsonarray = (JSONArray)pair.second;
        b.a(new Runnable(jsonarray, l2) {

            final JSONArray a;
            final long b;

            public void run()
            {
                ScAnalyticsEventEngineStatic.a("https://sc-analytics.appspot.com/analytic_events", a, b);
            }

            
            {
                a = jsonarray;
                b = l1;
                super();
            }
        });
    }

    private static long c(String s1, Map map, long l1, boolean flag)
    {
        if (flag)
        {
            f(l1);
        }
        d(l1);
        HashMap hashmap = new HashMap();
        hashmap.put("event_name", a(s1));
        hashmap.put("client_ts", Long.valueOf(l1));
        hashmap.put("session_id", Long.valueOf(e));
        hashmap.putAll(d);
        hashmap.putAll(map);
        return a(hashmap);
    }

    static AtomicBoolean c()
    {
        return i;
    }

    private static void c(long l1)
    {
        if (!i.getAndSet(true))
        {
            a.a(new Runnable() {

                public void run()
                {
                    ScAnalyticsEventEngineStatic.c().set(false);
                    ScAnalyticsEventEngineStatic.b();
                }

            }, l1);
        }
    }

    static Runnable d()
    {
        return h;
    }

    private static void d(long l1)
    {
        c.getSharedPreferences(u(), 0).edit().putLong(Constants.d, l1).commit();
    }

    static long e()
    {
        return q();
    }

    private static void e(long l1)
    {
        r();
        e = l1;
        c.getSharedPreferences(u(), 0).edit().putLong(Constants.g, e).commit();
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("special", "session_start");
            return;
        }
        catch (JSONException jsonexception)
        {
            return;
        }
    }

    static long f()
    {
        return p();
    }

    private static void f(long l1)
    {
        if (f) goto _L2; else goto _L1
_L1:
        if (l1 - p() >= 15000L) goto _L4; else goto _L3
_L3:
        long l2 = c.getSharedPreferences(u(), 0).getLong(Constants.g, -1L);
        if (l2 != -1L) goto _L6; else goto _L5
_L5:
        e(l1);
_L8:
        return;
_L6:
        e = l2;
        return;
_L4:
        e(l1);
        return;
_L2:
        if (l1 - n() > g || e == -1L)
        {
            e(l1);
            return;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    static Context g()
    {
        return c;
    }

    static void h()
    {
        r();
    }

    static boolean i()
    {
        return f;
    }

    static String j()
    {
        return u();
    }

    static void k()
    {
        s();
    }

    static void l()
    {
        o();
    }

    static AtomicBoolean m()
    {
        return j;
    }

    private static long n()
    {
        return c.getSharedPreferences(u(), 0).getLong(Constants.d, -1L);
    }

    private static void o()
    {
        c.getSharedPreferences(u(), 0).edit().remove(Constants.e).remove(Constants.f).commit();
    }

    private static long p()
    {
        return c.getSharedPreferences(u(), 0).getLong(Constants.e, -1L);
    }

    private static long q()
    {
        return c.getSharedPreferences(u(), 0).getLong(Constants.f, -1L);
    }

    private static void r()
    {
        o();
        f = true;
    }

    private static void s()
    {
        f = false;
    }

    private static void t()
    {
        b(true);
    }

    private static String u()
    {
        return (new StringBuilder()).append(Constants.c).append(".").append(c.getPackageName()).toString();
    }

    static 
    {
        a = new WorkerThread("logThread");
        b = new WorkerThread("httpThread");
        a.start();
        b.start();
    }

    // Unreferenced inner class com/snapchat/eventengine/ScAnalyticsEventEngineStatic$4

/* anonymous class */
    static final class _cls4
        implements Runnable
    {

        final long a;

        public void run()
        {
            ScAnalyticsEventEngineStatic.a.b(ScAnalyticsEventEngineStatic.d());
            long l1 = ScAnalyticsEventEngineStatic.e();
            long l2 = ScAnalyticsEventEngineStatic.f();
            if (l1 != -1L && a - l2 < 15000L)
            {
                DatabaseHelper.a(ScAnalyticsEventEngineStatic.g()).c(l1);
            }
            ScAnalyticsEventEngineStatic.a(a);
            ScAnalyticsEventEngineStatic.h();
            ScAnalyticsEventEngineStatic.b(a);
            ScAnalyticsEventEngineStatic.a();
        }
    }


    // Unreferenced inner class com/snapchat/eventengine/ScAnalyticsEventEngineStatic$5

/* anonymous class */
    static final class _cls5
        implements Runnable
    {

        final long a;

        public void run()
        {
            if (ScAnalyticsEventEngineStatic.i())
            {
                long l1 = ScAnalyticsEventEngineStatic.a("session_end", null, a, false);
                ScAnalyticsEventEngineStatic.g().getSharedPreferences(ScAnalyticsEventEngineStatic.j(), 0).edit().putLong(Constants.f, l1).putLong(Constants.e, a).commit();
            }
            ScAnalyticsEventEngineStatic.k();
        }
    }


    // Unreferenced inner class com/snapchat/eventengine/ScAnalyticsEventEngineStatic$6

/* anonymous class */
    static final class _cls6
        implements Runnable
    {

        public void run()
        {
            ScAnalyticsEventEngineStatic.l();
            ScAnalyticsEventEngineStatic.a();
        }

    }

}
