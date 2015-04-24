// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.util.SnapUtils;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

public abstract class Snap
    implements ChatFeedItem
{
    public static final class ClientSnapStatus extends Enum
    {

        private static final ClientSnapStatus $VALUES[];
        public static final ClientSnapStatus DELIVERED;
        public static final ClientSnapStatus FAILED;
        public static final ClientSnapStatus FAILED_AND_NON_RECOVERABLE;
        public static final ClientSnapStatus FAILED_AND_USER_NOTIFIED_OF_FAILURE;
        public static final ClientSnapStatus FRIEND_REQUEST;
        public static final ClientSnapStatus LOADING;
        public static final ClientSnapStatus PENDING;
        public static final ClientSnapStatus RECEIVED_AND_REPLAYED;
        public static final ClientSnapStatus RECEIVED_AND_VIEWED;
        public static final ClientSnapStatus SENDING;
        public static final ClientSnapStatus SENT;
        public static final ClientSnapStatus SENT_AND_OPENED;
        public static final ClientSnapStatus SENT_AND_REPLAYED;
        public static final ClientSnapStatus SENT_AND_REPLAYED_AND_SCREENSHOTTED;
        public static final ClientSnapStatus SENT_AND_SCREENSHOTTED;
        public static final ClientSnapStatus UNVIEWED_AND_LOADED;
        public static final ClientSnapStatus UNVIEWED_AND_LOAD_STATE_TBD;
        public static final ClientSnapStatus UNVIEWED_AND_UNLOADED;
        public static final ClientSnapStatus VIEWED_AND_REPLAY_AVAILABLE;

        public static ClientSnapStatus a(String s)
        {
            ClientSnapStatus aclientsnapstatus[] = values();
            int j = aclientsnapstatus.length;
            for (int k = 0; k < j; k++)
            {
                ClientSnapStatus clientsnapstatus = aclientsnapstatus[k];
                if (s.equalsIgnoreCase(clientsnapstatus.name()))
                {
                    return clientsnapstatus;
                }
            }

            return RECEIVED_AND_VIEWED;
        }

        public static ClientSnapStatus valueOf(String s)
        {
            return (ClientSnapStatus)Enum.valueOf(com/snapchat/android/model/Snap$ClientSnapStatus, s);
        }

        public static ClientSnapStatus[] values()
        {
            return (ClientSnapStatus[])$VALUES.clone();
        }

        static 
        {
            RECEIVED_AND_VIEWED = new ClientSnapStatus("RECEIVED_AND_VIEWED", 0);
            FAILED = new ClientSnapStatus("FAILED", 1);
            SENDING = new ClientSnapStatus("SENDING", 2);
            SENT = new ClientSnapStatus("SENT", 3);
            DELIVERED = new ClientSnapStatus("DELIVERED", 4);
            PENDING = new ClientSnapStatus("PENDING", 5);
            SENT_AND_OPENED = new ClientSnapStatus("SENT_AND_OPENED", 6);
            SENT_AND_SCREENSHOTTED = new ClientSnapStatus("SENT_AND_SCREENSHOTTED", 7);
            UNVIEWED_AND_LOAD_STATE_TBD = new ClientSnapStatus("UNVIEWED_AND_LOAD_STATE_TBD", 8);
            UNVIEWED_AND_UNLOADED = new ClientSnapStatus("UNVIEWED_AND_UNLOADED", 9);
            UNVIEWED_AND_LOADED = new ClientSnapStatus("UNVIEWED_AND_LOADED", 10);
            LOADING = new ClientSnapStatus("LOADING", 11);
            FRIEND_REQUEST = new ClientSnapStatus("FRIEND_REQUEST", 12);
            VIEWED_AND_REPLAY_AVAILABLE = new ClientSnapStatus("VIEWED_AND_REPLAY_AVAILABLE", 13);
            SENT_AND_REPLAYED = new ClientSnapStatus("SENT_AND_REPLAYED", 14);
            SENT_AND_REPLAYED_AND_SCREENSHOTTED = new ClientSnapStatus("SENT_AND_REPLAYED_AND_SCREENSHOTTED", 15);
            RECEIVED_AND_REPLAYED = new ClientSnapStatus("RECEIVED_AND_REPLAYED", 16);
            FAILED_AND_USER_NOTIFIED_OF_FAILURE = new ClientSnapStatus("FAILED_AND_USER_NOTIFIED_OF_FAILURE", 17);
            FAILED_AND_NON_RECOVERABLE = new ClientSnapStatus("FAILED_AND_NON_RECOVERABLE", 18);
            ClientSnapStatus aclientsnapstatus[] = new ClientSnapStatus[19];
            aclientsnapstatus[0] = RECEIVED_AND_VIEWED;
            aclientsnapstatus[1] = FAILED;
            aclientsnapstatus[2] = SENDING;
            aclientsnapstatus[3] = SENT;
            aclientsnapstatus[4] = DELIVERED;
            aclientsnapstatus[5] = PENDING;
            aclientsnapstatus[6] = SENT_AND_OPENED;
            aclientsnapstatus[7] = SENT_AND_SCREENSHOTTED;
            aclientsnapstatus[8] = UNVIEWED_AND_LOAD_STATE_TBD;
            aclientsnapstatus[9] = UNVIEWED_AND_UNLOADED;
            aclientsnapstatus[10] = UNVIEWED_AND_LOADED;
            aclientsnapstatus[11] = LOADING;
            aclientsnapstatus[12] = FRIEND_REQUEST;
            aclientsnapstatus[13] = VIEWED_AND_REPLAY_AVAILABLE;
            aclientsnapstatus[14] = SENT_AND_REPLAYED;
            aclientsnapstatus[15] = SENT_AND_REPLAYED_AND_SCREENSHOTTED;
            aclientsnapstatus[16] = RECEIVED_AND_REPLAYED;
            aclientsnapstatus[17] = FAILED_AND_USER_NOTIFIED_OF_FAILURE;
            aclientsnapstatus[18] = FAILED_AND_NON_RECOVERABLE;
            $VALUES = aclientsnapstatus;
        }

        private ClientSnapStatus(String s, int j)
        {
            super(s, j);
        }
    }

    public static final class TargetView extends Enum
    {

        private static final TargetView $VALUES[];
        public static final TargetView CHAT;
        public static final TargetView CHAT_AND_FEED;
        public static final TargetView FEED;

        public static TargetView valueOf(String s)
        {
            return (TargetView)Enum.valueOf(com/snapchat/android/model/Snap$TargetView, s);
        }

        public static TargetView[] values()
        {
            return (TargetView[])$VALUES.clone();
        }

        static 
        {
            CHAT = new TargetView("CHAT", 0);
            FEED = new TargetView("FEED", 1);
            CHAT_AND_FEED = new TargetView("CHAT_AND_FEED", 2);
            TargetView atargetview[] = new TargetView[3];
            atargetview[0] = CHAT;
            atargetview[1] = FEED;
            atargetview[2] = CHAT_AND_FEED;
            $VALUES = atargetview;
        }

        private TargetView(String s, int j)
        {
            super(s, j);
        }
    }


    public static final Set TARGET_VIEWS_CHAT;
    public static final Set TARGET_VIEWS_FEED;
    protected boolean mClearedBySender;
    protected ClientSnapStatus mClientSnapStatus;
    protected String mId;
    protected int mMediaType;
    protected long mSentTimestamp;
    protected long mTimestamp;

    public Snap()
    {
    }

    public Snap(String s, long l, int j, ClientSnapStatus clientsnapstatus)
    {
        mId = s;
        mTimestamp = l;
        mMediaType = j;
        mClientSnapStatus = clientsnapstatus;
    }

    public static String a(Context context, ClientSnapStatus clientsnapstatus)
    {
        int j = 0x7f0c0145;
        static class _cls1
        {

            static final int $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[];

            static 
            {
                $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus = new int[ClientSnapStatus.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.DELIVERED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.SENT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.PENDING.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.SENT_AND_OPENED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.SENDING.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.FAILED.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.FAILED_AND_NON_RECOVERABLE.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.SENT_AND_SCREENSHOTTED.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.SENT_AND_REPLAYED_AND_SCREENSHOTTED.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.SENT_AND_REPLAYED.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.RECEIVED_AND_VIEWED.ordinal()] = 12;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.RECEIVED_AND_REPLAYED.ordinal()] = 13;
                }
                catch (NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE.ordinal()] = 14;
                }
                catch (NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.LOADING.ordinal()] = 15;
                }
                catch (NoSuchFieldError nosuchfielderror14) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.UNVIEWED_AND_LOADED.ordinal()] = 16;
                }
                catch (NoSuchFieldError nosuchfielderror15) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.UNVIEWED_AND_UNLOADED.ordinal()] = 17;
                }
                catch (NoSuchFieldError nosuchfielderror16) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.UNVIEWED_AND_LOAD_STATE_TBD.ordinal()] = 18;
                }
                catch (NoSuchFieldError nosuchfielderror17) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[ClientSnapStatus.FRIEND_REQUEST.ordinal()] = 19;
                }
                catch (NoSuchFieldError nosuchfielderror18)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.snapchat.android.model.Snap.ClientSnapStatus[clientsnapstatus.ordinal()];
        JVM INSTR tableswitch 1 19: default 100
    //                   1 133
    //                   2 127
    //                   3 139
    //                   4 100
    //                   5 121
    //                   6 109
    //                   7 109
    //                   8 115
    //                   9 145
    //                   10 145
    //                   11 181
    //                   12 100
    //                   13 100
    //                   14 175
    //                   15 163
    //                   16 157
    //                   17 151
    //                   18 100
    //                   19 169;
           goto _L1 _L2 _L3 _L4 _L1 _L5 _L6 _L6 _L7 _L8 _L8 _L9 _L1 _L1 _L10 _L11 _L12 _L13 _L1 _L14
