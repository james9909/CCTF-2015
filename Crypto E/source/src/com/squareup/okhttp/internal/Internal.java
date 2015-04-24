// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.Transport;
import java.util.logging.Logger;

// Referenced classes of package com.squareup.okhttp.internal:
//            InternalCache, RouteDatabase, Network

public abstract class Internal
{

    public static final Logger a = Logger.getLogger(com/squareup/okhttp/OkHttpClient.getName());
    public static Internal b;

    public Internal()
    {
    }

    public abstract InternalCache a(OkHttpClient okhttpclient);

    public abstract Transport a(Connection connection, HttpEngine httpengine);

    public abstract void a(Connection connection, Protocol protocol);

    public abstract void a(Connection connection, Object obj);

    public abstract void a(ConnectionPool connectionpool, Connection connection);

    public abstract void a(com.squareup.okhttp.Headers.Builder builder, String s);

    public abstract void a(OkHttpClient okhttpclient, Connection connection, HttpEngine httpengine, Request request);

    public abstract boolean a(Connection connection);

    public abstract int b(Connection connection);

    public abstract RouteDatabase b(OkHttpClient okhttpclient);

    public abstract void b(Connection connection, HttpEngine httpengine);

    public abstract void b(Connection connection, Object obj);

    public abstract Network c(OkHttpClient okhttpclient);

    public abstract boolean c(Connection connection);

}
