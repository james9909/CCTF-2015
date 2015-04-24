// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            SCMessage

public class PingResponse extends SCMessage
{

    public static final String TYPE = "ping_response";
    private String ping_id;

    public PingResponse()
    {
        super("ping_response");
    }

    public String getPingId()
    {
        return ping_id;
    }

    public String toString()
    {
        return (new StringBuilder()).append("PingResponse{ping_id='").append(ping_id).append('\'').append('}').toString();
    }
}
