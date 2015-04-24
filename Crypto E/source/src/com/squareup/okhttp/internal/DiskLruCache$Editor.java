// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

// Referenced classes of package com.squareup.okhttp.internal:
//            DiskLruCache

public final class <init>
{
    class FaultHidingSink extends ForwardingSink
    {

        final DiskLruCache.Editor a;

        public void a()
        {
            try
            {
                super.a();
                return;
            }
            catch (IOException ioexception)
            {
                synchronized (a.a)
                {
                    DiskLruCache.Editor.a(a, true);
                }
                return;
            }
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a_(Buffer buffer, long l)
        {
            try
            {
                super.a_(buffer, l);
                return;
            }
            catch (IOException ioexception)
            {
                synchronized (a.a)
                {
                    DiskLruCache.Editor.a(a, true);
                }
                return;
            }
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void close()
        {
            try
            {
                super.close();
                return;
            }
            catch (IOException ioexception)
            {
                synchronized (a.a)
                {
                    DiskLruCache.Editor.a(a, true);
                }
                return;
            }
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public FaultHidingSink(Sink sink)
        {
            a = DiskLruCache.Editor.this;
            super(sink);
        }
    }


    final DiskLruCache a;
    private final a b;
    private final boolean c[];
    private boolean d;
    private boolean e;

    static FaultHidingSink.a a(FaultHidingSink.a a1)
    {
        return a1.b;
    }

    static boolean a(b b1, boolean flag)
    {
        b1.d = flag;
        return flag;
    }

    static boolean[] b(d d1)
    {
        return d1.c;
    }

    public Sink a(int i)
    {
        DiskLruCache disklrucache = a;
        disklrucache;
        JVM INSTR monitorenter ;
        if ((b) != this)
        {
            throw new IllegalStateException();
        }
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        disklrucache;
        JVM INSTR monitorexit ;
        throw exception;
        File file;
        if (!(b))
        {
            c[i] = true;
        }
        file = (b)[i];
        Sink sink3 = Okio.b(file);
        Sink sink2 = sink3;
_L1:
        FaultHidingSink faulthidingsink = new FaultHidingSink(sink2);
        disklrucache;
        JVM INSTR monitorexit ;
        return faulthidingsink;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        DiskLruCache.f(a).mkdirs();
        Sink sink1 = Okio.b(file);
        sink2 = sink1;
          goto _L1
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        Sink sink = DiskLruCache.b();
        disklrucache;
        JVM INSTR monitorexit ;
        return sink;
    }

    public void a()
    {
        DiskLruCache disklrucache = a;
        disklrucache;
        JVM INSTR monitorenter ;
        if (!d)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        DiskLruCache.a(a, this, false);
        DiskLruCache.a(a, b);
_L2:
        e = true;
        return;
        DiskLruCache.a(a, this, true);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        disklrucache;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
        synchronized (a)
        {
            DiskLruCache.a(a, this, false);
        }
        return;
        exception;
        disklrucache;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private FaultHidingSink.a(DiskLruCache disklrucache, FaultHidingSink.a a1)
    {
        a = disklrucache;
        super();
        b = a1;
        boolean aflag[];
        if ((a1))
        {
            aflag = null;
        } else
        {
            aflag = new boolean[DiskLruCache.e(disklrucache)];
        }
        c = aflag;
    }

    c(DiskLruCache disklrucache, c c1, c c2)
    {
        this(disklrucache, c1);
    }
}
