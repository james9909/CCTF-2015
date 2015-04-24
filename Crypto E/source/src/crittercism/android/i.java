// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.IOException;
import java.lang.reflect.Field;
import java.net.Socket;
import java.net.SocketImpl;
import java.net.SocketImplFactory;
import java.net.URL;
import java.net.URLStreamHandler;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.conn.ssl.SSLSocketFactory;

// Referenced classes of package crittercism.android:
//            j, dg, by, v, 
//            ad, bx, ac, y, 
//            ab, e, d

public final class i
{
    static final class a
        implements Runnable
    {

        private boolean a;
        private boolean b;
        private i c;

        public final boolean a()
        {
            return b;
        }

        public final void run()
        {
            if (a)
            {
                b = c.c();
                return;
            } else
            {
                c.b();
                return;
            }
        }

        public a(i l)
        {
            b = false;
            c = l;
            a = true;
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        private static final b d[];

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(crittercism/android/i$b, s);
        }

        public static b[] values()
        {
            return (b[])d.clone();
        }

        static 
        {
            a = new b("SOCKET_MONITOR", 0);
            b = new b("STREAM_MONITOR", 1);
            c = new b("NONE", 2);
            b ab1[] = new b[3];
            ab1[0] = a;
            ab1[1] = b;
            ab1[2] = c;
            d = ab1;
        }

        private b(String s, int l)
        {
            super(s, l);
        }
    }


    public static final v.a a;
    public static b b;
    private static final List c;
    private ad d;
    private ab e;
    private ab f;
    private v g;
    private e h;
    private d i;
    private b j;
    private v.a k;

    public i(e e1, d d1)
    {
        j = b;
        k = a;
        h = e1;
        i = d1;
    }

    private static void a(String s, Throwable throwable)
    {
        synchronized (c)
        {
            c.add(throwable);
        }
        dg.c("Crittercism", s);
    }

    private static void a(javax.net.ssl.SSLSocketFactory sslsocketfactory)
    {
        SSLSocketFactory sslsocketfactory1 = SSLSocketFactory.getSocketFactory();
        crittercism.android.j.a(org/apache/http/conn/ssl/SSLSocketFactory, javax/net/ssl/SSLSocketFactory).set(sslsocketfactory1, sslsocketfactory);
    }

    private static boolean a(SocketImplFactory socketimplfactory)
    {
        Field field;
        try
        {
            field = crittercism.android.j.a(java/net/Socket, java/net/SocketImplFactory);
        }
        catch (by by1)
        {
            a("Unable to install OPTIMZ for http connections", ((Throwable) (by1)));
            return false;
        }
        try
        {
            field.setAccessible(true);
            field.set(null, socketimplfactory);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            a("Unable to install OPTIMZ for http connections", ((Throwable) (illegalargumentexception)));
            return true;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            a("Unable to install OPTIMZ for http connections", ((Throwable) (illegalaccessexception)));
            return false;
        }
        catch (NullPointerException nullpointerexception)
        {
            a("Unable to install OPTIMZ for http connections", ((Throwable) (nullpointerexception)));
            return false;
        }
        return true;
    }

