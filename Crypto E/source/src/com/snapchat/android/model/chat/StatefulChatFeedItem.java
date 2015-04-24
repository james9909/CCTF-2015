// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.chat.ChatUtils;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.chat:
//            ChatFeedItem, ChatConversation

public abstract class StatefulChatFeedItem
    implements ChatFeedItem
{
    public static final class SendReceiveStatus extends Enum
    {

        private static final SendReceiveStatus $VALUES[];
        public static final SendReceiveStatus FAILED;
        public static final SendReceiveStatus FAILED_AND_NON_RECOVERABLE;
        public static final SendReceiveStatus FAILED_AND_USER_NOTIFIED_OF_FAILURE;
        public static final SendReceiveStatus RECEIVED;
        public static final SendReceiveStatus RECEIVING;
        public static final SendReceiveStatus SENDING;
        public static final SendReceiveStatus SENT;
        public static final SendReceiveStatus UNKNOWN;

        public static SendReceiveStatus valueOf(String s1)
        {
            return (SendReceiveStatus)Enum.valueOf(com/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus, s1);
        }

        public static SendReceiveStatus[] values()
        {
            return (SendReceiveStatus[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new SendReceiveStatus("UNKNOWN", 0);
            FAILED = new SendReceiveStatus("FAILED", 1);
            RECEIVING = new SendReceiveStatus("RECEIVING", 2);
            RECEIVED = new SendReceiveStatus("RECEIVED", 3);
            SENDING = new SendReceiveStatus("SENDING", 4);
            SENT = new SendReceiveStatus("SENT", 5);
            FAILED_AND_USER_NOTIFIED_OF_FAILURE = new SendReceiveStatus("FAILED_AND_USER_NOTIFIED_OF_FAILURE", 6);
            FAILED_AND_NON_RECOVERABLE = new SendReceiveStatus("FAILED_AND_NON_RECOVERABLE", 7);
            SendReceiveStatus asendreceivestatus[] = new SendReceiveStatus[8];
            asendreceivestatus[0] = UNKNOWN;
            asendreceivestatus[1] = FAILED;
            asendreceivestatus[2] = RECEIVING;
            asendreceivestatus[3] = RECEIVED;
            asendreceivestatus[4] = SENDING;
            asendreceivestatus[5] = SENT;
            asendreceivestatus[6] = FAILED_AND_USER_NOTIFIED_OF_FAILURE;
            asendreceivestatus[7] = FAILED_AND_NON_RECOVERABLE;
            $VALUES = asendreceivestatus;
        }

        private SendReceiveStatus(String s1, int i)
        {
            super(s1, i);
        }
    }


    private List mRecipients;
    private SendReceiveStatus mSendReceiveStatus;
    private String mSender;

    public StatefulChatFeedItem(String s1, List list)
    {
        mSender = s1;
        mRecipients = list;
    }

    public String I()
    {
        return ChatUtils.a(mSender, mRecipients);
    }

    public String J()
    {
        return (String)mRecipients.get(0);
    }

    public SendReceiveStatus K()
    {
        return mSendReceiveStatus;
    }

    public boolean L()
    {
        return mSendReceiveStatus == SendReceiveStatus.RECEIVING;
    }

    public boolean V()
    {
        return mSendReceiveStatus == SendReceiveStatus.SENDING;
    }

    public boolean W()
    {
        return mSendReceiveStatus == SendReceiveStatus.FAILED || mSendReceiveStatus == SendReceiveStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE || mSendReceiveStatus == SendReceiveStatus.FAILED_AND_NON_RECOVERABLE;
    }

    public boolean X()
    {
        return mSendReceiveStatus == SendReceiveStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE;
    }

    public boolean Y()
    {
        return mSendReceiveStatus == SendReceiveStatus.FAILED || mSendReceiveStatus == SendReceiveStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE;
    }

    public int a(ChatConversation chatconversation)
    {
        ChatFeedItem.FeedIconPriority feediconpriority = ChatFeedItem.FeedIconPriority.MOST_RECENT;
        if (!W() || !Y()) goto _L2; else goto _L1
_L1:
        feediconpriority = ChatFeedItem.FeedIconPriority.FAILED;
_L4:
        return feediconpriority.ordinal();
_L2:
        if (V())
        {
            feediconpriority = ChatFeedItem.FeedIconPriority.SENDING;
        } else
        if (!ChatUtils.a(this))
        {
            if (UserPrefs.k() != null && !at())
            {
                feediconpriority = ChatFeedItem.FeedIconPriority.NEW;
            }
        } else
        if (System.currentTimeMillis() - ae() < 1000L)
        {
            feediconpriority = ChatFeedItem.FeedIconPriority.RECENTLY_SENT;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String a()
    {
        int i;
        if (W() && Y())
        {
            i = 0x7f0c00ee;
        } else
        if (t())
        {
            i = 0x7f0c00ec;
        } else
        if (V())
        {
            i = 0x7f0c019f;
        } else
        {
            i = 0x7f0c0209;
        }
        return SnapchatApplication.e().getResources().getString(i);
    }

    public void a(SendReceiveStatus sendreceivestatus)
    {
        mSendReceiveStatus = sendreceivestatus;
    }

    public long b(ChatConversation chatconversation)
    {
        if (t())
        {
            return 0L;
        } else
        {
            return ae();
        }
    }

    public String l()
    {
        return mSender;
    }

    public List m()
    {
        return mRecipients;
    }

    public void s()
    {
        mSendReceiveStatus = SendReceiveStatus.FAILED_AND_NON_RECOVERABLE;
    }

    public boolean t()
    {
        return mSendReceiveStatus == SendReceiveStatus.FAILED_AND_NON_RECOVERABLE;
    }

    public boolean u()
    {
        return mSendReceiveStatus == SendReceiveStatus.SENT;
    }

    public boolean v()
    {
        return mSendReceiveStatus == SendReceiveStatus.RECEIVED;
    }
}
