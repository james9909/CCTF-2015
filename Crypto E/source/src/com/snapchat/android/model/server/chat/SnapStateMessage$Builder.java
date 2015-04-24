// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            SnapStateMessage, SignedPayload, SCMessage

public static class er extends er
{

    private boolean mReplayed;
    private long mScreenshotCount;
    private String mSnapId;
    private long mTimestamp;
    private boolean mViewed;

    public volatile SCMessage build()
    {
        return build();
    }

    public SnapStateMessage build()
    {
        return new SnapStateMessage(this);
    }

    public build setReplayed(boolean flag)
    {
        mReplayed = flag;
        return this;
    }

    public mReplayed setScreenshotCount(long l)
    {
        mScreenshotCount = l;
        return this;
    }

    public mScreenshotCount setSnapId(String s)
    {
        mSnapId = s;
        return this;
    }

    public mSnapId setTimestamp(long l)
    {
        mTimestamp = l;
        return this;
    }

    public mTimestamp setViewed(boolean flag)
    {
        mViewed = flag;
        return this;
    }






    public er(String s, List list, SignedPayload signedpayload)
    {
        super("snap_state", s, list, signedpayload);
    }
}
