// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import android.os.SystemClock;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.ui.here.DisconnectReason;
import com.snapchat.android.util.NumberFormatUtils;

public class HereAnalytics
{
    public static final class OutgoingVideoState extends Enum
    {

        private static final OutgoingVideoState $VALUES[];
        public static final OutgoingVideoState CONNECTED;
        public static final OutgoingVideoState CONNECTING;
        public static final OutgoingVideoState DISCONNECTED;

        public static OutgoingVideoState valueOf(String s)
        {
            return (OutgoingVideoState)Enum.valueOf(com/snapchat/android/analytics/HereAnalytics$OutgoingVideoState, s);
        }

        public static OutgoingVideoState[] values()
        {
            return (OutgoingVideoState[])$VALUES.clone();
        }

        static 
        {
            DISCONNECTED = new OutgoingVideoState("DISCONNECTED", 0);
            CONNECTING = new OutgoingVideoState("CONNECTING", 1);
            CONNECTED = new OutgoingVideoState("CONNECTED", 2);
            OutgoingVideoState aoutgoingvideostate[] = new OutgoingVideoState[3];
            aoutgoingvideostate[0] = DISCONNECTED;
            aoutgoingvideostate[1] = CONNECTING;
            aoutgoingvideostate[2] = CONNECTED;
            $VALUES = aoutgoingvideostate;
        }

        private OutgoingVideoState(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class SetupPhase extends Enum
    {

        private static final SetupPhase $VALUES[];
        public static final SetupPhase HERE_ADL_CONNECTED;
        public static final SetupPhase HERE_ADL_REMOTE_PEER_JOINED;
        public static final SetupPhase HERE_AVAILABLE;
        public static final SetupPhase HERE_CONFIRMED;
        public static final SetupPhase HERE_PUBLISHED;

        public static SetupPhase valueOf(String s)
        {
            return (SetupPhase)Enum.valueOf(com/snapchat/android/analytics/HereAnalytics$SetupPhase, s);
        }

        public static SetupPhase[] values()
        {
            return (SetupPhase[])$VALUES.clone();
        }

        static 
        {
            HERE_AVAILABLE = new SetupPhase("HERE_AVAILABLE", 0);
            HERE_ADL_CONNECTED = new SetupPhase("HERE_ADL_CONNECTED", 1);
            HERE_ADL_REMOTE_PEER_JOINED = new SetupPhase("HERE_ADL_REMOTE_PEER_JOINED", 2);
            HERE_PUBLISHED = new SetupPhase("HERE_PUBLISHED", 3);
            HERE_CONFIRMED = new SetupPhase("HERE_CONFIRMED", 4);
            SetupPhase asetupphase[] = new SetupPhase[5];
            asetupphase[0] = HERE_AVAILABLE;
            asetupphase[1] = HERE_ADL_CONNECTED;
            asetupphase[2] = HERE_ADL_REMOTE_PEER_JOINED;
            asetupphase[3] = HERE_PUBLISHED;
            asetupphase[4] = HERE_CONFIRMED;
            $VALUES = asetupphase;
        }

        private SetupPhase(String s, int i)
        {
            super(s, i);
        }
    }


    private static final int BUCKET_CFG_HIGH_PRECISION_COUNT = 10;
    private static final int BUCKET_CFG_HIGH_PRECISION_SIZE = 1000;
    private static final int BUCKET_CFG_LOW_PRECISION_RANGE_END = 20;
    private static final int BUCKET_CFG_REPORTING_RANGE_END = 30;
    private static final String PUBLISH_LOCKED = "HERE_PUBLISH_LOCKED";
    private static final String PUBLISH_LOCKED_BOTTOM = "bottom";
    private static final String PUBLISH_LOCKED_POS_KEY = "position";
    private static final String PUBLISH_LOCKED_TOP = "top";
    protected static final long START_TIME_UNINITIALIZED = -1L;
    private static final String TIME_TO_EVENT_PARAM_NAME = "timeToEvent";
    private static final String TIME_TO_FIRST_PUBLISH_PARAM_NAME = "timeToFirstEvent";
    private boolean mAdlConnectedToScope;
    private long mHereAvailableTimestamp;
    private boolean mIsVideoBidirectional;
    private boolean mIsVideoIncoming;
    private OutgoingVideoState mOutgoingVideoState;
    private long mPreviousSetupEventTimestamp;
    private long mStartOfVideoStream;
    private long mTimeStartCanStreamVideo;
    private long mVideoBidirectionalStart;
    private long mVideoIncomingStart;
    private long mVideoOutgoingStart;

    public HereAnalytics()
    {
        mOutgoingVideoState = OutgoingVideoState.DISCONNECTED;
        mTimeStartCanStreamVideo = -1L;
        mStartOfVideoStream = -1L;
        mPreviousSetupEventTimestamp = -1L;
        mHereAvailableTimestamp = -1L;
    }

    private void a(String s)
    {
        boolean flag;
        if (mOutgoingVideoState != OutgoingVideoState.DISCONNECTED)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return;
        }
        mOutgoingVideoState = OutgoingVideoState.CONNECTING;
        long l;
        if (mTimeStartCanStreamVideo == -1L)
        {
            l = -1L;
        } else
        {
            l = SystemClock.elapsedRealtime() - mTimeStartCanStreamVideo;
        }
        a(l, mAdlConnectedToScope);
        mVideoOutgoingStart = SystemClock.elapsedRealtime();
        mTimeStartCanStreamVideo = -1L;
        b(s);
    }

