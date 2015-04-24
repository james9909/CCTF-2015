// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.h264.model.SeqParameterSet;
import com.googlecode.mp4parser.h264.model.VUIParameters;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.logging.Logger;

public class H264TrackImpl extends AbstractTrack
{
    class _cls1FirstVclNalDetector
    {
    }

    public class ByteBufferBackedInputStream extends InputStream
    {

        private final ByteBuffer a;

        public int read()
        {
            if (!a.hasRemaining())
            {
                return -1;
            } else
            {
                return 0xff & a.get();
            }
        }

        public int read(byte abyte0[], int j, int k)
        {
            if (!a.hasRemaining())
            {
                return -1;
            } else
            {
                int l = Math.min(k, a.remaining());
                a.get(abyte0, j, l);
                return l;
            }
        }
    }

    class LookAhead
    {
    }

    public class SEIMessage
    {

        int a;
        int b;
        int c;
        int d;
        boolean e;
        int f;
        int g;
        int h;
        int i;
        int j;
        int k;
        int l;
        int m;
        int n;
        int o;
        int p;
        int q;
        int r;
        SeqParameterSet s;

        public String toString()
        {
            String s1 = (new StringBuilder("SEIMessage{payloadType=")).append(a).append(", payloadSize=").append(b).toString();
            if (a == 1)
            {
                if (s.L.v != null || s.L.w != null)
                {
                    s1 = (new StringBuilder(String.valueOf(s1))).append(", cpb_removal_delay=").append(c).append(", dpb_removal_delay=").append(d).toString();
                }
                if (s.L.u)
                {
                    s1 = (new StringBuilder(String.valueOf(s1))).append(", pic_struct=").append(f).toString();
                    if (e)
                    {
                        s1 = (new StringBuilder(String.valueOf(s1))).append(", ct_type=").append(g).append(", nuit_field_based_flag=").append(h).append(", counting_type=").append(i).append(", full_timestamp_flag=").append(j).append(", discontinuity_flag=").append(k).append(", cnt_dropped_flag=").append(l).append(", n_frames=").append(m).append(", seconds_value=").append(n).append(", minutes_value=").append(o).append(", hours_value=").append(p).append(", time_offset_length=").append(q).append(", time_offset=").append(r).toString();
                    }
                }
            }
            return (new StringBuilder(String.valueOf(s1))).append('}').toString();
        }
    }

    public static class SliceHeader
    {

        public int a;
        public SliceType b;
        public int c;
        public int d;
        public int e;
        public boolean f;
        public boolean g;
        public int h;
        public int i;
        public int j;

        public String toString()
        {
            return (new StringBuilder("SliceHeader{first_mb_in_slice=")).append(a).append(", slice_type=").append(b).append(", pic_parameter_set_id=").append(c).append(", colour_plane_id=").append(d).append(", frame_num=").append(e).append(", field_pic_flag=").append(f).append(", bottom_field_flag=").append(g).append(", idr_pic_id=").append(h).append(", pic_order_cnt_lsb=").append(i).append(", delta_pic_order_cnt_bottom=").append(j).append('}').toString();
        }
    }

    public static final class SliceHeader.SliceType extends Enum
    {

        public static final SliceHeader.SliceType a;
        public static final SliceHeader.SliceType b;
        public static final SliceHeader.SliceType c;
        public static final SliceHeader.SliceType d;
        public static final SliceHeader.SliceType e;
        private static final SliceHeader.SliceType f[];

        public static SliceHeader.SliceType valueOf(String s)
        {
            return (SliceHeader.SliceType)Enum.valueOf(com/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType, s);
        }

        public static SliceHeader.SliceType[] values()
        {
            SliceHeader.SliceType aslicetype[] = f;
            int j = aslicetype.length;
            SliceHeader.SliceType aslicetype1[] = new SliceHeader.SliceType[j];
            System.arraycopy(aslicetype, 0, aslicetype1, 0, j);
            return aslicetype1;
        }

        static 
        {
            a = new SliceHeader.SliceType("P", 0);
            b = new SliceHeader.SliceType("B", 1);
            c = new SliceHeader.SliceType("I", 2);
            d = new SliceHeader.SliceType("SP", 3);
            e = new SliceHeader.SliceType("SI", 4);
            SliceHeader.SliceType aslicetype[] = new SliceHeader.SliceType[5];
            aslicetype[0] = a;
            aslicetype[1] = b;
            aslicetype[2] = c;
            aslicetype[3] = d;
            aslicetype[4] = e;
            f = aslicetype;
        }

        private SliceHeader.SliceType(String s, int j)
        {
            super(s, j);
        }
    }


    static int d = 0x3fffc00;
    private static final Logger f = Logger.getLogger(com/googlecode/mp4parser/authoring/tracks/H264TrackImpl.getName());
    TrackMetaData e;
    private DataSource g;
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
        return e;
    }

    public void close()
    {
        g.close();
    }

    public String d()
    {
        return "vide";
    }

}
