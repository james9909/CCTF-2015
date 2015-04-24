// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import android.os.SystemClock;
import com.snapchat.android.analytics.framework.EasyMetric;

public class ReceivedSnapAnalytics
{
    public static final class LoadingReceivedSnapContext extends Enum
    {

        private static final LoadingReceivedSnapContext $VALUES[];
        public static final LoadingReceivedSnapContext LOAD_SNAP_BY_DEFAULT;
        public static final LoadingReceivedSnapContext LOAD_SNAP_BY_TAP;
        public static final LoadingReceivedSnapContext LOAD_STORY_SNAP_BY_DEFAULT;
        public static final LoadingReceivedSnapContext LOAD_STORY_SNAP_BY_TAP;
        public static final LoadingReceivedSnapContext UNINITIALIZED;

        public static LoadingReceivedSnapContext valueOf(String s)
        {
            return (LoadingReceivedSnapContext)Enum.valueOf(com/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext, s);
        }

        public static LoadingReceivedSnapContext[] values()
        {
            return (LoadingReceivedSnapContext[])$VALUES.clone();
        }

        static 
        {
            LOAD_STORY_SNAP_BY_DEFAULT = new LoadingReceivedSnapContext("LOAD_STORY_SNAP_BY_DEFAULT", 0);
            LOAD_STORY_SNAP_BY_TAP = new LoadingReceivedSnapContext("LOAD_STORY_SNAP_BY_TAP", 1);
            LOAD_SNAP_BY_DEFAULT = new LoadingReceivedSnapContext("LOAD_SNAP_BY_DEFAULT", 2);
            LOAD_SNAP_BY_TAP = new LoadingReceivedSnapContext("LOAD_SNAP_BY_TAP", 3);
            UNINITIALIZED = new LoadingReceivedSnapContext("UNINITIALIZED", 4);
            LoadingReceivedSnapContext aloadingreceivedsnapcontext[] = new LoadingReceivedSnapContext[5];
            aloadingreceivedsnapcontext[0] = LOAD_STORY_SNAP_BY_DEFAULT;
            aloadingreceivedsnapcontext[1] = LOAD_STORY_SNAP_BY_TAP;
            aloadingreceivedsnapcontext[2] = LOAD_SNAP_BY_DEFAULT;
            aloadingreceivedsnapcontext[3] = LOAD_SNAP_BY_TAP;
            aloadingreceivedsnapcontext[4] = UNINITIALIZED;
            $VALUES = aloadingreceivedsnapcontext;
        }

        private LoadingReceivedSnapContext(String s, int i)
        {
            super(s, i);
        }
    }


    private LoadingReceivedSnapContext mContext;

    public ReceivedSnapAnalytics()
    {
        mContext = LoadingReceivedSnapContext.UNINITIALIZED;
    }

    public void a(long l, String s)
    {
        b(SystemClock.elapsedRealtime() - l, s);
    }

    public void a(LoadingReceivedSnapContext loadingreceivedsnapcontext)
    {
        mContext = loadingreceivedsnapcontext;
    }

    protected void b(long l, String s)
    {
        static class _cls1
        {

            static final int $SwitchMap$com$snapchat$android$analytics$ReceivedSnapAnalytics$LoadingReceivedSnapContext[];

            static 
            {
                $SwitchMap$com$snapchat$android$analytics$ReceivedSnapAnalytics$LoadingReceivedSnapContext = new int[LoadingReceivedSnapContext.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$analytics$ReceivedSnapAnalytics$LoadingReceivedSnapContext[LoadingReceivedSnapContext.LOAD_STORY_SNAP_BY_DEFAULT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$snapchat$android$analytics$ReceivedSnapAnalytics$LoadingReceivedSnapContext[LoadingReceivedSnapContext.LOAD_STORY_SNAP_BY_TAP.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        switch (_cls1..SwitchMap.com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext[mContext.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            (new EasyMetric("STORY_DOWNLOAD")).a("context", "default").a("reachability", s).a(l).a(false);
            return;

        case 2: // '\002'
            (new EasyMetric("STORY_DOWNLOAD")).a("context", "tap").a("reachability", s).a(l).a(false);
            break;
        }
    }
}
