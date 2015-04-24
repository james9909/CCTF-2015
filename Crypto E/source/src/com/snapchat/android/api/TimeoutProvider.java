// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;


public interface TimeoutProvider
{

    public static final int DEFAULT_CONNECTION_TIMEOUT_MILLIS = 10000;
    public static final int DEFAULT_SOCKET_TIMEOUT_MILLIS = 45000;

    public abstract int a();

    public abstract int b();
}
