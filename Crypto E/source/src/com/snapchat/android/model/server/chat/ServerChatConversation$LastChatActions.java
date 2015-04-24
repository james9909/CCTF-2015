// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ServerChatConversation

public static class 
{

    public long last_read_timestamp;
    public String last_reader;
    public long last_write_timestamp;
    public String last_write_type;
    public String last_writer;

    public String toString()
    {
        return (new StringBuilder()).append("LastChatActions{last_reader='").append(last_reader).append('\'').append(", last_read_timestamp=").append(last_read_timestamp).append(", last_writer='").append(last_writer).append('\'').append(", last_write_timestamp=").append(last_write_timestamp).append(", last_write_type='").append(last_write_type).append('\'').append('}').toString();
    }

    public ()
    {
    }
}