_L1:
        return context.getResources().getString(j);
_L6:
        j = 0x7f0c01a1;
        continue; /* Loop/switch isn't completed */
_L7:
        j = 0x7f0c00ec;
        continue; /* Loop/switch isn't completed */
_L5:
        j = 0x7f0c019f;
        continue; /* Loop/switch isn't completed */
_L3:
        j = 0x7f0c01a2;
        continue; /* Loop/switch isn't completed */
_L2:
        j = 0x7f0c00c2;
        continue; /* Loop/switch isn't completed */
_L4:
        j = 0x7f0c0154;
        continue; /* Loop/switch isn't completed */
_L8:
        j = 0x7f0c018b;
        continue; /* Loop/switch isn't completed */
_L13:
        j = 0x7f0c020c;
        continue; /* Loop/switch isn't completed */
_L12:
        j = 0x7f0c016e;
        continue; /* Loop/switch isn't completed */
_L11:
        j = 0x7f0c00f4;
        continue; /* Loop/switch isn't completed */
_L14:
        j = 0x7f0c0022;
        continue; /* Loop/switch isn't completed */
_L10:
        j = 0x7f0c016d;
        continue; /* Loop/switch isn't completed */
_L9:
        j = 0x7f0c0183;
        if (true) goto _L1; else goto _L15
