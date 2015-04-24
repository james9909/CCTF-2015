// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.server.cash.CashRainMessage;
import com.snapchat.android.model.server.cash.CashStateMessage;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.model.server.chat.ConnectResponse;
import com.snapchat.android.model.server.chat.ConversationMessageResponse;
import com.snapchat.android.model.server.chat.ErrorMessage;
import com.snapchat.android.model.server.chat.MessageStateMessage;
import com.snapchat.android.model.server.chat.PingResponse;
import com.snapchat.android.model.server.chat.PresenceMessage;
import com.snapchat.android.model.server.chat.ProtocolErrorMessage;
import com.snapchat.android.model.server.chat.ReleaseMessage;
import com.snapchat.android.model.server.chat.SCMessage;
import com.snapchat.android.model.server.chat.SnapStateMessage;
import com.snapchat.android.util.GsonWrapper;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.InputStream;
import org.apache.commons.io.Charsets;

public class SCMessageInputStream
    implements Closeable
{

    byte a[];
    private final DataInputStream b;
    private final GsonWrapper c;

    public SCMessageInputStream(InputStream inputstream, GsonWrapper gsonwrapper)
    {
        a = new byte[1024];
        b = new DataInputStream(new BufferedInputStream(inputstream));
        c = gsonwrapper;
    }

    private SCMessage a(String s)
    {
        SCMessage scmessage;
        String s1;
        byte byte0;
        scmessage = (SCMessage)c.a(s, com/snapchat/android/model/server/chat/SCMessage);
        if (scmessage == null)
        {
            throw new RuntimeException((new StringBuilder()).append("Unexpected message contents which parsed as null: ").append(s).toString());
        }
        s1 = scmessage.getType();
        byte0 = -1;
        s1.hashCode();
        JVM INSTR lookupswitch 12: default 164
    //                   -1676109860: 389
    //                   -1276666629: 267
    //                   -1239595922: 405
    //                   -1214396839: 282
    //                   -111487025: 297
    //                   -85171680: 312
    //                   -82824202: 373
    //                   96784904: 327
    //                   337189301: 357
    //                   452751777: 342
    //                   756912416: 421
    //                   1990930565: 437;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L1:
        break; /* Loop/switch isn't completed */
_L13:
        break MISSING_BLOCK_LABEL_437;
_L14:
        switch (byte0)
        {
        default:
            throw new RuntimeException((new StringBuilder()).append("Unexpected message type ").append(scmessage.getType()).append(" from contents: ").append(s).toString());

        case 0: // '\0'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/chat/PresenceMessage);

        case 1: // '\001'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/chat/MessageStateMessage);

        case 2: // '\002'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/chat/ReleaseMessage);

        case 3: // '\003'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/chat/ChatMessage);

        case 4: // '\004'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/chat/ErrorMessage);

        case 5: // '\005'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/chat/ProtocolErrorMessage);

        case 6: // '\006'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/chat/ConversationMessageResponse);

        case 7: // '\007'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/chat/ConnectResponse);

        case 8: // '\b'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/chat/SnapStateMessage);

        case 9: // '\t'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/chat/PingResponse);

        case 10: // '\n'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/cash/CashRainMessage);

        case 11: // '\013'
            return (SCMessage)c.a(s, com/snapchat/android/model/server/cash/CashStateMessage);
        }
_L3:
        if (s1.equals("presence"))
        {
            byte0 = 0;
        }
          goto _L14
_L5:
        if (s1.equals("message_state"))
        {
            byte0 = 1;
        }
          goto _L14
_L6:
        if (s1.equals("message_release"))
        {
            byte0 = 2;
        }
          goto _L14
_L7:
        if (s1.equals("chat_message"))
        {
            byte0 = 3;
        }
          goto _L14
_L9:
        if (s1.equals("error"))
        {
            byte0 = 4;
        }
          goto _L14
_L11:
        if (s1.equals("protocol_error"))
        {
            byte0 = 5;
        }
          goto _L14
_L10:
        if (s1.equals("conversation_message_response"))
        {
            byte0 = 6;
        }
          goto _L14
_L8:
        if (s1.equals("connect_response"))
        {
            byte0 = 7;
        }
          goto _L14
_L2:
        if (s1.equals("snap_state"))
        {
            byte0 = 8;
        }
          goto _L14
_L4:
        if (s1.equals("ping_response"))
        {
            byte0 = 9;
        }
          goto _L14
_L12:
        if (s1.equals("cash_rain"))
        {
            byte0 = 10;
        }
          goto _L14
        if (s1.equals("cash_state"))
        {
            byte0 = 11;
        }
          goto _L14
    }

    public SCMessage a()
    {
        int i = b.readInt();
        if (i <= 0 || i > 0xdbba0)
        {
            Timber.f("SCMessageInputStream", (new StringBuilder()).append("CHAT-LOG: SCMessageInputStream RECEIVED INVALID SSL PACKET LENGTH ").append(i).toString(), new Object[0]);
            (new ErrorMetric("INVALID_SSL_PACKET_RECEIVED")).a("PACKET_LENGTH", Integer.valueOf(i)).c();
            throw new RuntimeException((new StringBuilder()).append("Server sent a message with a bad length: ").append(i).toString());
        }
        if (a.length < i)
        {
            try
            {
                a = new byte[i];
            }
            catch (OutOfMemoryError outofmemoryerror)
            {
                System.gc();
                a = new byte[i];
            }
        }
        b.readFully(a, 0, i);
        return a(new String(a, 0, i, Charsets.UTF_8));
    }

    public void close()
    {
        b.close();
    }
}
