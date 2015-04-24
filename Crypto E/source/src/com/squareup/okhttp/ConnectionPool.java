// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.squareup.okhttp:
//            Connection, Route, Address

public final class ConnectionPool
{

    private static final ConnectionPool a;
    private final int b;
    private final long c;
    private final LinkedList d = new LinkedList();
    private Executor e;
    private final Runnable f = new Runnable() {

        final ConnectionPool a;

        public void run()
        {
            ConnectionPool.a(a);
        }

            
            {
                a = ConnectionPool.this;
                super();
            }
    };

    public ConnectionPool(int i, long l)
    {
        e = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.a("OkHttp ConnectionPool", true));
        b = i;
        c = 1000L * (l * 1000L);
    }

    public static ConnectionPool a()
    {
        return a;
    }

    static void a(ConnectionPool connectionpool)
    {
        connectionpool.c();
    }

    private void c()
    {
        while (b()) ;
    }

    private void c(Connection connection)
    {
        boolean flag = d.isEmpty();
        d.addFirst(connection);
        if (flag)
        {
            e.execute(f);
            return;
        } else
        {
            notifyAll();
            return;
        }
    }

    public Connection a(Address address)
    {
        this;
        JVM INSTR monitorenter ;
        ListIterator listiterator = d.listIterator(d.size());
_L1:
        Connection connection;
        boolean flag;
        do
        {
            if (!listiterator.hasPrevious())
            {
                break MISSING_BLOCK_LABEL_177;
            }
            connection = (Connection)listiterator.previous();
        } while (!connection.c().a().equals(address) || !connection.e() || System.nanoTime() - connection.i() >= c);
        listiterator.remove();
        flag = connection.k();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        Platform.a().a(connection.d());
        Exception exception;
        SocketException socketexception;
        for (; connection == null; connection = null)
        {
            break MISSING_BLOCK_LABEL_128;
        }

        if (connection.k())
        {
            d.addFirst(connection);
        }
        this;
        JVM INSTR monitorexit ;
        return connection;
        socketexception;
        Util.a(connection.d());
        Platform.a().a((new StringBuilder()).append("Unable to tagSocket(): ").append(socketexception).toString());
          goto _L1
        exception;
        throw exception;
    }

    void a(Connection connection)
    {
        while (connection.k() || !connection.a()) 
        {
            return;
        }
        if (!connection.e())
        {
            Util.a(connection.d());
            return;
        }
        Exception exception;
        try
        {
            Platform.a().b(connection.d());
        }
        catch (SocketException socketexception)
        {
            Platform.a().a((new StringBuilder()).append("Unable to untagSocket(): ").append(socketexception).toString());
            Util.a(connection.d());
            return;
        }
        this;
        JVM INSTR monitorenter ;
        c(connection);
        connection.m();
        connection.g();
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void b(Connection connection)
    {
        if (!connection.k())
        {
            throw new IllegalArgumentException();
        }
        if (!connection.e())
        {
            return;
        }
        this;
        JVM INSTR monitorenter ;
        c(connection);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    boolean b()
    {
        this;
        JVM INSTR monitorenter ;
        if (!d.isEmpty())
        {
            break MISSING_BLOCK_LABEL_16;
        }
        this;
        JVM INSTR monitorexit ;
        return false;
        ArrayList arraylist = new ArrayList();
        int i = 0;
        long l;
        long l1;
        ListIterator listiterator;
        l = System.nanoTime();
        l1 = c;
        listiterator = d.listIterator(d.size());
_L13:
        if (!listiterator.hasPrevious()) goto _L2; else goto _L1
_L1:
        Connection connection1;
        long l3;
        connection1 = (Connection)listiterator.previous();
        l3 = (connection1.i() + c) - l;
        if (l3 <= 0L) goto _L4; else goto _L3
_L3:
        if (connection1.e()) goto _L5; else goto _L4
_L4:
        listiterator.remove();
        arraylist.add(connection1);
        int j1;
        long l5;
        long l4 = l1;
        j1 = i;
        l5 = l4;
          goto _L6
_L5:
        if (!connection1.h()) goto _L8; else goto _L7
_L7:
        int k1 = i + 1;
        l5 = Math.min(l1, l3);
        j1 = k1;
          goto _L6
_L2:
        ListIterator listiterator1 = d.listIterator(d.size());
_L14:
        if (!listiterator1.hasPrevious() || i <= b) goto _L10; else goto _L9
_L9:
        Connection connection = (Connection)listiterator1.previous();
        if (!connection.h()) goto _L12; else goto _L11
_L11:
        arraylist.add(connection);
        listiterator1.remove();
        int i1;
        i1 = i - 1;
        break MISSING_BLOCK_LABEL_369;
_L10:
        boolean flag = arraylist.isEmpty();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_290;
        }
        long l2 = l1 / 0xf4240L;
        wait(l2, (int)(l1 - 0xf4240L * l2));
        this;
        JVM INSTR monitorexit ;
        return true;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        InterruptedException interruptedexception;
        interruptedexception;
        this;
        JVM INSTR monitorexit ;
        int j = arraylist.size();
        for (int k = 0; k < j; k++)
        {
            Util.a(((Connection)arraylist.get(k)).d());
        }

        return true;
_L12:
        i1 = i;
        break MISSING_BLOCK_LABEL_369;
_L8:
        long l7 = l1;
        j1 = i;
        l5 = l7;
_L6:
        long l6 = l5;
        i = j1;
        l1 = l6;
          goto _L13
        i = i1;
          goto _L14
    }

    static 
    {
        String s = System.getProperty("http.keepAlive");
        String s1 = System.getProperty("http.keepAliveDuration");
        String s2 = System.getProperty("http.maxConnections");
        long l;
        if (s1 != null)
        {
            l = Long.parseLong(s1);
        } else
        {
            l = 0x493e0L;
        }
        if (s != null && !Boolean.parseBoolean(s))
        {
            a = new ConnectionPool(0, l);
        } else
        if (s2 != null)
        {
            a = new ConnectionPool(Integer.parseInt(s2), l);
        } else
        {
            a = new ConnectionPool(5, l);
        }
    }
}
