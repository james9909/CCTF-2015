// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;

// Referenced classes of package com.squareup.okhttp.internal:
//            DiskLruCache

class a extends ForwardingSink
{

    final a a;

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
                a(a, true);
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
                a(a, true);
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
                a(a, true);
            }
            return;
        }
        exception;
        disklrucache;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ( , Sink sink)
    {
        a = ;
        super(sink);
    }
}
