// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketImpl;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;

// Referenced classes of package crittercism.android:
//            ae, j, bx, c, 
//            d, bb, e, x, 
//            dg, bz, w

public final class ac extends SocketImpl
    implements ae
{

    private static Field a;
    private static Field b;
    private static Field c;
    private static Field d;
    private static Method e[];
    private static boolean f;
    private static Throwable g;
    private final Queue h = new LinkedList();
    private e i;
    private d j;
    private SocketImpl k;
    private w l;
    private x m;

    public ac(e e1, d d1, SocketImpl socketimpl)
    {
        if (e1 == null)
        {
            throw new NullPointerException("dispatch was null");
        }
        if (socketimpl == null)
        {
            throw new NullPointerException("delegate was null");
        } else
        {
            i = e1;
            j = d1;
            k = socketimpl;
            f();
            return;
        }
    }

    private c a(boolean flag)
    {
        c c1 = new c();
        InetAddress inetaddress = getInetAddress();
        if (inetaddress != null)
        {
            c1.a(inetaddress);
        }
        int i1 = getPort();
        if (i1 > 0)
        {
            c1.a(i1);
        }
        if (flag)
        {
            c1.a(k.a.a);
        }
        if (j != null)
        {
            c1.j = j.a();
        }
        if (bb.b())
        {
            c1.a(bb.a());
        }
        return c1;
    }

    private transient Object a(int i1, Object aobj[])
    {
        Object obj;
        try
        {
            a.set(k, address);
            b.set(k, fd);
            c.setInt(k, localport);
            d.setInt(k, port);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new bx(illegalargumentexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new bx(illegalaccessexception);
        }
        obj = e[i1].invoke(k, aobj);
        f();
        return obj;
        IllegalArgumentException illegalargumentexception1;
        illegalargumentexception1;
        throw new bx(illegalargumentexception1);
        Exception exception1;
        exception1;
        f();
        throw exception1;
        IllegalAccessException illegalaccessexception1;
        illegalaccessexception1;
        throw new bx(illegalaccessexception1);
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        Throwable throwable = invocationtargetexception.getTargetException();
        if (throwable != null)
        {
            break MISSING_BLOCK_LABEL_157;
        }
        throw new bx(invocationtargetexception);
        if (throwable instanceof Exception)
        {
            throw (Exception)throwable;
        }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        } else
        {
            throw new bx(throwable);
        }
        ClassCastException classcastexception;
        classcastexception;
        throw new bx(classcastexception);
        Exception exception;
        exception;
        throw new bx(exception);
    }

    private transient Object b(int i1, Object aobj[])
    {
        Object obj;
        try
        {
            obj = a(i1, aobj);
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

    private transient Object c(int i1, Object aobj[])
    {
        Object obj;
        try
        {
            obj = a(i1, aobj);
        }
        catch (IOException ioexception)
        {
            throw ioexception;
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

    public static boolean c()
    {
        return f;
    }

    public static Throwable d()
    {
        return g;
    }

    public static void e()
    {
        if (!f)
        {
            throw new bx(g);
        }
        SocketImpl socketimpl = new SocketImpl() {

            protected final void accept(SocketImpl socketimpl1)
            {
            }

            protected final int available()
            {
                return 0;
            }

            protected final void bind(InetAddress inetaddress, int i1)
            {
            }

            protected final void close()
            {
            }

            protected final void connect(String s, int i1)
            {
            }

            protected final void connect(InetAddress inetaddress, int i1)
            {
            }

            protected final void connect(SocketAddress socketaddress, int i1)
            {
            }

            protected final void create(boolean flag)
            {
            }

            protected final FileDescriptor getFileDescriptor()
            {
                return null;
            }

            protected final InetAddress getInetAddress()
            {
                return null;
            }

            protected final InputStream getInputStream()
            {
                return null;
            }

            protected final int getLocalPort()
            {
                return 0;
            }

            public final Object getOption(int i1)
            {
                return null;
            }

            protected final OutputStream getOutputStream()
            {
                return null;
            }

            protected final int getPort()
            {
                return 0;
            }

            protected final void listen(int i1)
            {
            }

            protected final void sendUrgentData(int i1)
            {
            }

            public final void setOption(int i1, Object obj1)
            {
            }

            protected final void setPerformancePreferences(int i1, int j1, int k1)
            {
            }

            protected final void shutdownInput()
            {
            }

            protected final void shutdownOutput()
            {
            }

            protected final boolean supportsUrgentData()
            {
                return false;
            }

            public final String toString()
            {
                return null;
            }

        };
        ac ac1 = new ac(new e(new Executor() {

            public final void execute(Runnable runnable)
            {
            }

        }), null, socketimpl);
        Object obj = new Object();
        try
        {
            ac1.setOption(0, obj);
            ac1.getOption(0);
            ac1.sendUrgentData(0);
            ac1.listen(0);
            ac1.getOutputStream();
            ac1.getInputStream();
            ac1.create(false);
            ac1.connect(((SocketAddress) (null)), 0);
            ac1.connect(((InetAddress) (null)), 0);
            ac1.connect(((String) (null)), 0);
            ac1.close();
            ac1.bind(null, 0);
            ac1.available();
            ac1.accept(ac1);
            ac1.getFileDescriptor();
            ac1.getInetAddress();
            ac1.getLocalPort();
            ac1.getPort();
            ac1.setPerformancePreferences(0, 0, 0);
            ac1.shutdownInput();
            ac1.shutdownOutput();
            ac1.supportsUrgentData();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
        catch (bx bx1)
        {
            throw bx1;
        }
        catch (Throwable throwable)
        {
            throw new bx(throwable);
        }
    }

    private void f()
    {
        try
        {
            address = (InetAddress)a.get(k);
            fd = (FileDescriptor)b.get(k);
            localport = c.getInt(k);
            port = d.getInt(k);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new bx(illegalargumentexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new bx(illegalaccessexception);
        }
    }

    public final c a()
    {
        return a(true);
    }

    public final void a(c c1)
    {
        synchronized (h)
        {
            h.add(c1);
        }
    }

    public final void accept(SocketImpl socketimpl)
    {
        c(0, new Object[] {
            socketimpl
        });
    }

    public final int available()
    {
        Integer integer = (Integer)c(1, new Object[0]);
        if (integer == null)
        {
            throw new bx("Received a null Integer");
        } else
        {
            return integer.intValue();
        }
    }

    public final c b()
    {
        c c1;
        synchronized (h)
        {
            c1 = (c)h.poll();
        }
        return c1;
    }

    public final void bind(InetAddress inetaddress, int i1)
    {
        Object aobj[] = new Object[2];
        aobj[0] = inetaddress;
        aobj[1] = Integer.valueOf(i1);
        c(2, aobj);
    }

    public final void close()
    {
        c(3, new Object[0]);
        try
        {
            if (m != null)
            {
                m.d();
            }
            return;
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            dg.a(throwable);
        }
    }

    public final void connect(String s, int i1)
    {
        try
        {
            Object aobj[] = new Object[2];
            aobj[0] = s;
            aobj[1] = Integer.valueOf(i1);
            c(6, aobj);
            return;
        }
        catch (IOException ioexception)
        {
            if (s != null)
            {
                try
                {
                    c c1 = a(false);
                    c1.f();
                    c1.a(s);
                    c1.a(i1);
                    c1.g = bz.a(ioexception);
                    i.a(c1, c.a.i);
                }
                catch (ThreadDeath threaddeath)
                {
                    throw threaddeath;
                }
                catch (Throwable throwable)
                {
                    dg.a(throwable);
                }
            }
        }
        throw ioexception;
    }

    public final void connect(InetAddress inetaddress, int i1)
    {
        try
        {
            Object aobj[] = new Object[2];
            aobj[0] = inetaddress;
            aobj[1] = Integer.valueOf(i1);
            c(4, aobj);
            return;
        }
        catch (IOException ioexception)
        {
            if (inetaddress != null)
            {
                try
                {
                    c c1 = a(false);
                    c1.f();
                    c1.a(inetaddress);
                    c1.a(i1);
                    c1.g = bz.a(ioexception);
                    i.a(c1, c.a.i);
                }
                catch (ThreadDeath threaddeath)
                {
                    throw threaddeath;
                }
                catch (Throwable throwable)
                {
                    dg.a(throwable);
                }
            }
        }
        throw ioexception;
    }

    public final void connect(SocketAddress socketaddress, int i1)
    {
        try
        {
            Object aobj[] = new Object[2];
            aobj[0] = socketaddress;
            aobj[1] = Integer.valueOf(i1);
            c(5, aobj);
            return;
        }
        catch (IOException ioexception)
        {
            if (socketaddress != null)
            {
                try
                {
                    if (socketaddress instanceof InetSocketAddress)
                    {
                        c c1 = a(false);
                        InetSocketAddress inetsocketaddress = (InetSocketAddress)socketaddress;
                        c1.f();
                        c1.a(inetsocketaddress.getAddress());
                        c1.a(inetsocketaddress.getPort());
                        c1.g = bz.a(ioexception);
                        i.a(c1, c.a.i);
                    }
                }
                catch (ThreadDeath threaddeath)
                {
                    throw threaddeath;
                }
                catch (Throwable throwable)
                {
                    dg.a(throwable);
                }
            }
        }
        throw ioexception;
    }

    public final void create(boolean flag)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.valueOf(flag);
        c(7, aobj);
    }

    public final FileDescriptor getFileDescriptor()
    {
        return (FileDescriptor)b(8, new Object[0]);
    }

    public final InetAddress getInetAddress()
    {
        return (InetAddress)b(9, new Object[0]);
    }

    public final InputStream getInputStream()
    {
        InputStream inputstream;
        inputstream = (InputStream)c(10, new Object[0]);
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        x x1;
        if (m != null && m.a(inputstream))
        {
            return m;
        }
        m = new x(this, inputstream, i);
        x1 = m;
        return x1;
        ThreadDeath threaddeath;
        threaddeath;
        throw threaddeath;
        Throwable throwable;
        throwable;
        dg.a(throwable);
        return inputstream;
    }

    public final int getLocalPort()
    {
        return ((Integer)b(11, new Object[0])).intValue();
    }

    public final Object getOption(int i1)
    {
        return k.getOption(i1);
    }

    public final OutputStream getOutputStream()
    {
        OutputStream outputstream;
        outputstream = (OutputStream)c(12, new Object[0]);
        if (outputstream == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        w w1;
        if (l != null && l.a(outputstream))
        {
            return l;
        }
        l = new w(this, outputstream);
        w1 = l;
        return w1;
        ThreadDeath threaddeath;
        threaddeath;
        throw threaddeath;
        Throwable throwable;
        throwable;
        dg.a(throwable);
        return outputstream;
    }

    public final int getPort()
    {
        return ((Integer)b(13, new Object[0])).intValue();
    }

    public final void listen(int i1)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i1);
        c(14, aobj);
    }

    public final void sendUrgentData(int i1)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i1);
        c(15, aobj);
    }

    public final void setOption(int i1, Object obj)
    {
        k.setOption(i1, obj);
    }

    public final void setPerformancePreferences(int i1, int j1, int k1)
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(i1);
        aobj[1] = Integer.valueOf(j1);
        aobj[2] = Integer.valueOf(k1);
        b(16, aobj);
    }

    public final void shutdownInput()
    {
        c(17, new Object[0]);
    }

    public final void shutdownOutput()
    {
        c(18, new Object[0]);
    }

    public final boolean supportsUrgentData()
    {
        return ((Boolean)b(19, new Object[0])).booleanValue();
    }

    public final String toString()
    {
        return k.toString();
    }

    static 
    {
        e = new Method[20];
        f = false;
        g = null;
        Field field;
        AccessibleObject aaccessibleobject[];
        a = java/net/SocketImpl.getDeclaredField("address");
        b = java/net/SocketImpl.getDeclaredField("fd");
        c = java/net/SocketImpl.getDeclaredField("localport");
        d = java/net/SocketImpl.getDeclaredField("port");
        field = a;
        aaccessibleobject = new AccessibleObject[3];
        aaccessibleobject[0] = b;
        aaccessibleobject[1] = c;
        aaccessibleobject[2] = d;
        if (field == null)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        field.setAccessible(true);
        if (aaccessibleobject.length > 0)
        {
            crittercism.android.j.a(aaccessibleobject);
        }
        e[0] = java/net/SocketImpl.getDeclaredMethod("accept", new Class[] {
            java/net/SocketImpl
        });
        e[1] = java/net/SocketImpl.getDeclaredMethod("available", new Class[0]);
        Method amethod[] = e;
        Class aclass[] = new Class[2];
        aclass[0] = java/net/InetAddress;
        aclass[1] = Integer.TYPE;
        amethod[2] = java/net/SocketImpl.getDeclaredMethod("bind", aclass);
        e[3] = java/net/SocketImpl.getDeclaredMethod("close", new Class[0]);
        Method amethod1[] = e;
        Class aclass1[] = new Class[2];
        aclass1[0] = java/net/InetAddress;
        aclass1[1] = Integer.TYPE;
        amethod1[4] = java/net/SocketImpl.getDeclaredMethod("connect", aclass1);
        Method amethod2[] = e;
        Class aclass2[] = new Class[2];
        aclass2[0] = java/net/SocketAddress;
        aclass2[1] = Integer.TYPE;
        amethod2[5] = java/net/SocketImpl.getDeclaredMethod("connect", aclass2);
        Method amethod3[] = e;
        Class aclass3[] = new Class[2];
        aclass3[0] = java/lang/String;
        aclass3[1] = Integer.TYPE;
        amethod3[6] = java/net/SocketImpl.getDeclaredMethod("connect", aclass3);
        Method amethod4[] = e;
        Class aclass4[] = new Class[1];
        aclass4[0] = Boolean.TYPE;
        amethod4[7] = java/net/SocketImpl.getDeclaredMethod("create", aclass4);
        e[8] = java/net/SocketImpl.getDeclaredMethod("getFileDescriptor", new Class[0]);
        e[9] = java/net/SocketImpl.getDeclaredMethod("getInetAddress", new Class[0]);
        e[10] = java/net/SocketImpl.getDeclaredMethod("getInputStream", new Class[0]);
        e[11] = java/net/SocketImpl.getDeclaredMethod("getLocalPort", new Class[0]);
        e[12] = java/net/SocketImpl.getDeclaredMethod("getOutputStream", new Class[0]);
        e[13] = java/net/SocketImpl.getDeclaredMethod("getPort", new Class[0]);
        Method amethod5[] = e;
        Class aclass5[] = new Class[1];
        aclass5[0] = Integer.TYPE;
        amethod5[14] = java/net/SocketImpl.getDeclaredMethod("listen", aclass5);
        Method amethod6[] = e;
        Class aclass6[] = new Class[1];
        aclass6[0] = Integer.TYPE;
        amethod6[15] = java/net/SocketImpl.getDeclaredMethod("sendUrgentData", aclass6);
        Method amethod7[] = e;
        Class aclass7[] = new Class[3];
        aclass7[0] = Integer.TYPE;
        aclass7[1] = Integer.TYPE;
        aclass7[2] = Integer.TYPE;
        amethod7[16] = java/net/SocketImpl.getDeclaredMethod("setPerformancePreferences", aclass7);
        e[17] = java/net/SocketImpl.getDeclaredMethod("shutdownInput", new Class[0]);
        e[18] = java/net/SocketImpl.getDeclaredMethod("shutdownOutput", new Class[0]);
        e[19] = java/net/SocketImpl.getDeclaredMethod("supportsUrgentData", new Class[0]);
        crittercism.android.j.a(e);
        f = true;
        return;
        SecurityException securityexception;
        securityexception;
        f = false;
        g = securityexception;
        return;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        int i1;
        f = false;
        i1 = 0;
_L3:
        if (i1 >= 20)
        {
            break MISSING_BLOCK_LABEL_780;
        }
        if (e[i1] != null) goto _L2; else goto _L1
_L1:
        g = new bx((new StringBuilder("Bad method: ")).append(i1).toString(), nosuchmethodexception);
        return;
_L2:
        i1++;
          goto _L3
        NoSuchFieldException nosuchfieldexception;
        nosuchfieldexception;
        String s;
        f = false;
        s = "unknown";
        if (a != null) goto _L5; else goto _L4
_L4:
        s = "address";
_L7:
        g = new bx((new StringBuilder("No such field: ")).append(s).toString(), nosuchfieldexception);
        return;
_L5:
        if (b == null)
        {
            s = "fd";
        } else
        if (c == null)
        {
            s = "localport";
        } else
        if (d == null)
        {
            s = "port";
        }
        if (true) goto _L7; else goto _L6
_L6:
        Throwable throwable;
        throwable;
        f = false;
        g = throwable;
        return;
        i1 = 20;
          goto _L1
    }
}
