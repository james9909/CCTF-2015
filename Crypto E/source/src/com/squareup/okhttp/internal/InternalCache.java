// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.http.CacheRequest;
import com.squareup.okhttp.internal.http.CacheStrategy;

public interface InternalCache
{

    public abstract Response a(Request request);

    public abstract CacheRequest a(Response response);

    public abstract void a();

    public abstract void a(Response response, Response response1);

    public abstract void a(CacheStrategy cachestrategy);

    public abstract void b(Request request);
}
