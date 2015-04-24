// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.data.jackson;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.data.jackson:
//            Message

public static final class q extends Enum
{

    public static final q a;
    public static final q b;
    public static final q c;
    public static final q d;
    public static final q e;
    public static final q f;
    public static final q g;
    public static final q h;
    public static final q i;
    public static final q j;
    public static final q k;
    public static final q l;
    public static final q m;
    public static final q n;
    public static final q o;
    public static final q p;
    private static Map r;
    private static final q s[];
    private final String q;

    public static q valueOf(String s1)
    {
        return (q)Enum.valueOf(com/snapchat/data/jackson/Message$Type, s1);
    }

    public static q[] values()
    {
        return (q[])s.clone();
    }

    public String toString()
    {
        return q;
    }

    static 
    {
        int i1 = 0;
        a = new <init>("INVALID_MESSAGE_TYPE", 0, "invalid_message_type");
        b = new <init>("CONNECT", 1, "connect");
        c = new <init>("DISCONNECT", 2, "disconnect");
        d = new <init>("PRESENCE", 3, "presence");
        e = new <init>("SNAP_STATE", 4, "snap_state");
        f = new <init>("MESSAGE_STATE", 5, "message_state");
        g = new <init>("MESSAGE_RELEASE", 6, "message_release");
        h = new <init>("CHAT_MESSAGE", 7, "chat_message");
        i = new <init>("PING", 8, "ping");
        j = new <init>("PING_RESPONSE", 9, "ping_response");
        k = new <init>("ERROR", 10, "error");
        l = new <init>("PROTOCOL_ERROR", 11, "protocol_error");
        m = new <init>("CONVERSATION_MESSAGE_RESPONSE", 12, "conversation_message_response");
        n = new <init>("CONNECT_RESPONSE", 13, "connect_response");
        o = new <init>("CASH_STATE", 14, "cash_state");
        p = new <init>("CASH_RAIN", 15, "cash_rain");
        q aq[] = new <init>[16];
        aq[0] = a;
        aq[1] = b;
        aq[2] = c;
        aq[3] = d;
        aq[4] = e;
        aq[5] = f;
        aq[6] = g;
        aq[7] = h;
        aq[8] = i;
        aq[9] = j;
        aq[10] = k;
        aq[11] = l;
        aq[12] = m;
        aq[13] = n;
        aq[14] = o;
        aq[15] = p;
        s = aq;
        r = new HashMap();
        q aq1[] = values();
        for (int j1 = aq1.length; i1 < j1; i1++)
        {
            q q1 = aq1[i1];
            r.put(q1.q, q1);
        }

    }

    private (String s1, int i1, String s2)
    {
        super(s1, i1);
        q = s2;
    }
}