    private String b(long l)
    {
        if (l < 10000L)
        {
            return NumberFormatUtils.a(l, 1000, 11);
        }
        int i = (int)(l / 1000L);
        if (i < 20)
        {
            Object aobj2[] = new Object[2];
            aobj2[0] = Integer.valueOf(10000);
            aobj2[1] = Integer.valueOf(20);
            return String.format("%d - %d s", aobj2);
        }
        if (i < 30)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.valueOf(20);
            aobj1[1] = Integer.valueOf(30);
            return String.format("%d - %d s", aobj1);
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(30);
            return String.format("%d+ s", aobj);
        }
    }

    private void b(String s)
    {
        boolean flag = true;
        boolean flag1;
        if (mOutgoingVideoState != OutgoingVideoState.DISCONNECTED)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (!mIsVideoIncoming || !flag1)
        {
            flag = false;
        }
        if (mIsVideoBidirectional == flag)
        {
            return;
        }
        mIsVideoBidirectional = flag;
        if (mIsVideoBidirectional)
        {
            g();
            mVideoBidirectionalStart = SystemClock.elapsedRealtime();
            return;
        } else
        {
            e(SystemClock.elapsedRealtime() - mVideoBidirectionalStart, s);
            return;
        }
    }

    private void d(DisconnectReason disconnectreason)
    {
        boolean flag;
        if (mOutgoingVideoState != OutgoingVideoState.DISCONNECTED)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            return;
        }
        OutgoingVideoState outgoingvideostate = mOutgoingVideoState;
        mOutgoingVideoState = OutgoingVideoState.DISCONNECTED;
        long l = SystemClock.elapsedRealtime() - mVideoOutgoingStart;
        b(l, disconnectreason.name());
        if (outgoingvideostate == OutgoingVideoState.CONNECTING)
        {
            c(l, disconnectreason.name());
        } else
        {
            d(l, disconnectreason.name());
        }
        b(disconnectreason.name());
    }

    public void a()
    {
        a("startHoldingToStream()");
    }

    protected void a(long l)
    {
        (new EasyMetric("HERE_OUTGOING_ACKED")).a(l).c();
    }

    protected void a(long l, String s)
    {
        (new EasyMetric("HERE_INCOMING_SESSION_END")).a(l).a("reason", s).c();
    }

    protected void a(long l, boolean flag)
    {
        EasyMetric easymetric = new EasyMetric("HERE_OUTGOING_SESSION_START");
        if (l != -1L)
        {
            easymetric.a(l);
        }
        easymetric.a("is_connected_to_scope", Boolean.valueOf(flag)).c();
    }

    public void a(SetupPhase setupphase)
    {
        EasyMetric easymetric = new EasyMetric(setupphase.name());
        long l = SystemClock.elapsedRealtime();
        if (setupphase == SetupPhase.HERE_AVAILABLE)
        {
            mHereAvailableTimestamp = l;
        } else
        {
            easymetric.a(l - mPreviousSetupEventTimestamp);
            easymetric.a("timeToEvent", b(l - mPreviousSetupEventTimestamp));
        }
        if (setupphase == SetupPhase.HERE_PUBLISHED && mHereAvailableTimestamp != -1L)
        {
            easymetric.a("timeToFirstEvent", b(l - mHereAvailableTimestamp));
            mHereAvailableTimestamp = -1L;
        }
        easymetric.c();
        mPreviousSetupEventTimestamp = l;
    }

    public void a(DisconnectReason disconnectreason)
    {
        d(disconnectreason);
    }

    public void a(boolean flag)
    {
        if (mIsVideoIncoming == flag)
        {
            return;
        }
        mIsVideoIncoming = flag;
        if (mIsVideoIncoming)
        {
            f();
            mVideoIncomingStart = SystemClock.elapsedRealtime();
        } else
        {
            a(SystemClock.elapsedRealtime() - mVideoIncomingStart, ((String) (null)));
        }
        b((new StringBuilder()).append("setIncomingVideo(").append(Boolean.toString(flag)).append(")").toString());
    }

    public void b()
    {
        mAdlConnectedToScope = true;
    }

    protected void b(long l, String s)
    {
        (new EasyMetric("HERE_END")).a(l).a("reason", s).c();
    }

    public void b(DisconnectReason disconnectreason)
    {
        d(disconnectreason);
    }

    public void b(boolean flag)
    {
        long l = -1L;
        boolean flag1;
        if (mTimeStartCanStreamVideo != l)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag == flag1)
        {
            return;
        }
        if (flag)
        {
            l = SystemClock.elapsedRealtime();
        }
        mTimeStartCanStreamVideo = l;
    }

    public void c()
    {
        if (mOutgoingVideoState == OutgoingVideoState.CONNECTING)
        {
            mOutgoingVideoState = OutgoingVideoState.CONNECTED;
            long l = SystemClock.elapsedRealtime() - mVideoOutgoingStart;
            a(SetupPhase.HERE_CONFIRMED);
            a(l);
        }
    }

    protected void c(long l, String s)
    {
        (new EasyMetric("HERE_CONNECTING_STATE_TERMINATED")).a(l).a("reason", s).c();
    }

    public void c(DisconnectReason disconnectreason)
    {
        mAdlConnectedToScope = false;
        d(disconnectreason);
    }

    public void c(boolean flag)
    {
        EasyMetric easymetric = new EasyMetric("HERE_PUBLISH_LOCKED");
        String s;
        if (flag)
        {
            s = "bottom";
        } else
        {
            s = "top";
        }
        easymetric.a("position", s).c();
    }

    public void d()
    {
        mStartOfVideoStream = SystemClock.elapsedRealtime();
    }

    protected void d(long l, String s)
    {
        (new EasyMetric("HERE_CONNECTED_STATE_TERMINATED")).a(l).a("reason", s).c();
    }

    public void e()
    {
        if (mStartOfVideoStream == -1L)
        {
            return;
        } else
        {
            long l = SystemClock.elapsedRealtime() - mStartOfVideoStream;
            mStartOfVideoStream = -1L;
            (new EasyMetric("HERE_KEYFRAME_RECEIVED")).a(l).c();
            return;
        }
    }

    protected void e(long l, String s)
    {
        (new EasyMetric("HERE_SESSION_END")).a(l).a("reason", s).c();
    }

    protected void f()
    {
        (new EasyMetric("HERE_INCOMING_SESSION_START")).c();
    }

    protected void g()
    {
        (new EasyMetric("HERE_SESSION_START")).c();
    }
}
