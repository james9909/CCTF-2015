// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.h264.model;


// Referenced classes of package com.googlecode.mp4parser.h264.model:
//            BitstreamElement, VUIParameters, ScalingMatrix, ChromaFormat

public class SeqParameterSet extends BitstreamElement
{

    public int A;
    public int B;
    public int C;
    public boolean D;
    public boolean E;
    public boolean F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K[];
    public VUIParameters L;
    public ScalingMatrix M;
    public int N;
    public int a;
    public boolean b;
    public boolean c;
    public boolean d;
    public int e;
    public boolean f;
    public boolean g;
    public boolean h;
    public ChromaFormat i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public int q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public int x;
    public int y;
    public boolean z;

    public SeqParameterSet()
    {
    }

    public String toString()
    {
        return (new StringBuilder("SeqParameterSet{ \n        pic_order_cnt_type=")).append(a).append(", \n        field_pic_flag=").append(b).append(", \n        delta_pic_order_always_zero_flag=").append(c).append(", \n        weighted_pred_flag=").append(d).append(", \n        weighted_bipred_idc=").append(e).append(", \n        entropy_coding_mode_flag=").append(f).append(", \n        mb_adaptive_frame_field_flag=").append(g).append(", \n        direct_8x8_inference_flag=").append(h).append(", \n        chroma_format_idc=").append(i).append(", \n        log2_max_frame_num_minus4=").append(j).append(", \n        log2_max_pic_order_cnt_lsb_minus4=").append(k).append(", \n        pic_height_in_map_units_minus1=").append(l).append(", \n        pic_width_in_mbs_minus1=").append(m).append(", \n        bit_depth_luma_minus8=").append(n).append(", \n        bit_depth_chroma_minus8=").append(o).append(", \n        qpprime_y_zero_transform_bypass_flag=").append(p).append(", \n        profile_idc=").append(q).append(", \n        constraint_set_0_flag=").append(r).append(", \n        constraint_set_1_flag=").append(s).append(", \n        constraint_set_2_flag=").append(t).append(", \n        constraint_set_3_flag=").append(u).append(", \n        constraint_set_4_flag=").append(v).append(", \n        constraint_set_5_flag=").append(w).append(", \n        level_idc=").append(x).append(", \n        seq_parameter_set_id=").append(y).append(", \n        residual_color_transform_flag=").append(z).append(", \n        offset_for_non_ref_pic=").append(A).append(", \n        offset_for_top_to_bottom_field=").append(B).append(", \n        num_ref_frames=").append(C).append(", \n        gaps_in_frame_num_value_allowed_flag=").append(D).append(", \n        frame_mbs_only_flag=").append(E).append(", \n        frame_cropping_flag=").append(F).append(", \n        frame_crop_left_offset=").append(G).append(", \n        frame_crop_right_offset=").append(H).append(", \n        frame_crop_top_offset=").append(I).append(", \n        frame_crop_bottom_offset=").append(J).append(", \n        offsetForRefFrame=").append(K).append(", \n        vuiParams=").append(L).append(", \n        scalingMatrix=").append(M).append(", \n        num_ref_frames_in_pic_order_cnt_cycle=").append(N).append('}').toString();
    }
}
