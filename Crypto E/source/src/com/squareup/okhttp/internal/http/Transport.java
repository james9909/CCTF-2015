// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import okio.Sink;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            HttpEngine, RetryableSink

public interface Transport
{

    public abstract ResponseBody a(Response response);

    public abstract Sink a(Request request, long l);

    public abstract void a();

    public abstract void a(Request request);

    public abstract void a(HttpEngine httpengine);

    public abstract void a(RetryableSink retryablesink);

    public abstract com.squareup.okhttp.Response.Builder b();

    public abstract void c();

    public abstract boolean d();
}