    public static void d()
    {
        List list = c;
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); dg.a((Throwable)iterator.next())) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        throw exception;
        c.clear();
        list;
        JVM INSTR monitorexit ;
    }

    private boolean e()
    {
        a a1 = new a(this);
        Thread thread = new Thread(a1);
        thread.start();
        try
        {
            thread.join();
        }
        catch (InterruptedException interruptedexception) { }
        return a1.a();
    }

    private boolean f()
    {
        boolean flag;
        try
        {
            g = new v(k, h, i);
            flag = g.b();
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return false;
        }
        return flag;
    }

    private static javax.net.ssl.SSLSocketFactory g()
    {
        SSLSocketFactory sslsocketfactory = SSLSocketFactory.getSocketFactory();
        return (javax.net.ssl.SSLSocketFactory)crittercism.android.j.a(org/apache/http/conn/ssl/SSLSocketFactory, javax/net/ssl/SSLSocketFactory).get(sslsocketfactory);
    }

    private boolean h()
    {
        SocketImplFactory socketimplfactory;
        SocketImpl socketimpl;
        try
        {
            socketimplfactory = (SocketImplFactory)crittercism.android.j.a(crittercism.android.j.a(java/net/Socket, java/net/SocketImplFactory), null);
        }
        catch (by by1)
        {
            a("Unable to install OPTIMZ for http connections", by1);
            return false;
        }
        if (socketimplfactory != null) goto _L2; else goto _L1
_L1:
        socketimpl = (SocketImpl)crittercism.android.j.a(crittercism.android.j.a(java/net/Socket, java/net/SocketImpl), new Socket());
        if (socketimpl == null)
        {
            try
            {
                throw new by("SocketImpl was null");
            }
            catch (by by3)
            {
                a("Unable to install OPTIMZ for http connections", by3);
            }
            return false;
        }
        Class class2 = socketimpl.getClass();
        Class class1 = class2;
_L6:
        if (socketimplfactory == null) goto _L4; else goto _L3
_L3:
        boolean flag;
        ad ad1;
        ad ad2;
        try
        {
            ad2 = new ad(socketimplfactory, h, i);
            a(ad2);
        }
        catch (by by2)
        {
            a("Unable to install OPTIMZ for http connections", by2);
            return false;
        }
        catch (IOException ioexception)
        {
            a("Unable to install OPTIMZ for http connections", ioexception);
            return false;
        }
        ad1 = ad2;
        d = ad1;
        return true;
_L2:
        flag = socketimplfactory instanceof ad;
        class1 = null;
        if (flag)
        {
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (class1 == null)
        {
            break MISSING_BLOCK_LABEL_184;
        }
        ad1 = new ad(class1, h, i);
        Socket.setSocketImplFactory(ad1);
        break MISSING_BLOCK_LABEL_119;
        a("Unable to install OPTIMZ for http connections", new NullPointerException("Null SocketImpl"));
        return false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final boolean a()
    {
        boolean flag = false;
        if (!ac.c())
        {
            a("Unable to install OPTMZ", ac.d());
        } else
        {
            boolean flag1;
            boolean flag2;
            try
            {
                ac.e();
            }
            catch (bx bx1)
            {
                dg.a("Crittercism", bx1.toString(), bx1);
                return false;
            }
            flag1 = false | h();
            if (android.os.Build.VERSION.SDK_INT >= 19)
            {
                flag2 = flag1 | e();
            } else
            {
                flag2 = flag1 | c();
            }
            if (android.os.Build.VERSION.SDK_INT >= 17)
            {
                flag = flag2 | y.a(h, i);
            } else
            {
                flag = flag2;
            }
            if (j == b.a)
            {
                javax.net.ssl.SSLSocketFactory sslsocketfactory = HttpsURLConnection.getDefaultSSLSocketFactory();
                if (sslsocketfactory instanceof ab)
                {
                    e = (ab)sslsocketfactory;
                } else
                {
                    e = new ab(sslsocketfactory, h, i);
                    HttpsURLConnection.setDefaultSSLSocketFactory(e);
                }
                return flag | true;
            }
            if (j == b.b)
            {
                return flag | f();
            }
        }
        return flag;
    }

    public final void b()
    {
        try
        {
            javax.net.ssl.SSLSocketFactory sslsocketfactory = g();
            if (sslsocketfactory instanceof ab)
            {
                a(((ab)sslsocketfactory).a());
            }
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            a("Unable to install OPTIMZ for SSL HttpClient connections", illegalargumentexception);
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            a("Unable to install OPTIMZ for SSL HttpClient connections", illegalaccessexception);
            return;
        }
        catch (by by1)
        {
            a("Unable to install OPTIMZ for SSL HttpClient connections", by1);
            return;
        }
        f = null;
    }

    public final boolean c()
    {
        javax.net.ssl.SSLSocketFactory sslsocketfactory;
        try
        {
            sslsocketfactory = g();
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            a("Unable to install OPTIMZ for SSL HttpClient connections", illegalargumentexception);
            return false;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            a("Unable to install OPTIMZ for SSL HttpClient connections", illegalaccessexception);
            return false;
        }
        catch (ClassCastException classcastexception)
        {
            a("Unable to install OPTIMZ for SSL HttpClient connections", classcastexception);
            return false;
        }
        catch (by by1)
        {
            a("Unable to install OPTIMZ for SSL HttpClient connections", by1);
            return false;
        }
        if (sslsocketfactory == null)
        {
            a("Unable to install OPTIMZ for SSL HttpClient connections", new NullPointerException("Delegate factory was null"));
        } else
        if (!(sslsocketfactory instanceof ab))
        {
            ab ab1 = new ab(sslsocketfactory, h, i);
            try
            {
                a(ab1);
            }
            catch (IllegalArgumentException illegalargumentexception1)
            {
                a("Unable to install OPTIMZ for SSL HttpClient connections", illegalargumentexception1);
                return false;
            }
            catch (IllegalAccessException illegalaccessexception1)
            {
                a("Unable to install OPTIMZ for SSL HttpClient connections", illegalaccessexception1);
                return false;
            }
            catch (by by2)
            {
                a("Unable to install OPTIMZ for SSL HttpClient connections", by2);
                return false;
            }
            f = ab1;
            return true;
        }
        return false;
    }

    static 
    {
        a = v.a.b;
        b = b.c;
        c = new LinkedList();
        URL url = new URL("https://www.google.com");
        if (((URLStreamHandler)crittercism.android.j.a(crittercism.android.j.a(java/net/URL, java/net/URLStreamHandler), url)).getClass().getName().contains("okhttp") && android.os.Build.VERSION.SDK_INT >= 19)
        {
            b = b.a;
            break MISSING_BLOCK_LABEL_89;
        }
        try
        {
            b = b.b;
        }
        catch (Exception exception)
        {
            b = b.c;
        }
    }
}
