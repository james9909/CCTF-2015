// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.ws;

import java.io.IOException;
import okio.BufferedSource;

public interface WebSocketListener
{

    public abstract void a(int i, String s);

    public abstract void a(IOException ioexception);

    public abstract void a(BufferedSource bufferedsource, WebSocket.PayloadType payloadtype);
}
