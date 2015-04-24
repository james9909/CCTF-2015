// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.File;
import okio.BufferedSink;
import okio.Okio;

// Referenced classes of package com.squareup.okhttp:
//            RequestBody, MediaType

static final class nit> extends RequestBody
{

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

    (MediaType mediatype, File file)
    {
        a = mediatype;
        b = file;
        super();
    }
}
