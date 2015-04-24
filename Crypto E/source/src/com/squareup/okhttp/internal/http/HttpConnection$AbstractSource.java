// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Util;
import java.net.Socket;
import okio.BufferedSource;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HttpConnection

abstract class <init>
    implements Source
{

    protected boolean a;
    final HttpConnection b;

    protected final void a()
    {
        Util.a(HttpConnection.f(b).d());
        HttpConnection.a(b, 6);
    }

    protected final void a(boolean flag)
    {
        if (HttpConnection.c(b) != 5)
        {
            throw new IllegalStateException((new StringBuilder()).append("state: ").append(HttpConnection.c(b)).toString());
        }
        HttpConnection.a(b, 0);
        if (flag && HttpConnection.d(b) == 1)
        {
            HttpConnection.b(b, 0);
            Internal.b.a(HttpConnection.e(b), HttpConnection.f(b));
        } else
        if (HttpConnection.d(b) == 2)
        {
            HttpConnection.a(b, 6);
            HttpConnection.f(b).d().close();
            return;
        }
    }

    public Timeout b()
    {
        return HttpConnection.b(b).b();
    }

    private (HttpConnection httpconnection)
    {
        b = httpconnection;
        super();
    }

    b(HttpConnection httpconnection, b b1)
    {
        this(httpconnection);
    }
}
