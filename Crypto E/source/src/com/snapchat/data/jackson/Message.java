// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class Message
{
    public static final class Type extends Enum
    {

        public static final Type a;
        public static final Type b;
        public static final Type c;
        public static final Type d;
        public static final Type e;
        public static final Type f;
        public static final Type g;
        public static final Type h;
        public static final Type i;
        public static final Type j;
        public static final Type k;
        public static final Type l;
        public static final Type m;
        public static final Type n;
        public static final Type o;
        public static final Type p;
        private static Map r;
        private static final Type s[];
        private final String q;

        public static Type valueOf(String s1)
        {
            return (Type)Enum.valueOf(com/snapchat/data/jackson/Message$Type, s1);
        }

        public static Type[] values()
        {
            return (Type[])s.clone();
        }

        public String toString()
        {
            return q;
        }

        static 
        {
            int i1 = 0;
            a = new Type("INVALID_MESSAGE_TYPE", 0, "invalid_message_type");
            b = new Type("CONNECT", 1, "connect");
            c = new Type("DISCONNECT", 2, "disconnect");
            d = new Type("PRESENCE", 3, "presence");
            e = new Type("SNAP_STATE", 4, "snap_state");
            f = new Type("MESSAGE_STATE", 5, "message_state");
            g = new Type("MESSAGE_RELEASE", 6, "message_release");
            h = new Type("CHAT_MESSAGE", 7, "chat_message");
            i = new Type("PING", 8, "ping");
            j = new Type("PING_RESPONSE", 9, "ping_response");
            k = new Type("ERROR", 10, "error");
            l = new Type("PROTOCOL_ERROR", 11, "protocol_error");
            m = new Type("CONVERSATION_MESSAGE_RESPONSE", 12, "conversation_message_response");
            n = new Type("CONNECT_RESPONSE", 13, "connect_response");
            o = new Type("CASH_STATE", 14, "cash_state");
            p = new Type("CASH_RAIN", 15, "cash_rain");
            Type atype[] = new Type[16];
            atype[0] = a;
            atype[1] = b;
            atype[2] = c;
            atype[3] = d;
            atype[4] = e;
            atype[5] = f;
            atype[6] = g;
            atype[7] = h;
            atype[8] = i;
            atype[9] = j;
            atype[10] = k;
            atype[11] = l;
            atype[12] = m;
            atype[13] = n;
            atype[14] = o;
            atype[15] = p;
            s = atype;
            r = new HashMap();
            Type atype1[] = values();
            for (int j1 = atype1.length; i1 < j1; i1++)
            {
                Type type = atype1[i1];
                r.put(type.q, type);
            }

        }

        private Type(String s1, int i1, String s2)
        {
            super(s1, i1);
            q = s2;
        }
    }


    private Type a;
    private String b;
    private Map c;

    public Message()
    {
        c = new HashMap();
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
            return (new EqualsBuilder()).append(a, message.a).append(b, message.b).append(c, message.c).isEquals();
        }
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(a).append(b).append(c).toHashCode();
    }

    public String toString()
    {
        return ToStringBuilder.reflectionToString(this);
    }
}
