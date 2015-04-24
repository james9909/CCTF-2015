// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import java.util.AbstractList;
import java.util.List;

public class ReplaceSampleTrack extends AbstractTrack
{
    class ReplaceASingleEntryList extends AbstractList
    {

        final ReplaceSampleTrack a;

        public Sample a(int i)
        {
            if (ReplaceSampleTrack.a(a) == (long)i)
            {
                return ReplaceSampleTrack.b(a);
            } else
            {
                return (Sample)a.d.a().get(i);
            }
        }

        public Object get(int i)
        {
            return a(i);
        }

        public int size()
        {
            return a.d.a().size();
        }
    }


    Track d;
    private long e;
    private Sample f;
    private List g;

    static long a(ReplaceSampleTrack replacesampletrack)
    {
        return replacesampletrack.e;
    }

    static Sample b(ReplaceSampleTrack replacesampletrack)
    {
        return replacesampletrack.f;
    }

    public List a()
    {
        return g;
    }

    public long[] b()
    {
        this;
        JVM INSTR monitorenter ;
        long al[] = d.b();
        this;
        JVM INSTR monitorexit ;
        return al;
        Exception exception;
        exception;
        throw exception;
    }

    public TrackMetaData c()
    {
        return d.c();
    }

    public void close()
    {
        d.close();
    }

    public String d()
    {
        return d.d();
    }
}
