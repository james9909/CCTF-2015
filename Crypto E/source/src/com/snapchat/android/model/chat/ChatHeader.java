// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import android.view.View;
import com.snapchat.android.fragments.chat.ChatFragment;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.chat:
//            ChatFeedItem, ChatConversation

public class ChatHeader
    implements ChatFeedItem
{

    private static final String HEADER_ID_SUFFIX = "CHAT_HEADER";
    public String mId;
    public final String mSender;
    public long mTimestamp;

    public ChatHeader(String s1, ChatFeedItem chatfeeditem)
    {
        mSender = s1;
        if (chatfeeditem != null)
        {
            mTimestamp = chatfeeditem.ae();
            mId = (new StringBuilder()).append(ChatFragment.b(chatfeeditem)).append("CHAT_HEADER").toString();
            return;
        } else
        {
            mTimestamp = System.currentTimeMillis();
            mId = "TODAY_DUMMY_HEADER";
            return;
        }
    }

    public boolean V()
    {
        return false;
    }

    public boolean W()
    {
        return false;
    }

    public boolean X()
    {
        return true;
    }

    public boolean Y()
    {
        return false;
    }

    public int a(ChatConversation chatconversation)
    {
        return -1;
    }

    public int a(ChatFeedItem chatfeeditem)
    {
        return Long.signum(chatfeeditem.ae() - ae());
    }

    public ChatFeedItem.FeedIconResource a(View view, ChatConversation chatconversation)
    {
        return null;
    }

    public String a()
    {
        return "";
    }

    public long ae()
    {
        return mTimestamp;
    }

    public String ap()
    {
        return null;
    }

    public boolean aq()
    {
        return false;
    }

    public boolean ar()
    {
        return false;
    }

    public boolean at()
    {
        return false;
    }

    public long b(ChatConversation chatconversation)
    {
        return ae();
    }

    public String b()
    {
        return null;
    }

    public long c(ChatConversation chatconversation)
    {
        return mTimestamp;
    }

    public boolean c()
    {
        return false;
    }

    public int compareTo(Object obj)
    {
        return a((ChatFeedItem)obj);
    }

    public String d()
    {
        return mId;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof ChatHeader)
        {
            return mId.equals(((ChatHeader)obj).d());
        } else
        {
            return false;
        }
    }

    public int hashCode()
    {
        return mId.hashCode();
    }

    public String l()
    {
        return mSender;
    }

    public List m()
    {
        return null;
    }

    public void s()
    {
    }

    public boolean t()
    {
        return false;
    }

    public boolean u()
    {
        return false;
    }

    public boolean v()
    {
        return false;
    }
}
