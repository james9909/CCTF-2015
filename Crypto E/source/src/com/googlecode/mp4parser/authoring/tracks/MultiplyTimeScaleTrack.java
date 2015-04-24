// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import java.util.List;

public class MultiplyTimeScaleTrack
    implements Track
{

    Track a;
    private int b;

    public List a()
    {
        return a.a();
    }

    public long[] b()
    {
        long al[] = new long[a.b().length];
        int i = 0;
        do
        {
            if (i >= a.b().length)
            {
                return al;
            }
            al[i] = a.b()[i] * (long)b;
            i++;
        } while (true);
    }

    public TrackMetaData c()
    {
        TrackMetaData trackmetadata = (TrackMetaData)a.c().clone();
        trackmetadata.a(a.c().a() * (long)b);
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
        return (new StringBuilder("MultiplyTimeScaleTrack{source=")).append(a).append('}').toString();
    }
}
