// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            SCMessage

public class ProtocolErrorMessage extends SCMessage
{

    public static final String TYPE = "protocol_error";
    private String message;

    private ProtocolErrorMessage()
    {
        super("protocol_error");
    }

    public String getMessage()
    {
        return message;
    }

    public String toString()
    {
        return (new StringBuilder()).append("ProtocolErrorMessage{message='").append(message).append('\'').append('}').toString();
    }
}
