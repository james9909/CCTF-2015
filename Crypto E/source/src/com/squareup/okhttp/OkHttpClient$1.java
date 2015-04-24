// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Network;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.Transport;

// Referenced classes of package com.squareup.okhttp:
//            OkHttpClient, Connection, ConnectionPool, Protocol, 
//            Request

static final class k extends Internal
{

    public InternalCache a(OkHttpClient okhttpclient)
    {
        return okhttpclient.g();
    }

    public Transport a(Connection connection, HttpEngine httpengine)
    {
        return connection.a(httpengine);
    }

    public void a(Connection connection, Protocol protocol)
    {
        connection.a(protocol);
    }

    public void a(Connection connection, Object obj)
    {
        connection.b(obj);
    }

    public void a(ConnectionPool connectionpool, Connection connection)
    {
        connectionpool.a(connection);
    }

    public void a( , String s)
    {
        .a(s);
    }

    public void a(OkHttpClient okhttpclient, Connection connection, HttpEngine httpengine, Request request)
    {
        connection.a(okhttpclient, httpengine, request);
    }

    public boolean a(Connection connection)
    {
        return connection.a();
    }

    public int b(Connection connection)
    {
        return connection.n();
    }

    public RouteDatabase b(OkHttpClient okhttpclient)
    {
        return okhttpclient.q();
    }

    public void b(Connection connection, HttpEngine httpengine)
    {
        connection.a(httpengine);
    }

    public void b(Connection connection, Object obj)
    {
        connection.b(obj);
    }

    public Network c(OkHttpClient okhttpclient)
    {
        return OkHttpClient.a(okhttpclient);
    }

    public boolean c(Connection connection)
    {
        return connection.f();
    }

    k()
    {
    }
}
