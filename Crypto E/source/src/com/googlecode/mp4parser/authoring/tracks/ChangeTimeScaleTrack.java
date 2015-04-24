// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import java.util.List;
import java.util.logging.Logger;

public class ChangeTimeScaleTrack
    implements Track
{

    private static final Logger d = Logger.getLogger(com/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack.getName());
    Track a;
    long b[];
    long c;

    public List a()
    {
        return a.a();
    }

    public long[] b()
    {
        return b;
    }

    public TrackMetaData c()
    {
        TrackMetaData trackmetadata = (TrackMetaData)a.c().clone();
        trackmetadata.a(c);
        return trackmetadata;
    }

    public void close()
    {
        a.close();
    }

    public String d()
    {
        return a.d();
    }

    public String toString()
    {
        return (new StringBuilder("ChangeTimeScaleTrack{source=")).append(a).append('}').toString();
    }

}
