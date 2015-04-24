// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import android.os.Handler;
import android.text.TextUtils;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.model.server.chat.ConversationMessage;
import com.snapchat.android.model.server.chat.MessageStateMessage;
import com.snapchat.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public class ChatUtils
{

    public ChatUtils()
    {
    }

    public static Chat a(ChatConversation chatconversation, MessageStateMessage messagestatemessage, boolean flag)
    {
        String s = messagestatemessage.getChatMessageId();
        Chat chat = chatconversation.f(s);
        if (chat != null)
        {
            chat.a(messagestatemessage, flag);
            return chat;
        }
        if (flag && TextUtils.equals(messagestatemessage.getState(), com.snapchat.android.model.server.chat.MessageStateMessage.StateType.SAVED.name().toLowerCase(Locale.ENGLISH)))
        {
            chatconversation.b(s);
            (new Handler()).postDelayed(new Runnable(chatconversation) {

                final ChatConversation a;

                public void run()
                {
                    LoadConversationPageTaskExecutor.a().a(a.u(), false);
                }

            
            {
                a = chatconversation;
                super();
            }
            }, 5000L);
        }
        return null;
    }

    public static Chat a(String s, String s1, String s2, com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus sendreceivestatus, long l)
    {
        com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type type1 = com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.valueOf(s);
        com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type type = type1;
_L4:
        static class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.values().length];
                try
                {
                    a[com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.MEDIA.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.SCREENSHOT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.HERE_SCREENSHOT.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls2.a[type.ordinal()];
        JVM INSTR tableswitch 1 3: default 44
    //                   1 84
    //                   2 101
    //                   3 101;
           goto _L1 _L2 _L3 _L3
_L1:
        Object obj = (new com.snapchat.android.model.chat.ChatText.Builder(s1, s2)).a();
_L5:
        ((Chat) (obj)).a(sendreceivestatus);
        ((Chat) (obj)).c(l);
        return ((Chat) (obj));
        NullPointerException nullpointerexception;
        nullpointerexception;
_L6:
        type = com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Type.TEXT;
          goto _L4
_L2:
        obj = (new com.snapchat.android.model.chat.ChatMedia.Builder(s1, s2)).a();
          goto _L5
_L3:
        obj = (new com.snapchat.android.model.chat.ChatScreenshot.Builder(s1, s2)).a();
          goto _L5
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
          goto _L6
    }

    public static String a(String s)
    {
        String s1 = UserPrefs.k();
        if (s1 == null)
        {
            s1 = "";
        }
        return a(s1, s);
    }

    public static String a(String s, String s1)
    {
        if (s.compareTo(s1) <= 0)
        {
            return (new StringBuilder()).append(s).append("~").append(s1).toString();
        } else
        {
            return (new StringBuilder()).append(s1).append("~").append(s).toString();
        }
    }

    public static String a(String s, List list)
    {
        ArrayList arraylist = new ArrayList(1 + list.size());
        arraylist.add(s);
        arraylist.addAll(list);
        Collections.sort(arraylist);
        return StringUtils.a(arraylist, "~");
    }

    public static boolean a(ChatConversation chatconversation)
    {
        return chatconversation.c().indexOf(',') != -1;
    }

    public static boolean a(ChatFeedItem chatfeeditem)
    {
        return TextUtils.equals(UserPrefs.k(), chatfeeditem.l());
    }

    public static boolean a(ConversationMessage conversationmessage)
    {
        if (conversationmessage instanceof ChatMessage)
        {
            return true;
        }
        if (conversationmessage instanceof MessageStateMessage)
        {
            return TextUtils.equals(((MessageStateMessage)conversationmessage).getState(), com.snapchat.android.model.server.chat.MessageStateMessage.StateType.SAVED.name().toLowerCase(Locale.ENGLISH));
        } else
        {
            return false;
        }
    }

    public static String b(String s)
    {
        String as[] = s.split("~");
        String s1 = UserPrefs.k();
        int i = as.length;
        int j = 0;
        int k = 0;
        for (; j < i; j++)
        {
            String s2 = as[j];
            if (!s2.equals(s1))
            {
                return s2;
            }
            k++;
        }

        if (k > 1)
        {
            return s1;
        } else
        {
            return null;
        }
    }

    public static boolean c(String s)
    {
        return TextUtils.equals(UserPrefs.k(), s);
    }
}
