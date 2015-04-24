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

public class DTSTrackImpl extends AbstractTrack
{

    TrackMetaData d;
    int e;
    private long f[];
    private DataSource g;
    private List h;

    static DataSource a(DTSTrackImpl dtstrackimpl)
    {
        return dtstrackimpl.g;
    }

    public List a()
    {
        return h;
    }

    public long[] b()
    {
        return f;
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

    // Unreferenced inner class com/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1

/* anonymous class */
    class _cls1
        implements Sample
    {

        final DTSTrackImpl a;
        private final int b;

        public long a()
        {
            return (long)a.e;
        }

        public void a(WritableByteChannel writablebytechannel)
        {
            DTSTrackImpl.a(a).a(b, a.e, writablebytechannel);
        }

        public ByteBuffer b()
        {
            ByteBuffer bytebuffer;
            try
            {
                bytebuffer = DTSTrackImpl.a(a).a(b, a.e);
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException(ioexception);
            }
            return bytebuffer;
        }
    }

}
