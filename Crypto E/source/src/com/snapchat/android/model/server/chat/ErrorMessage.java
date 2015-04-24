// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            SCMessage

public class ErrorMessage extends SCMessage
{

    public static final String TYPE = "error";
    private String error_id;
    private String message;

    private ErrorMessage()
    {
        super("error");
    }

    public String getErrorId()
    {
        return error_id;
    }

    public String getMessage()
    {
        return message;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Error{message='").append(message).append('\'').append(", error_id='").append(error_id).append('\'').append('}').toString();
    }
}
