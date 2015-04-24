// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import java.util.List;

public class SilenceTrackImpl
    implements Track
{

    Track a;
    List b;
    long c[];

    public List a()
    {
        return b;
    }

    public long[] b()
    {
        return c;
    }

    public TrackMetaData c()
    {
        return a.c();
    }

    public void close()
    {
    }

    public String d()
    {
        return a.d();
    }
}
