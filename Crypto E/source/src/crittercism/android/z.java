// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.KeyManagementException;
import java.security.SecureRandom;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContextSpi;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

// Referenced classes of package crittercism.android:
//            j, dg, bx, ab, 
//            e, d

public final class z extends SSLContextSpi
{

    private static Method a[];
    private static boolean b = false;
    private SSLContextSpi c;
    private e d;
    private d e;

    private z()
    {
    }

    private z(SSLContextSpi sslcontextspi, e e1, d d1)
    {
        c = sslcontextspi;
        d = e1;
        e = d1;
    }

    public static z a(SSLContextSpi sslcontextspi, e e1, d d1)
    {
        if (!b)
        {
            return null;
        } else
        {
            return new z(sslcontextspi, e1, d1);
        }
    }

    private transient Object a(int i, Object aobj[])
    {
        if (c == null)
        {
            return null;
        }
        Object obj;
        try
        {
            obj = a[i].invoke(c, aobj);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new bx(illegalargumentexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new bx(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            Throwable throwable = invocationtargetexception.getTargetException();
            if (throwable == null)
            {
                throw new bx(invocationtargetexception);
            }
            if (throwable instanceof Exception)
            {
                throw (Exception)throwable;
            }
            if (throwable instanceof Error)
            {
                throw (Error)throwable;
            } else
            {
                throw new bx(invocationtargetexception);
            }
        }
        catch (ClassCastException classcastexception)
        {
            throw new bx(classcastexception);
        }
        return obj;
    }

    private transient Object a(Object aobj[])
    {
        Object obj;
        try
        {
            obj = a(6, aobj);
        }
        catch (RuntimeException runtimeexception)
        {
            throw runtimeexception;
        }
        catch (KeyManagementException keymanagementexception)
        {
            throw keymanagementexception;
        }
        catch (Exception exception)
        {
            throw new bx(exception);
        }
        return obj;
    }

    public static boolean a()
    {
        return b;
    }

    private transient Object b(int i, Object aobj[])
    {
        Object obj;
        try
        {
            obj = a(i, aobj);
        }
        catch (RuntimeException runtimeexception)
        {
            throw runtimeexception;
        }
        catch (Exception exception)
        {
            throw new bx(exception);
        }
        return obj;
    }

    protected final SSLEngine engineCreateSSLEngine()
    {
        return (SSLEngine)b(0, new Object[0]);
    }

    protected final SSLEngine engineCreateSSLEngine(String s, int i)
    {
        Object aobj[] = new Object[2];
        aobj[0] = s;
        aobj[1] = Integer.valueOf(i);
        return (SSLEngine)b(1, aobj);
    }

    protected final SSLSessionContext engineGetClientSessionContext()
    {
        return (SSLSessionContext)b(2, new Object[0]);
    }

    protected final SSLSessionContext engineGetServerSessionContext()
    {
        return (SSLSessionContext)b(3, new Object[0]);
    }

    protected final SSLServerSocketFactory engineGetServerSocketFactory()
    {
        return (SSLServerSocketFactory)b(4, new Object[0]);
    }

    protected final SSLSocketFactory engineGetSocketFactory()
    {
        Object obj = (SSLSocketFactory)b(5, new Object[0]);
        if (obj != null)
        {
            ab ab1;
            try
            {
                ab1 = new ab(((SSLSocketFactory) (obj)), d, e);
            }
            catch (ThreadDeath threaddeath)
            {
                throw threaddeath;
            }
            catch (Throwable throwable)
            {
                dg.a(throwable);
                return ((SSLSocketFactory) (obj));
            }
            obj = ab1;
        }
        return ((SSLSocketFactory) (obj));
    }

    protected final void engineInit(KeyManager akeymanager[], TrustManager atrustmanager[], SecureRandom securerandom)
    {
        a(new Object[] {
            akeymanager, atrustmanager, securerandom
        });
    }

    public final boolean equals(Object obj)
    {
        SSLContextSpi _tmp = c;
        return c.equals(obj);
    }

    public final int hashCode()
    {
        SSLContextSpi _tmp = c;
        return c.hashCode();
    }

    public final String toString()
    {
        SSLContextSpi _tmp = c;
        return c.toString();
    }

    static 
    {
        a = new Method[7];
        try
        {
            a[0] = javax/net/ssl/SSLContextSpi.getDeclaredMethod("engineCreateSSLEngine", new Class[0]);
            Method amethod[] = a;
            Class aclass[] = new Class[2];
            aclass[0] = java/lang/String;
            aclass[1] = Integer.TYPE;
            amethod[1] = javax/net/ssl/SSLContextSpi.getDeclaredMethod("engineCreateSSLEngine", aclass);
            a[2] = javax/net/ssl/SSLContextSpi.getDeclaredMethod("engineGetClientSessionContext", new Class[0]);
            a[3] = javax/net/ssl/SSLContextSpi.getDeclaredMethod("engineGetServerSessionContext", new Class[0]);
            a[4] = javax/net/ssl/SSLContextSpi.getDeclaredMethod("engineGetServerSocketFactory", new Class[0]);
            a[5] = javax/net/ssl/SSLContextSpi.getDeclaredMethod("engineGetSocketFactory", new Class[0]);
            a[6] = javax/net/ssl/SSLContextSpi.getDeclaredMethod("engineInit", new Class[] {
                [Ljavax/net/ssl/KeyManager;, [Ljavax/net/ssl/TrustManager;, java/security/SecureRandom
            });
            j.a(a);
            z z1 = new z(new z(), null, null);
            z1.engineCreateSSLEngine();
            z1.engineCreateSSLEngine(null, 0);
            z1.engineGetClientSessionContext();
            z1.engineGetServerSessionContext();
            z1.engineGetServerSocketFactory();
            z1.engineGetSocketFactory();
            z1.engineInit(null, null, null);
            b = true;
        }
        catch (Throwable throwable)
        {
            dg.c();
            b = false;
        }
    }
}
