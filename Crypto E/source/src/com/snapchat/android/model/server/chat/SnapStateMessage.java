// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConversationMessage, SignedPayload, SCMessage

public class SnapStateMessage extends ConversationMessage
{
    public static class Builder extends ConversationMessage.Builder
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

        public Builder setReplayed(boolean flag)
        {
            mReplayed = flag;
            return this;
        }

        public Builder setScreenshotCount(long l)
        {
            mScreenshotCount = l;
            return this;
        }

        public Builder setSnapId(String s)
        {
            mSnapId = s;
            return this;
        }

        public Builder setTimestamp(long l)
        {
            mTimestamp = l;
            return this;
        }

        public Builder setViewed(boolean flag)
        {
            mViewed = flag;
            return this;
        }






        public Builder(String s, List list, SignedPayload signedpayload)
        {
            super("snap_state", s, list, signedpayload);
        }
    }


    public static final String TYPE = "snap_state";
    private boolean replayed;
    private long screenshot_count;
    private String snap_id;
    private long timestamp;
    private boolean viewed;

    protected SnapStateMessage(Builder builder)
    {
        super(builder);
        timestamp = builder.mTimestamp;
        snap_id = builder.mSnapId;
        viewed = builder.mViewed;
        replayed = builder.mReplayed;
        screenshot_count = builder.mScreenshotCount;
    }

    public boolean canSendOverHTTP()
    {
        return false;
    }

    public long getScreenshotCount()
    {
        return screenshot_count;
    }

    public String getSnapId()
    {
        return snap_id;
    }

    public long getTimestamp()
    {
        return timestamp;
    }

    public boolean isReplayed()
    {
        return replayed;
    }

    public boolean isViewed()
    {
        return viewed;
    }

    public boolean needsACK()
    {
        return false;
    }

    public String toString()
    {
        return (new StringBuilder()).append("SnapStateMessage{timestamp=").append(timestamp).append(", snap_id='").append(snap_id).append('\'').append(", viewed=").append(viewed).append(", replayed=").append(replayed).append(", screenshot_count=").append(screenshot_count).append(", conv_id=").append(getHeader().getConvId()).append('}').toString();
    }
}
