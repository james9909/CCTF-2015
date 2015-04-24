// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import android.view.View;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.chat:
//            ChatConversation

public interface ChatFeedItem
    extends Comparable
{
    public static final class FeedIconPriority extends Enum
    {

        private static final FeedIconPriority $VALUES[];
        public static final FeedIconPriority CURRENTLY_TICKING;
        public static final FeedIconPriority FAILED;
        public static final FeedIconPriority MOST_RECENT;
        public static final FeedIconPriority NEW;
        public static final FeedIconPriority RECENTLY_OPENED_LAST_SNAP;
        public static final FeedIconPriority RECENTLY_SENT;
        public static final FeedIconPriority SENDING;
        public static final FeedIconPriority UNOPENED_SNAP_AVAILABLE_NEXT;

        public static FeedIconPriority valueOf(String s1)
        {
            return (FeedIconPriority)Enum.valueOf(com/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority, s1);
        }

        public static FeedIconPriority[] values()
        {
            return (FeedIconPriority[])$VALUES.clone();
        }

        static 
        {
            MOST_RECENT = new FeedIconPriority("MOST_RECENT", 0);
            NEW = new FeedIconPriority("NEW", 1);
            RECENTLY_SENT = new FeedIconPriority("RECENTLY_SENT", 2);
            SENDING = new FeedIconPriority("SENDING", 3);
            FAILED = new FeedIconPriority("FAILED", 4);
            RECENTLY_OPENED_LAST_SNAP = new FeedIconPriority("RECENTLY_OPENED_LAST_SNAP", 5);
            UNOPENED_SNAP_AVAILABLE_NEXT = new FeedIconPriority("UNOPENED_SNAP_AVAILABLE_NEXT", 6);
            CURRENTLY_TICKING = new FeedIconPriority("CURRENTLY_TICKING", 7);
            FeedIconPriority afeediconpriority[] = new FeedIconPriority[8];
            afeediconpriority[0] = MOST_RECENT;
            afeediconpriority[1] = NEW;
            afeediconpriority[2] = RECENTLY_SENT;
            afeediconpriority[3] = SENDING;
            afeediconpriority[4] = FAILED;
            afeediconpriority[5] = RECENTLY_OPENED_LAST_SNAP;
            afeediconpriority[6] = UNOPENED_SNAP_AVAILABLE_NEXT;
            afeediconpriority[7] = CURRENTLY_TICKING;
            $VALUES = afeediconpriority;
        }

        private FeedIconPriority(String s1, int i)
        {
            super(s1, i);
        }
    }

    public static class FeedIconResource
    {

        public int endResource;
        public long frivolousAnimationTime;
        public final int startResource;

        public FeedIconResource(int i)
        {
            startResource = i;
            endResource = i;
        }
    }


    public abstract boolean V();

    public abstract boolean W();

    public abstract boolean X();

    public abstract boolean Y();

    public abstract int a(ChatConversation chatconversation);

    public abstract FeedIconResource a(View view, ChatConversation chatconversation);

    public abstract String a();

    public abstract long ae();

    public abstract String ap();

    public abstract boolean aq();

    public abstract boolean ar();

    public abstract boolean at();

    public abstract long b(ChatConversation chatconversation);

    public abstract String b();

    public abstract long c(ChatConversation chatconversation);

    public abstract boolean c();

    public abstract String d();

    public abstract String l();

    public abstract List m();

    public abstract void s();

    public abstract boolean t();

    public abstract boolean u();

    public abstract boolean v();
}
