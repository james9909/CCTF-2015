// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.res.Resources;
import android.net.Uri;
import android.view.View;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.controller.SendSnapController;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.FeedIconRefreshedEvent;
import com.snapchat.android.util.eventbus.SnapSelectedForRetryEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;

// Referenced classes of package com.snapchat.android.model:
//            Snap, AnnotatedMediabryo, UserPrefs, SnapWomb

public class SentSnap extends Snap
{

    public static final int TIME_TO_PRIORITIZE_SENT_ICON = 1000;
    private static final ArrayList sSentSnapStateTimeline;
    private String mClientId;
    private String mDisplayTime;
    private boolean mIsSavableSnap;
    private String mRecipient;
    private String mSnapUriString;
    private long mTimeOfLastSendAttempt;
    private boolean mZipped;

    public SentSnap(AnnotatedMediabryo annotatedmediabryo)
    {
        this(annotatedmediabryo.N(), annotatedmediabryo.N(), System.currentTimeMillis(), System.currentTimeMillis(), annotatedmediabryo.b(), Snap.ClientSnapStatus.SENDING, annotatedmediabryo.E(), "0", annotatedmediabryo.I(), System.currentTimeMillis(), annotatedmediabryo.n());
    }

    public SentSnap(String s1, String s2, long l1, long l2, int i1, 
            Snap.ClientSnapStatus clientsnapstatus, String s3)
    {
        this(s1, s2, l1, l2, i1, clientsnapstatus, s3, "0", null, System.currentTimeMillis(), false);
    }

    public SentSnap(String s1, String s2, long l1, long l2, int i1, 
            Snap.ClientSnapStatus clientsnapstatus, String s3, String s4, Uri uri, long l3, boolean flag)
    {
        super(s1, l1, i1, clientsnapstatus);
        mClientId = s2;
        mSentTimestamp = l2;
        mDisplayTime = s4;
        mTimeOfLastSendAttempt = l3;
        mRecipient = s3;
        mDisplayTime = "0";
        if (uri != null)
        {
            mSnapUriString = uri.toString();
        }
        mZipped = flag;
        if (mTimeOfLastSendAttempt == 0L)
        {
            c(System.currentTimeMillis());
        }
        mIsSavableSnap = true;
    }

    public boolean V()
    {
        return mClientSnapStatus == Snap.ClientSnapStatus.SENDING;
    }

    public boolean W()
    {
        return mClientSnapStatus == Snap.ClientSnapStatus.FAILED || mClientSnapStatus == Snap.ClientSnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE || mClientSnapStatus == Snap.ClientSnapStatus.FAILED_AND_NON_RECOVERABLE;
    }

    public boolean X()
    {
        return mClientSnapStatus == Snap.ClientSnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE;
    }

    public boolean Y()
    {
        return mClientSnapStatus != Snap.ClientSnapStatus.FAILED_AND_NON_RECOVERABLE;
    }

