// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import java.util.List;

public class MP3TrackImpl extends AbstractTrack
{
    class MP3Header
    {
    }


    private static final int e[];
    private static final int f[];
    TrackMetaData d;
    private final DataSource g;
    private List h;
    private long i[];

    public List a()
    {
        return h;
    }

    public long[] b()
    {
        return i;
    }

    public TrackMetaData c()
    {
        return d;
    }

    public void close()
    {
        g.close();
    }

    public String d()
    {
        return "soun";
    }

    public String toString()
    {
        return "MP3TrackImpl";
    }

    static 
    {
        int ai[] = new int[4];
        ai[0] = 44100;
        ai[1] = 48000;
        ai[2] = 32000;
        e = ai;
        int ai1[] = new int[16];
        ai1[1] = 32000;
        ai1[2] = 40000;
        ai1[3] = 48000;
        ai1[4] = 56000;
        ai1[5] = 64000;
        ai1[6] = 0x13880;
        ai1[7] = 0x17700;
        ai1[8] = 0x1b580;
        ai1[9] = 0x1f400;
        ai1[10] = 0x27100;
        ai1[11] = 0x2ee00;
        ai1[12] = 0x36b00;
        ai1[13] = 0x3e800;
        ai1[14] = 0x4e200;
        f = ai1;
    }
}