_L15:
    }

    public int a(ChatFeedItem chatfeeditem)
    {
        return Long.signum(ae() - chatfeeditem.ae());
    }

    protected int a(boolean flag, boolean flag1)
    {
        ClientSnapStatus clientsnapstatus = al();
        switch (_cls1..SwitchMap.com.snapchat.android.model.Snap.ClientSnapStatus[clientsnapstatus.ordinal()])
        {
        default:
            return !an() && !flag1 ? 0x7f020044 : 0x7f020043;

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            return !an() ? 0x7f020041 : 0x7f020040;

        case 4: // '\004'
            return !an() ? 0x7f02003d : 0x7f02003c;

        case 5: // '\005'
        case 6: // '\006'
        case 7: // '\007'
        case 8: // '\b'
            return 0x7f020113;

        case 9: // '\t'
        case 10: // '\n'
            return !an() ? 0x7f020038 : 0x7f020037;

        case 11: // '\013'
            return !an() ? 0x7f020035 : 0x7f020034;

        case 12: // '\f'
        case 13: // '\r'
        case 14: // '\016'
            return aj();

        case 15: // '\017'
        case 16: // '\020'
        case 17: // '\021'
        case 18: // '\022'
            return b(flag, flag1);

        case 19: // '\023'
            return 0x7f020114;
        }
    }

    public void a(ClientSnapStatus clientsnapstatus)
    {
        mClientSnapStatus = clientsnapstatus;
    }

    public long ae()
    {
        return mTimestamp;
    }

    public abstract long af();

    public int aj()
    {
        return !an() ? 0x7f020033 : 0x7f020032;
    }

    public String ak()
    {
        return mId;
    }

    public ClientSnapStatus al()
    {
        return mClientSnapStatus;
    }

    public boolean am()
    {
        return mMediaType == 1 || mMediaType == 2;
    }

    public boolean an()
    {
        return mMediaType == 1;
    }

    public int ao()
    {
        return mMediaType;
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

    public void as()
    {
        mClearedBySender = true;
    }

    public boolean at()
    {
        return mClearedBySender;
    }

    public boolean au()
    {
        return mClientSnapStatus == ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE;
    }

    public int b(boolean flag, boolean flag1)
    {
        if (an() || flag1)
        {
            return !flag ? 0x7f020043 : 0x7f02002a;
        }
        return !flag ? 0x7f020044 : 0x7f02002b;
    }

    public String b()
    {
        return a(SnapchatApplication.e(), mClientSnapStatus).toUpperCase(Locale.getDefault());
    }

    public void c(String s)
    {
        mId = s;
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
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Snap) || !getClass().equals(obj.getClass()))
        {
            return false;
        } else
        {
            Snap snap = (Snap)obj;
            return SnapUtils.b(mId).equals(SnapUtils.b(snap.mId));
        }
    }

    public int hashCode()
    {
        int j;
        if (mId == null)
        {
            j = 0;
        } else
        {
            j = SnapUtils.b(mId).hashCode();
        }
        return j + 31;
    }

    public abstract boolean i();

    public abstract String n();

    static 
    {
        TARGET_VIEWS_CHAT = new HashSet();
        TARGET_VIEWS_CHAT.add(TargetView.CHAT);
        TARGET_VIEWS_CHAT.add(TargetView.CHAT_AND_FEED);
        TARGET_VIEWS_FEED = new HashSet();
        TARGET_VIEWS_FEED.add(TargetView.FEED);
        TARGET_VIEWS_FEED.add(TargetView.CHAT_AND_FEED);
    }
}
