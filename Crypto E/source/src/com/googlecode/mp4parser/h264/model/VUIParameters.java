// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.h264.model;


// Referenced classes of package com.googlecode.mp4parser.h264.model:
//            HRDParameters, AspectRatio

public class VUIParameters
{
    public static class BitstreamRestriction
    {

        public boolean a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder("BitstreamRestriction{");
            stringbuilder.append("motion_vectors_over_pic_boundaries_flag=").append(a);
            stringbuilder.append(", max_bytes_per_pic_denom=").append(b);
            stringbuilder.append(", max_bits_per_mb_denom=").append(c);
            stringbuilder.append(", log2_max_mv_length_horizontal=").append(d);
            stringbuilder.append(", log2_max_mv_length_vertical=").append(e);
            stringbuilder.append(", num_reorder_frames=").append(f);
            stringbuilder.append(", max_dec_frame_buffering=").append(g);
            stringbuilder.append('}');
            return stringbuilder.toString();
        }

        public BitstreamRestriction()
        {
        }
    }


    public boolean a;
    public int b;
    public int c;
    public boolean d;
    public boolean e;
    public boolean f;
    public int g;
    public boolean h;
    public boolean i;
    public int j;
    public int k;
    public int l;
    public boolean m;
    public int n;
    public int o;
    public boolean p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public HRDParameters v;
    public HRDParameters w;
    public BitstreamRestriction x;
    public AspectRatio y;

    public VUIParameters()
    {
    }

    public String toString()
    {
        return (new StringBuilder("VUIParameters{\naspect_ratio_info_present_flag=")).append(a).append("\n").append(", sar_width=").append(b).append("\n").append(", sar_height=").append(c).append("\n").append(", overscan_info_present_flag=").append(d).append("\n").append(", overscan_appropriate_flag=").append(e).append("\n").append(", video_signal_type_present_flag=").append(f).append("\n").append(", video_format=").append(g).append("\n").append(", video_full_range_flag=").append(h).append("\n").append(", colour_description_present_flag=").append(i).append("\n").append(", colour_primaries=").append(j).append("\n").append(", transfer_characteristics=").append(k).append("\n").append(", matrix_coefficients=").append(l).append("\n").append(", chroma_loc_info_present_flag=").append(m).append("\n").append(", chroma_sample_loc_type_top_field=").append(n).append("\n").append(", chroma_sample_loc_type_bottom_field=").append(o).append("\n").append(", timing_info_present_flag=").append(p).append("\n").append(", num_units_in_tick=").append(q).append("\n").append(", time_scale=").append(r).append("\n").append(", fixed_frame_rate_flag=").append(s).append("\n").append(", low_delay_hrd_flag=").append(t).append("\n").append(", pic_struct_present_flag=").append(u).append("\n").append(", nalHRDParams=").append(v).append("\n").append(", vclHRDParams=").append(w).append("\n").append(", bitstreamRestriction=").append(x).append("\n").append(", aspect_ratio=").append(y).append("\n").append('}').toString();
    }
}
