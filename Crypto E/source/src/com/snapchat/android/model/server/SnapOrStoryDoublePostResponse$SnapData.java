// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;


// Referenced classes of package com.snapchat.android.model.server:
//            SnapOrStoryDoublePostResponse

public static class 
{

    public String id;
    public long timestamp;

    public String toString()
    {
        return (new StringBuilder()).append("SnapData{id='").append(id).append('\'').append(", timestamp=").append(timestamp).append('}').toString();
    }

    public ()
    {
    }
}
