// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.DateTimeUtils;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.model.chat:
//            ChatHeader, ChatFeedItem

public class ChatDateHeader extends ChatHeader
{

    private String mDateText;

    public ChatDateHeader(ChatFeedItem chatfeeditem)
    {
        super(null, chatfeeditem);
        if (chatfeeditem == null)
        {
            mDateText = SnapchatApplication.e().getString(0x7f0c0064);
            mDateText = mDateText.toUpperCase(Locale.getDefault());
            return;
        } else
        {
            mDateText = DateTimeUtils.a(chatfeeditem.ae()).toUpperCase(Locale.getDefault());
            return;
        }
    }

    public String b()
    {
        return mDateText;
    }

    public String d()
    {
        return mDateText;
    }
}
