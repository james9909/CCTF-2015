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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AACTrackImpl extends AbstractTrack
{
    class AdtsHeader
    {

        int a;
        int b;
    }


    static Map d;
    public static Map e;
    TrackMetaData f;
    long g[];
    AdtsHeader h;
    private DataSource i;
    private List j;

    static DataSource a(AACTrackImpl aactrackimpl)
    {
        return aactrackimpl.i;
    }

    public List a()
    {
        return j;
    }

    public long[] b()
    {
        return g;
    }

    public TrackMetaData c()
    {
        return f;
    }

    public void close()
    {
        i.close();
    }

    public String d()
    {
        return "soun";
    }

    public String toString()
    {
        return (new StringBuilder("AACTrackImpl{sampleRate=")).append(h.a).append(", channelconfig=").append(h.b).append('}').toString();
    }

    static 
    {
        d = new HashMap();
        d.put(Integer.valueOf(1), "AAC Main");
        d.put(Integer.valueOf(2), "AAC LC (Low Complexity)");
        d.put(Integer.valueOf(3), "AAC SSR (Scalable Sample Rate)");
        d.put(Integer.valueOf(4), "AAC LTP (Long Term Prediction)");
        d.put(Integer.valueOf(5), "SBR (Spectral Band Replication)");
        d.put(Integer.valueOf(6), "AAC Scalable");
        d.put(Integer.valueOf(7), "TwinVQ");
        d.put(Integer.valueOf(8), "CELP (Code Excited Linear Prediction)");
        d.put(Integer.valueOf(9), "HXVC (Harmonic Vector eXcitation Coding)");
        d.put(Integer.valueOf(10), "Reserved");
        d.put(Integer.valueOf(11), "Reserved");
        d.put(Integer.valueOf(12), "TTSI (Text-To-Speech Interface)");
        d.put(Integer.valueOf(13), "Main Synthesis");
        d.put(Integer.valueOf(14), "Wavetable Synthesis");
        d.put(Integer.valueOf(15), "General MIDI");
        d.put(Integer.valueOf(16), "Algorithmic Synthesis and Audio Effects");
        d.put(Integer.valueOf(17), "ER (Error Resilient) AAC LC");
        d.put(Integer.valueOf(18), "Reserved");
        d.put(Integer.valueOf(19), "ER AAC LTP");
        d.put(Integer.valueOf(20), "ER AAC Scalable");
        d.put(Integer.valueOf(21), "ER TwinVQ");
        d.put(Integer.valueOf(22), "ER BSAC (Bit-Sliced Arithmetic Coding)");
        d.put(Integer.valueOf(23), "ER AAC LD (Low Delay)");
        d.put(Integer.valueOf(24), "ER CELP");
        d.put(Integer.valueOf(25), "ER HVXC");
        d.put(Integer.valueOf(26), "ER HILN (Harmonic and Individual Lines plus Noise)");
        d.put(Integer.valueOf(27), "ER Parametric");
        d.put(Integer.valueOf(28), "SSC (SinuSoidal Coding)");
        d.put(Integer.valueOf(29), "PS (Parametric Stereo)");
        d.put(Integer.valueOf(30), "MPEG Surround");
        d.put(Integer.valueOf(31), "(Escape value)");
        d.put(Integer.valueOf(32), "Layer-1");
        d.put(Integer.valueOf(33), "Layer-2");
        d.put(Integer.valueOf(34), "Layer-3");
        d.put(Integer.valueOf(35), "DST (Direct Stream Transfer)");
        d.put(Integer.valueOf(36), "ALS (Audio Lossless)");
        d.put(Integer.valueOf(37), "SLS (Scalable LosslesS)");
        d.put(Integer.valueOf(38), "SLS non-core");
        d.put(Integer.valueOf(39), "ER AAC ELD (Enhanced Low Delay)");
        d.put(Integer.valueOf(40), "SMR (Symbolic Music Representation) Simple");
        d.put(Integer.valueOf(41), "SMR Main");
        d.put(Integer.valueOf(42), "USAC (Unified Speech and Audio Coding) (no SBR)");
        d.put(Integer.valueOf(43), "SAOC (Spatial Audio Object Coding)");
        d.put(Integer.valueOf(44), "LD MPEG Surround");
        d.put(Integer.valueOf(45), "USAC");
        e = new HashMap();
        e.put(Integer.valueOf(0x17700), Integer.valueOf(0));
        e.put(Integer.valueOf(0x15888), Integer.valueOf(1));
        e.put(Integer.valueOf(64000), Integer.valueOf(2));
        e.put(Integer.valueOf(48000), Integer.valueOf(3));
        e.put(Integer.valueOf(44100), Integer.valueOf(4));
        e.put(Integer.valueOf(32000), Integer.valueOf(5));
        e.put(Integer.valueOf(24000), Integer.valueOf(6));
        e.put(Integer.valueOf(22050), Integer.valueOf(7));
        e.put(Integer.valueOf(16000), Integer.valueOf(8));
        e.put(Integer.valueOf(12000), Integer.valueOf(9));
        e.put(Integer.valueOf(11025), Integer.valueOf(10));
        e.put(Integer.valueOf(8000), Integer.valueOf(11));
        e.put(Integer.valueOf(0), Integer.valueOf(0x17700));
        e.put(Integer.valueOf(1), Integer.valueOf(0x15888));
        e.put(Integer.valueOf(2), Integer.valueOf(64000));
        e.put(Integer.valueOf(3), Integer.valueOf(48000));
        e.put(Integer.valueOf(4), Integer.valueOf(44100));
        e.put(Integer.valueOf(5), Integer.valueOf(32000));
        e.put(Integer.valueOf(6), Integer.valueOf(24000));
        e.put(Integer.valueOf(7), Integer.valueOf(22050));
        e.put(Integer.valueOf(8), Integer.valueOf(16000));
        e.put(Integer.valueOf(9), Integer.valueOf(12000));
        e.put(Integer.valueOf(10), Integer.valueOf(11025));
        e.put(Integer.valueOf(11), Integer.valueOf(8000));
    }

    // Unreferenced inner class com/googlecode/mp4parser/authoring/tracks/AACTrackImpl$1

/* anonymous class */
    class _cls1
        implements Sample
    {

        final AACTrackImpl a;
        private final long b;
        private final long c;

        public long a()
        {
            return c;
        }

        public void a(WritableByteChannel writablebytechannel)
        {
            AACTrackImpl.a(a).a(b, c, writablebytechannel);
        }

        public ByteBuffer b()
        {
            ByteBuffer bytebuffer;
            try
            {
                bytebuffer = AACTrackImpl.a(a).a(b, c);
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException(ioexception);
            }
            return bytebuffer;
        }
    }

}
