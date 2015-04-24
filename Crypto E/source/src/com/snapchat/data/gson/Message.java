// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.gson;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class Message
{
    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type CASH_RAIN;
        public static final Type CASH_STATE;
        public static final Type CHAT_MESSAGE;
        public static final Type CONNECT;
        public static final Type CONNECT_RESPONSE;
        public static final Type CONVERSATION_MESSAGE_RESPONSE;
        public static final Type DISCONNECT;
        public static final Type ERROR;
        public static final Type INVALID_MESSAGE_TYPE;
        public static final Type MESSAGE_RELEASE;
        public static final Type MESSAGE_STATE;
        public static final Type PING;
        public static final Type PING_RESPONSE;
        public static final Type PRESENCE;
        public static final Type PROTOCOL_ERROR;
        public static final Type SNAP_STATE;
        private static Map constants;
        private final String value;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/snapchat/data/gson/Message$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        public String toString()
        {
            return value;
        }

        static 
        {
            int i = 0;
            INVALID_MESSAGE_TYPE = new Type("INVALID_MESSAGE_TYPE", 0, "invalid_message_type");
            CONNECT = new Type("CONNECT", 1, "connect");
            DISCONNECT = new Type("DISCONNECT", 2, "disconnect");
            PRESENCE = new Type("PRESENCE", 3, "presence");
            SNAP_STATE = new Type("SNAP_STATE", 4, "snap_state");
            MESSAGE_STATE = new Type("MESSAGE_STATE", 5, "message_state");
            MESSAGE_RELEASE = new Type("MESSAGE_RELEASE", 6, "message_release");
            CHAT_MESSAGE = new Type("CHAT_MESSAGE", 7, "chat_message");
            PING = new Type("PING", 8, "ping");
            PING_RESPONSE = new Type("PING_RESPONSE", 9, "ping_response");
            ERROR = new Type("ERROR", 10, "error");
            PROTOCOL_ERROR = new Type("PROTOCOL_ERROR", 11, "protocol_error");
            CONVERSATION_MESSAGE_RESPONSE = new Type("CONVERSATION_MESSAGE_RESPONSE", 12, "conversation_message_response");
            CONNECT_RESPONSE = new Type("CONNECT_RESPONSE", 13, "connect_response");
            CASH_STATE = new Type("CASH_STATE", 14, "cash_state");
            CASH_RAIN = new Type("CASH_RAIN", 15, "cash_rain");
            Type atype[] = new Type[16];
            atype[0] = INVALID_MESSAGE_TYPE;
            atype[1] = CONNECT;
            atype[2] = DISCONNECT;
            atype[3] = PRESENCE;
            atype[4] = SNAP_STATE;
            atype[5] = MESSAGE_STATE;
            atype[6] = MESSAGE_RELEASE;
            atype[7] = CHAT_MESSAGE;
            atype[8] = PING;
            atype[9] = PING_RESPONSE;
            atype[10] = ERROR;
            atype[11] = PROTOCOL_ERROR;
            atype[12] = CONVERSATION_MESSAGE_RESPONSE;
            atype[13] = CONNECT_RESPONSE;
            atype[14] = CASH_STATE;
            atype[15] = CASH_RAIN;
            $VALUES = atype;
            constants = new HashMap();
            Type atype1[] = values();
            for (int j = atype1.length; i < j; i++)
            {
                Type type1 = atype1[i];
                constants.put(type1.value, type1);
            }

        }

        private Type(String s, int i, String s1)
        {
            super(s, i);
            value = s1;
        }
    }


    private String id;
    private Type type;

    public Message()
    {
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof Message))
        {
            return false;
        } else
        {
            Message message = (Message)obj;
            return (new EqualsBuilder()).append(type, message.type).append(id, message.id).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(type).append(id).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
