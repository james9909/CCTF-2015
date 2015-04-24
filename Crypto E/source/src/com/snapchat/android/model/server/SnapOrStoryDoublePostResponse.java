// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;

import java.util.List;
import java.util.Map;

public class SnapOrStoryDoublePostResponse
{
    public static class SnapData
    {

        public String id;
        public long timestamp;

        public String toString()
        {
            return (new StringBuilder()).append("SnapData{id='").append(id).append('\'').append(", timestamp=").append(timestamp).append('}').toString();
        }

        public SnapData()
        {
        }
    }


    public List group_stories;
    public com.snapchat.android.api.PostStorySnapTask.PostStorySnapJsonResponse json;
    public Map snaps;
    public boolean success;

    public SnapOrStoryDoublePostResponse()
    {
    }

    public String toString()
    {
        return (new StringBuilder()).append("SnapOrStoryDoublePostResponse{success=").append(success).append(", snaps=").append(snaps).append(", json=").append(json).append('}').toString();
    }
}
