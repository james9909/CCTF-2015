// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.data.gson:
//            Message

public static final class value extends Enum
{

    private static final value $VALUES[];
    public static final value CASH_RAIN;
    public static final value CASH_STATE;
    public static final value CHAT_MESSAGE;
    public static final value CONNECT;
    public static final value CONNECT_RESPONSE;
    public static final value CONVERSATION_MESSAGE_RESPONSE;
    public static final value DISCONNECT;
    public static final value ERROR;
    public static final value INVALID_MESSAGE_TYPE;
    public static final value MESSAGE_RELEASE;
    public static final value MESSAGE_STATE;
    public static final value PING;
    public static final value PING_RESPONSE;
    public static final value PRESENCE;
    public static final value PROTOCOL_ERROR;
    public static final value SNAP_STATE;
    private static Map constants;
    private final String value;

    public static value valueOf(String s)
    {
        return (value)Enum.valueOf(com/snapchat/data/gson/Message$Type, s);
    }

    public static value[] values()
    {
        return (value[])$VALUES.clone();
    }

    public String toString()
    {
        return value;
    }

    static 
    {
        int i = 0;
        INVALID_MESSAGE_TYPE = new <init>("INVALID_MESSAGE_TYPE", 0, "invalid_message_type");
        CONNECT = new <init>("CONNECT", 1, "connect");
        DISCONNECT = new <init>("DISCONNECT", 2, "disconnect");
        PRESENCE = new <init>("PRESENCE", 3, "presence");
        SNAP_STATE = new <init>("SNAP_STATE", 4, "snap_state");
        MESSAGE_STATE = new <init>("MESSAGE_STATE", 5, "message_state");
        MESSAGE_RELEASE = new <init>("MESSAGE_RELEASE", 6, "message_release");
        CHAT_MESSAGE = new <init>("CHAT_MESSAGE", 7, "chat_message");
        PING = new <init>("PING", 8, "ping");
        PING_RESPONSE = new <init>("PING_RESPONSE", 9, "ping_response");
        ERROR = new <init>("ERROR", 10, "error");
        PROTOCOL_ERROR = new <init>("PROTOCOL_ERROR", 11, "protocol_error");
        CONVERSATION_MESSAGE_RESPONSE = new <init>("CONVERSATION_MESSAGE_RESPONSE", 12, "conversation_message_response");
        CONNECT_RESPONSE = new <init>("CONNECT_RESPONSE", 13, "connect_response");
        CASH_STATE = new <init>("CASH_STATE", 14, "cash_state");
        CASH_RAIN = new <init>("CASH_RAIN", 15, "cash_rain");
        value avalue[] = new <init>[16];
        avalue[0] = INVALID_MESSAGE_TYPE;
        avalue[1] = CONNECT;
        avalue[2] = DISCONNECT;
        avalue[3] = PRESENCE;
        avalue[4] = SNAP_STATE;
        avalue[5] = MESSAGE_STATE;
        avalue[6] = MESSAGE_RELEASE;
        avalue[7] = CHAT_MESSAGE;
        avalue[8] = PING;
        avalue[9] = PING_RESPONSE;
        avalue[10] = ERROR;
        avalue[11] = PROTOCOL_ERROR;
        avalue[12] = CONVERSATION_MESSAGE_RESPONSE;
        avalue[13] = CONNECT_RESPONSE;
        avalue[14] = CASH_STATE;
        avalue[15] = CASH_RAIN;
        $VALUES = avalue;
        constants = new HashMap();
        value avalue1[] = values();
        for (int j = avalue1.length; i < j; i++)
        {
            value value1 = avalue1[i];
            constants.put(value1.value, value1);
        }

    }

    private (String s, int i, String s1)
    {
        super(s, i);
        value = s1;
    }
}
