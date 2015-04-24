// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.chat.ChatMessage;
import com.snapchat.android.model.server.chat.MessageStateMessage;
import com.snapchat.android.util.ListUtils;
import com.snapchat.android.util.StringUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.FeedIconRefreshedEvent;
import com.squareup.otto.Bus;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.model.chat:
//            StatefulChatFeedItem, IIterableChatFeedItem, ISavableChatFeedItem, ChatFeedItem, 
//            ChatConversation

public abstract class Chat extends StatefulChatFeedItem
    implements IIterableChatFeedItem, ISavableChatFeedItem
{
    public static class Builder
    {

        private String id;
        private String recipient;
        private String sender;

        static String a(Builder builder)
        {
            return builder.sender;
        }

        static String b(Builder builder)
        {
            return builder.recipient;
        }

        static String c(Builder builder)
        {
            return builder.id;
        }

        public Builder(String s, String s1)
        {
            id = UUID.randomUUID().toString();
            sender = s;
            recipient = s1;
        }
    }


    private static final String TAG = com/snapchat/android/model/chat/Chat.getSimpleName();
    protected String mAckId;
    protected ChatMessage mChatMessage;
    protected long mDisplayedTimestamp;
    protected String mId;
    protected boolean mIsDisplayedToRecipient;
    protected boolean mIsReleasedByRecipient;
    protected boolean mIsSavedByRecipient;
    protected boolean mIsSavedBySender;
    protected String mIterToken;
    protected int mRecipientMessageStateVersionNumber;
    protected int mReleaseDelay;
    protected long mReleasedTimestamp;
    protected int mSenderMessageStateVersionNumber;
    protected long mSeqNum;
    protected String mStatusText;
    protected Long mTimestamp;
    protected String mUserText;

    protected Chat(Builder builder)
    {
        this(Builder.a(builder), Builder.b(builder), Long.valueOf(System.currentTimeMillis()));
        mId = Builder.c(builder);
    }

    public Chat(ChatMessage chatmessage)
    {
        this(chatmessage.getHeader().getFrom(), chatmessage.getHeader().getTo(), Long.valueOf(chatmessage.getTimestamp()));
        mId = chatmessage.getChatMessageId();
        mUserText = chatmessage.getBody().getText();
        Map map = chatmessage.getSavedState();
        if (map != null)
        {
            if (map.containsKey(l()))
            {
                com.snapchat.android.model.server.chat.ChatMessage.SavedState savedstate1 = (com.snapchat.android.model.server.chat.ChatMessage.SavedState)map.get(l());
                mIsSavedBySender = savedstate1.isSaved();
                mSenderMessageStateVersionNumber = savedstate1.getVersion();
            }
            if (map.containsKey(J()) && !D())
            {
                com.snapchat.android.model.server.chat.ChatMessage.SavedState savedstate = (com.snapchat.android.model.server.chat.ChatMessage.SavedState)map.get(J());
                mIsSavedByRecipient = savedstate.isSaved();
                mRecipientMessageStateVersionNumber = savedstate.getVersion();
            }
        }
        mSeqNum = chatmessage.getSeqNum();
        if (ChatUtils.a(this))
        {
            a(StatefulChatFeedItem.SendReceiveStatus.SENT);
            return;
        } else
        {
            a(StatefulChatFeedItem.SendReceiveStatus.RECEIVED);
            return;
        }
    }

    public Chat(String s, String s1, Long long1)
    {
        this(s, ListUtils.a(s1), long1);
    }

    public Chat(String s, List list, Long long1)
    {
        super(s, list);
        mReleaseDelay = 0;
        mTimestamp = long1;
    }

    private boolean D()
    {
        return TextUtils.equals(l(), J());
    }

    public String A()
    {
        return mIterToken;
    }

    public int B()
    {
        if (ChatUtils.a(this))
        {
            mIsSavedBySender = true;
            int i1 = 1 + mSenderMessageStateVersionNumber;
            mSenderMessageStateVersionNumber = i1;
            return i1;
        } else
        {
            mIsSavedByRecipient = true;
            int l = 1 + mRecipientMessageStateVersionNumber;
            mRecipientMessageStateVersionNumber = l;
            return l;
        }
    }

    public int C()
    {
        if (ChatUtils.a(this))
        {
            mIsSavedBySender = false;
            int i1 = 1 + mSenderMessageStateVersionNumber;
            mSenderMessageStateVersionNumber = i1;
            return i1;
        } else
        {
            mIsSavedByRecipient = false;
            int l = 1 + mRecipientMessageStateVersionNumber;
            mRecipientMessageStateVersionNumber = l;
            return l;
        }
    }

    public int a(ChatFeedItem chatfeeditem)
    {
        int l = mTimestamp.compareTo(Long.valueOf(chatfeeditem.ae()));
        if (l == 0 && (chatfeeditem instanceof Chat))
        {
            l = Long.valueOf(mSeqNum).compareTo(Long.valueOf(((Chat)chatfeeditem).mSeqNum));
        }
        return l;
    }

    public ChatFeedItem.FeedIconResource a(View view, ChatConversation chatconversation)
    {
        if (u() && System.currentTimeMillis() - ae() < 1000L)
        {
            long l = 1000L - (System.currentTimeMillis() - ae());
            view.postDelayed(new Runnable() {

                final Chat this$0;

                public void run()
                {
                    BusProvider.a().a(new FeedIconRefreshedEvent());
                }

            
            {
                this$0 = Chat.this;
                super();
            }
            }, l);
        }
        if (W() && Y())
        {
            return new ChatFeedItem.FeedIconResource(0x7f020113);
        }
        if (t())
        {
            return new ChatFeedItem.FeedIconResource(0x7f020039);
        }
        if (l().equals(UserPrefs.k()))
        {
            if (V())
            {
                return new ChatFeedItem.FeedIconResource(0x7f020039);
            }
            if (at())
            {
                return new ChatFeedItem.FeedIconResource(0x7f02003a);
            } else
            {
                return new ChatFeedItem.FeedIconResource(0x7f02003e);
            }
        }
        if (at())
        {
            return new ChatFeedItem.FeedIconResource(0x7f020031);
        } else
        {
            return new ChatFeedItem.FeedIconResource(0x7f020042);
        }
    }

    public String a()
    {
        if (u())
        {
            int l;
            if (g())
            {
                l = 0x7f0c0145;
            } else
            {
                l = 0x7f0c00c2;
            }
            return SnapchatApplication.e().getResources().getString(l);
        } else
        {
            return super.a();
        }
    }

    public void a(int l)
    {
        mSenderMessageStateVersionNumber = l;
    }

    public void a(long l)
    {
        a(true);
        d(l);
    }

    public void a(Chat chat)
    {
        if (chat.mSenderMessageStateVersionNumber > mSenderMessageStateVersionNumber)
        {
            mIsSavedBySender = chat.mIsSavedBySender;
            mSenderMessageStateVersionNumber = chat.mSenderMessageStateVersionNumber;
        }
        if (chat.mRecipientMessageStateVersionNumber > mRecipientMessageStateVersionNumber && !D())
        {
            mIsSavedByRecipient = chat.mIsSavedByRecipient;
            mRecipientMessageStateVersionNumber = chat.mRecipientMessageStateVersionNumber;
        }
        mTimestamp = chat.mTimestamp;
        a(chat.K());
        if (!mIsReleasedByRecipient)
        {
            mIsReleasedByRecipient = chat.mIsReleasedByRecipient;
            mReleasedTimestamp = chat.mReleasedTimestamp;
        }
        if (!mIsDisplayedToRecipient)
        {
            mIsDisplayedToRecipient = chat.mIsDisplayedToRecipient;
            mDisplayedTimestamp = chat.mDisplayedTimestamp;
        }
        mSeqNum = chat.mSeqNum;
    }

    public void a(ChatMessage chatmessage)
    {
        mChatMessage = chatmessage;
    }

    public void a(MessageStateMessage messagestatemessage, boolean flag)
    {
        boolean flag1;
        String s;
        int l;
        String s1;
        String s2;
        flag1 = true;
        s = messagestatemessage.getHeader().getFrom();
        l = messagestatemessage.getVersion();
        s1 = messagestatemessage.getState();
        s2 = com.snapchat.android.model.server.chat.MessageStateMessage.StateType.SAVED.name().toLowerCase(Locale.ENGLISH);
        if (!s.equals(l())) goto _L2; else goto _L1
_L1:
        if (l <= o()) goto _L4; else goto _L3
_L3:
        if (!flag) goto _L6; else goto _L5
_L5:
        b(TextUtils.equals(s1, s2));
        a(l);
_L4:
        return;
_L6:
        if (TextUtils.equals(s1, s2))
        {
            flag1 = false;
        }
        b(flag1);
        a(l + 1);
        return;
_L2:
        if (l > p())
        {
            if (flag)
            {
                c(TextUtils.equals(s1, s2));
                b(l);
                return;
            }
            if (TextUtils.equals(s1, s2))
            {
                flag1 = false;
            }
            c(flag1);
            b(l + 1);
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    public void a(String s)
    {
        mIterToken = s;
    }

    public void a(boolean flag)
    {
        mIsReleasedByRecipient = flag;
    }

    public long ae()
    {
        return mTimestamp.longValue();
    }

    public String ap()
    {
        return mUserText;
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
        return mIsReleasedByRecipient;
    }

    public String b()
    {
        return mStatusText;
    }

    public void b(int l)
    {
        mRecipientMessageStateVersionNumber = l;
    }

    public void b(long l)
    {
        mSeqNum = l;
    }

    public void b(String s)
    {
        mAckId = s;
    }

    public void b(boolean flag)
    {
        mIsSavedBySender = flag;
    }

    public long c(ChatConversation chatconversation)
    {
        if (x())
        {
            return y();
        } else
        {
            return ae();
        }
    }

    public void c(int l)
    {
        mReleaseDelay = l;
    }

    public void c(long l)
    {
        mTimestamp = Long.valueOf(l);
    }

    public void c(String s)
    {
        mStatusText = s;
    }

    public void c(boolean flag)
    {
        mIsSavedByRecipient = flag;
    }

    public boolean c()
    {
        return W();
    }

    public int compareTo(Object obj)
    {
        return a((ChatFeedItem)obj);
    }

    public String d()
    {
        return mId;
    }

    public void d(long l)
    {
        mReleasedTimestamp = l;
    }

    public void d(String s)
    {
        mId = s;
    }

    public abstract String e();

    public void e(long l)
    {
        mDisplayedTimestamp = l;
        mIsDisplayedToRecipient = true;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof Chat)
        {
            return mId.equals(((Chat)obj).d());
        } else
        {
            return false;
        }
    }

    public ChatMessage f()
    {
        return mChatMessage;
    }

    public boolean f(long l)
    {
        return x() && !g() && mDisplayedTimestamp + (long)mReleaseDelay <= l;
    }

    public boolean g()
    {
        return mIsReleasedByRecipient;
    }

    public String h()
    {
        return mAckId;
    }

    public int hashCode()
    {
        return mId.hashCode();
    }

    public long i()
    {
        return mSeqNum;
    }

    public boolean j()
    {
        return u() || v();
    }

    public boolean k()
    {
        return mIsSavedBySender || mIsSavedByRecipient;
    }

    public boolean n()
    {
        if (User.c() == null)
        {
            return false;
        }
        if (ChatUtils.a(this))
        {
            return mIsSavedBySender;
        } else
        {
            return mIsSavedByRecipient;
        }
    }

    public int o()
    {
        return mSenderMessageStateVersionNumber;
    }

    public int p()
    {
        return mRecipientMessageStateVersionNumber;
    }

    public boolean q()
    {
        return mIsSavedBySender;
    }

    public boolean r()
    {
        return mIsSavedByRecipient;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("Chat{mId='").append(mId).append('\'').append(", mAckId='").append(mAckId).append('\'').append(", mRecipient='").append(StringUtils.a(m(), ",")).append('\'').append(", mSender='").append(l()).append('\'').append(", mIsSavedBySender=").append(mIsSavedBySender).append(", mIsSavedByRecipient=").append(mIsSavedByRecipient).append(", mSenderMessageStateVersionNumber=").append(mSenderMessageStateVersionNumber).append(", mRecipientMessageStateVersionNumber=").append(mRecipientMessageStateVersionNumber).append(", mIsReleasedByRecipient=").append(mIsReleasedByRecipient).append(", mTimestamp=").append(mTimestamp).append(", mReleasedTimestamp=").append(mReleasedTimestamp).append(", mUserText='");
        String s;
        if (TextUtils.isEmpty(mUserText))
        {
            s = mUserText;
        } else
        {
            s = mUserText.substring(0, Math.min(3, mUserText.length()));
        }
        return stringbuilder.append(s).append('\'').append(", mStatusText='").append(mStatusText).append('\'').append(", mSeqNum=").append(mSeqNum).append(", mSendReceiveStatus=").append(K()).append(", mIterToken='").append(mIterToken).append('\'').append('}').toString();
    }

    public long w()
    {
        return mReleasedTimestamp;
    }

    public boolean x()
    {
        return mIsDisplayedToRecipient;
    }

    public long y()
    {
        return mDisplayedTimestamp;
    }

    public int z()
    {
        return mReleaseDelay;
    }

}
