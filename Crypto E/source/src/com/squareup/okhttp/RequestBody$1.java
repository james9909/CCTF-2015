// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import okio.BufferedSink;

// Referenced classes of package com.squareup.okhttp:
//            RequestBody, MediaType

static final class nit> extends RequestBody
{

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

    (MediaType mediatype, byte abyte0[])
    {
        a = mediatype;
        b = abyte0;
        super();
    }
}
