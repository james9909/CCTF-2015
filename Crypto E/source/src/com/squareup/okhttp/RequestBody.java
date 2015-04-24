// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.File;
import okio.BufferedSink;
import okio.Okio;

// Referenced classes of package com.squareup.okhttp:
//            MediaType

public abstract class RequestBody
{

    public RequestBody()
    {
    }

    public static RequestBody a(MediaType mediatype, File file)
    {
        if (file == null)
        {
            throw new NullPointerException("content == null");
        } else
        {
            return new RequestBody(mediatype, file) {

                final MediaType a;
                final File b;

                public MediaType a()
                {
                    return a;
                }

                public void a(BufferedSink bufferedsink)
                {
                    okio.Source source = null;
                    source = Okio.a(b);
                    bufferedsink.a(source);
                    Util.a(source);
                    return;
                    Exception exception;
                    exception;
                    Util.a(source);
                    throw exception;
                }

                public long b()
                {
                    return b.length();
                }

            
            {
                a = mediatype;
                b = file;
                super();
            }
            };
        }
    }

    public static RequestBody a(MediaType mediatype, String s)
    {
        java.nio.charset.Charset charset = Util.d;
        if (mediatype != null)
        {
            charset = mediatype.b();
            if (charset == null)
            {
                charset = Util.d;
                mediatype = MediaType.a((new StringBuilder()).append(mediatype).append("; charset=utf-8").toString());
            }
        }
        return a(mediatype, s.getBytes(charset));
    }

    public static RequestBody a(MediaType mediatype, byte abyte0[])
    {
        if (abyte0 == null)
        {
            throw new NullPointerException("content == null");
        } else
        {
            return new RequestBody(mediatype, abyte0) {

                final MediaType a;
                final byte b[];

                public MediaType a()
                {
                    return a;
                }

                public void a(BufferedSink bufferedsink)
                {
                    bufferedsink.c(b);
                }

                public long b()
                {
                    return (long)b.length;
                }

            
            {
                a = mediatype;
                b = abyte0;
                super();
            }
            };
        }
    }

    public abstract MediaType a();

    public abstract void a(BufferedSink bufferedsink);

    public long b()
    {
        return -1L;
    }
}
