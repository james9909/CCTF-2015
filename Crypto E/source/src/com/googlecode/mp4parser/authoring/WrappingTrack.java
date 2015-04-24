// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring;

import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.authoring:
//            Track, TrackMetaData

public class WrappingTrack
    implements Track
{

    Track a;

    public List a()
    {
        return a.a();
    }

    public long[] b()
    {
        return a.b();
    }

    public TrackMetaData c()
    {
        return a.c();
    }

    public void close()
    {
        a.close();
    }

    public String d()
    {
        return a.d();
    }
}
