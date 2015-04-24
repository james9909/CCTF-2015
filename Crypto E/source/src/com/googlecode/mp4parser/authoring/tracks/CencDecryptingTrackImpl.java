// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.boxes.cenc.CencDecryptingSampleList;
import java.util.List;

public class CencDecryptingTrackImpl extends AbstractTrack
{

    CencDecryptingSampleList d;
    Track e;

    public List a()
    {
        return d;
    }

    public long[] b()
    {
        return e.b();
    }

    public TrackMetaData c()
    {
        return e.c();
    }

    public void close()
    {
        e.close();
    }

    public String d()
    {
        return e.d();
    }
}