    public int a(ChatConversation chatconversation)
    {
        com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority feediconpriority = com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.MOST_RECENT;
        if (!W() || !Y()) goto _L2; else goto _L1
_L1:
        feediconpriority = com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.FAILED;
_L4:
        return feediconpriority.ordinal();
_L2:
        if (V())
        {
            feediconpriority = com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.SENDING;
        } else
        if (u() && System.currentTimeMillis() - ae() < 1000L)
        {
            feediconpriority = com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.RECENTLY_SENT;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public com.snapchat.android.model.chat.ChatFeedItem.FeedIconResource a(View view, ChatConversation chatconversation)
    {
        if (u() && System.currentTimeMillis() - ae() < 1000L)
        {
            long l1 = 1000L - (System.currentTimeMillis() - ae());
            view.postDelayed(new Runnable() {

                final SentSnap this$0;

                public void run()
                {
                    BusProvider.a().a(new FeedIconRefreshedEvent());
                }

            
            {
                this$0 = SentSnap.this;
                super();
            }
            }, l1);
        }
        return new com.snapchat.android.model.chat.ChatFeedItem.FeedIconResource(a(false, false));
    }

    public String a()
    {
        Snap.ClientSnapStatus clientsnapstatus = al();
        static class _cls2
        {

            static final int $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[];

            static 
            {
                $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus = new int[Snap.ClientSnapStatus.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.DELIVERED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.SENT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.SENT_AND_OPENED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.SENT_AND_REPLAYED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.SENT_AND_REPLAYED_AND_SCREENSHOTTED.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.SENT_AND_SCREENSHOTTED.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.FAILED.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.FAILED_AND_NON_RECOVERABLE.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.PENDING.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Snap.ClientSnapStatus.SENDING.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror10)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.com.snapchat.android.model.Snap.ClientSnapStatus[clientsnapstatus.ordinal()];
        JVM INSTR tableswitch 1 11: default 72
    //                   1 116
    //                   2 110
    //                   3 140
    //                   4 134
    //                   5 128
    //                   6 122
    //                   7 86
    //                   8 86
    //                   9 92
    //                   10 98
    //                   11 104;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L8 _L9 _L10 _L11
_L1:
        int i1 = 0x7f0c0209;
_L13:
        return SnapchatApplication.e().getResources().getString(i1);
_L8:
        i1 = 0x7f0c00ee;
        continue; /* Loop/switch isn't completed */
_L9:
        i1 = 0x7f0c00ec;
        continue; /* Loop/switch isn't completed */
_L10:
        i1 = 0x7f0c0154;
        continue; /* Loop/switch isn't completed */
_L11:
        i1 = 0x7f0c019f;
        continue; /* Loop/switch isn't completed */
_L3:
        i1 = 0x7f0c01a2;
        continue; /* Loop/switch isn't completed */
_L2:
        i1 = 0x7f0c00c2;
        continue; /* Loop/switch isn't completed */
_L7:
        i1 = 0x7f0c018b;
        continue; /* Loop/switch isn't completed */
_L6:
        i1 = 0x7f0c0184;
        continue; /* Loop/switch isn't completed */
_L5:
        i1 = 0x7f0c0183;
        continue; /* Loop/switch isn't completed */
_L4:
        i1 = 0x7f0c0145;
        if (true) goto _L13; else goto _L12
_L12:
    }

    public void a(long l1)
    {
        mSentTimestamp = l1;
    }

    public void a(String s1)
    {
        mSnapUriString = s1;
    }

    public void a(boolean flag)
    {
        mIsSavableSnap = flag;
    }

    public boolean a(SentSnap sentsnap)
    {
        return sSentSnapStateTimeline.indexOf(al()) > sSentSnapStateTimeline.indexOf(sentsnap.al());
    }

    public long ae()
    {
        return mSentTimestamp;
    }

    public long af()
    {
        return mTimestamp;
    }

    public long b(ChatConversation chatconversation)
    {
        if (t())
        {
            return 0L;
        } else
        {
            return c(chatconversation);
        }
    }

    public void b(long l1)
    {
        mTimestamp = l1;
    }

    public void b(String s1)
    {
        mClientId = s1;
    }

    public long c(ChatConversation chatconversation)
    {
        if (p())
        {
            return af();
        } else
        {
            return ae();
        }
    }

    public void c(long l1)
    {
        mTimeOfLastSendAttempt = l1;
    }

    public boolean c()
    {
        return W() || al() == Snap.ClientSnapStatus.PENDING;
    }

    public String d()
    {
        return mClientId;
    }

    public boolean e()
    {
        return mIsSavableSnap;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof SentSnap))
        {
            return false;
        }
        SentSnap sentsnap = (SentSnap)obj;
        if (z() || sentsnap.z())
        {
            return mClientId.equals(sentsnap.mClientId);
        } else
        {
            return SnapUtils.b(mId).equals(SnapUtils.b(sentsnap.mId));
        }
    }

    public String f()
    {
        return mDisplayTime;
    }

    public String g()
    {
        return mRecipient;
    }

    public void h()
    {
        mClientSnapStatus = Snap.ClientSnapStatus.FAILED;
    }

    public int hashCode()
    {
        return mClientId.hashCode();
    }

    public boolean i()
    {
        while (mClientSnapStatus == null || mClientSnapStatus != Snap.ClientSnapStatus.FAILED && mClientSnapStatus != Snap.ClientSnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE) 
        {
            return false;
        }
        return true;
    }

    public void j()
    {
        mClientSnapStatus = Snap.ClientSnapStatus.SENDING;
    }

    public boolean k()
    {
        return mZipped;
    }

    public String l()
    {
        return UserPrefs.k();
    }

    public List m()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(mRecipient);
        return arraylist;
    }

    public String n()
    {
        return mRecipient;
    }

    public void o()
    {
        mClientSnapStatus = Snap.ClientSnapStatus.SENT;
    }

    public boolean p()
    {
        switch (_cls2..SwitchMap.com.snapchat.android.model.Snap.ClientSnapStatus[mClientSnapStatus.ordinal()])
        {
        default:
            return false;

        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
            return true;
        }
    }

    public String q()
    {
        return mSnapUriString;
    }

    public long r()
    {
        return mTimeOfLastSendAttempt;
    }

    public void s()
    {
        mClientSnapStatus = Snap.ClientSnapStatus.FAILED_AND_NON_RECOVERABLE;
    }

    public boolean t()
    {
        return mClientSnapStatus == Snap.ClientSnapStatus.FAILED_AND_NON_RECOVERABLE;
    }

    public boolean u()
    {
        switch (_cls2..SwitchMap.com.snapchat.android.model.Snap.ClientSnapStatus[mClientSnapStatus.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
            return true;
        }
    }

    public boolean v()
    {
        return false;
    }

    public void w()
    {
        String s1 = mId;
        AnnotatedMediabryo annotatedmediabryo = (AnnotatedMediabryo)SnapWomb.a().g().get(s1);
        if (annotatedmediabryo == null)
        {
            throw new com.snapchat.android.api.SendSnapWithMediaTask.SendSnapException("AnnotatedMediabryo was null");
        } else
        {
            (new SendSnapController()).a(annotatedmediabryo, true, false);
            j();
            mTimeOfLastSendAttempt = System.currentTimeMillis();
            BusProvider.a().a(new SnapSelectedForRetryEvent());
            return;
        }
    }

    public String x()
    {
        return mClientId;
    }

    public boolean y()
    {
        return System.currentTimeMillis() - r() > 45000L;
    }

    protected boolean z()
    {
        return mClientId.equals(mId);
    }

    static 
    {
        Snap.ClientSnapStatus aclientsnapstatus[] = new Snap.ClientSnapStatus[5];
        aclientsnapstatus[0] = Snap.ClientSnapStatus.SENDING;
        aclientsnapstatus[1] = Snap.ClientSnapStatus.SENT;
        aclientsnapstatus[2] = Snap.ClientSnapStatus.DELIVERED;
        aclientsnapstatus[3] = Snap.ClientSnapStatus.SENT_AND_OPENED;
        aclientsnapstatus[4] = Snap.ClientSnapStatus.SENT_AND_REPLAYED;
        sSentSnapStateTimeline = new ArrayList(Arrays.asList(aclientsnapstatus));
    }
}
