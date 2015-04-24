// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.List;

public class EC3TrackImpl extends AbstractTrack
{
    public static class BitStreamInfo extends com.googlecode.mp4parser.boxes.EC3SpecificBox.Entry
    {

        public int a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;

        public String toString()
        {
            return (new StringBuilder("BitStreamInfo{frameSize=")).append(a).append(", substreamid=").append(b).append(", bitrate=").append(c).append(", samplerate=").append(d).append(", strmtyp=").append(e).append(", chanmap=").append(f).append('}').toString();
        }

        public BitStreamInfo()
        {
        }
    }


    TrackMetaData d;
    private final DataSource e;
    private int f;
    private int g;
    private List h;
    private List i;
    private long j[];

    static DataSource a(EC3TrackImpl ec3trackimpl)
    {
        return ec3trackimpl.e;
    }

    static int b(EC3TrackImpl ec3trackimpl)
    {
        return ec3trackimpl.g;
    }

    public List a()
    {
        return i;
    }

    public long[] b()
    {
        return j;
    }

    public TrackMetaData c()
    {
        return d;
    }

    public void close()
    {
        e.close();
    }

    public String d()
    {
        return "soun";
    }

    public String toString()
    {
        return (new StringBuilder("EC3TrackImpl{bitrate=")).append(f).append(", bitStreamInfos=").append(h).append('}').toString();
    }

    // Unreferenced inner class com/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$1

/* anonymous class */
    class _cls1
        implements Sample
    {

        final EC3TrackImpl a;
        private final int b;

        public long a()
        {
            return (long)EC3TrackImpl.b(a);
        }

        public void a(WritableByteChannel writablebytechannel)
        {
            EC3TrackImpl.a(a).a(b, EC3TrackImpl.b(a), writablebytechannel);
        }

        public ByteBuffer b()
        {
            ByteBuffer bytebuffer;
            try
            {
                bytebuffer = EC3TrackImpl.a(a).a(b, EC3TrackImpl.b(a));
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException(ioexception);
            }
            return bytebuffer;
        }
    }

}
