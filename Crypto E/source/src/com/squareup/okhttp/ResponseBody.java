// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import okio.BufferedSource;

public abstract class ResponseBody
    implements Closeable
{

    public ResponseBody()
    {
    }

    public abstract long a();

    public abstract BufferedSource b();

    public final InputStream c()
    {
        return b().i();
    }

    public void close()
    {
        b().close();
    }

    public final byte[] d()
    {
        long l;
        BufferedSource bufferedsource;
        l = a();
        if (l > 0x7fffffffL)
        {
            throw new IOException((new StringBuilder()).append("Cannot buffer entire body for content length: ").append(l).toString());
        }
        bufferedsource = b();
        byte abyte0[] = bufferedsource.t();
        Util.a(bufferedsource);
        Exception exception;
        if (l != -1L && l != (long)abyte0.length)
        {
            throw new IOException("Content-Length and stream length disagree");
        } else
        {
            return abyte0;
        }
        exception;
        Util.a(bufferedsource);
        throw exception;
    }

    // Unreferenced inner class com/squareup/okhttp/ResponseBody$1

/* anonymous class */
    static final class _cls1 extends ResponseBody
    {

        final long a;
        final BufferedSource b;

        public long a()
        {
            return a;
        }

        public BufferedSource b()
        {
            return b;
        }
    }

}
