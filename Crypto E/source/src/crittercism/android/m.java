// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

// Referenced classes of package crittercism.android:
//            l, dj, v, dg, 
//            e, d

public abstract class m extends URLStreamHandler
{

    public static final String a[] = {
        "java.net.URL", "int", "java.net.Proxy"
    };
    public static final String b[] = {
        "java.net.URL", "int"
    };
    e c;
    d d;
    boolean e;
    private Constructor f;
    private Constructor g;

    public m(e e1, d d1, String as[])
    {
        this(e1, d1, as, a, b);
    }

    private m(e e1, d d1, String as[], String as1[], String as2[])
    {
        int i;
        f = null;
        g = null;
        c = e1;
        d = d1;
        e = true;
        i = 0;
_L2:
        if (i >= as.length)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        f = l.a(as[i], as2);
        g = l.a(as[i], as1);
        f.setAccessible(true);
        g.setAccessible(true);
        if (f == null || g == null)
        {
            throw new ClassNotFoundException("Couldn't find suitable connection implementations");
        }
        break; /* Loop/switch isn't completed */
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        f = null;
        f = null;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (!b())
        {
            throw new ClassNotFoundException("Unable to open test connections");
        } else
        {
            return;
        }
    }

    private URLConnection a(URL url, Proxy proxy)
    {
        String s = (new StringBuilder("Unable to setup network statistics on a ")).append(a()).append(" connection due to ").toString();
        dj.e;
        if (proxy != null) goto _L2; else goto _L1
_L1:
        URLConnection urlconnection1;
        Constructor constructor = f;
        Object aobj[] = new Object[2];
        aobj[0] = url;
        aobj[1] = Integer.valueOf(getDefaultPort());
        urlconnection1 = (URLConnection)constructor.newInstance(aobj);
        IOException ioexception;
        URLConnection urlconnection;
        urlconnection = urlconnection1;
        ioexception = null;
_L3:
        if (ioexception != null)
        {
            if (e)
            {
                e = false;
                v v1 = v.a();
                InvocationTargetException invocationtargetexception;
                boolean flag;
                IllegalAccessException illegalaccessexception;
                InstantiationException instantiationexception;
                IllegalArgumentException illegalargumentexception;
                Constructor constructor1;
                Object aobj1[];
                URLConnection urlconnection2;
                if (v1 != null)
                {
                    flag = v1.c();
                } else
                {
                    flag = false;
                }
                dg.b("Crittercism", "Stopping network statistics monitoring");
                if (flag)
                {
                    return (new URL(url.toExternalForm())).openConnection();
                }
            } else
            {
                throw ioexception;
            }
        }
        break MISSING_BLOCK_LABEL_367;
_L2:
        constructor1 = g;
        aobj1 = new Object[3];
        aobj1[0] = url;
        aobj1[1] = Integer.valueOf(getDefaultPort());
        aobj1[2] = proxy;
        urlconnection2 = (URLConnection)constructor1.newInstance(aobj1);
        urlconnection = urlconnection2;
        ioexception = null;
          goto _L3
        illegalargumentexception;
        (new StringBuilder()).append(s).append("bad arguments");
        dg.b();
        ioexception = new IOException(illegalargumentexception.getMessage());
        urlconnection = null;
          goto _L3
        instantiationexception;
        (new StringBuilder()).append(s).append("an instantiation problem");
        dg.b();
        ioexception = new IOException(instantiationexception.getMessage());
        urlconnection = null;
          goto _L3
        illegalaccessexception;
        (new StringBuilder()).append(s).append("security restrictions");
        dg.b();
        ioexception = new IOException(illegalaccessexception.getMessage());
        urlconnection = null;
          goto _L3
        invocationtargetexception;
        (new StringBuilder()).append(s).append("an invocation problem");
        dg.b();
        ioexception = new IOException(invocationtargetexception.getMessage());
        urlconnection = null;
          goto _L3
        return urlconnection;
    }

    private boolean b()
    {
        Exception exception;
        e = false;
        try
        {
            openConnection(new URL("http://www.google.com"));
        }
        catch (IOException ioexception)
        {
            e = true;
            return false;
        }
        finally
        {
            e = true;
        }
        e = true;
        return true;
        throw exception;
    }

    protected abstract String a();

    protected abstract int getDefaultPort();

    protected URLConnection openConnection(URL url)
    {
        return a(url, null);
    }

    protected URLConnection openConnection(URL url, Proxy proxy)
    {
        if (url == null || proxy == null)
        {
            throw new IllegalArgumentException("url == null || proxy == null");
        } else
        {
            return a(url, proxy);
        }
    }

}
