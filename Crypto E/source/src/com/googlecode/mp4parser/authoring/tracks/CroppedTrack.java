// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import java.util.List;

public class CroppedTrack extends AbstractTrack
{

    static final boolean e;
    Track d;
    private int f;
    private int g;

    public List a()
    {
        return d.a().subList(f, g);
    }

    public long[] b()
    {
        this;
        JVM INSTR monitorenter ;
        long al[];
        al = new long[g - f];
        System.arraycopy(d.b(), f, al, 0, al.length);
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

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/authoring/tracks/CroppedTrack.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = flag;
    }
}
