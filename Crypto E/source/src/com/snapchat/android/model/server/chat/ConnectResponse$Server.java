// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConnectResponse

public static class 
{

    private String hostname;
    private int port;

    public String getHostname()
    {
        return hostname;
    }

    public int getPort()
    {
        return port;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Server{hostname='").append(hostname).append('\'').append(", port=").append(port).append('}').toString();
    }

    public ()
    {
    }
}
