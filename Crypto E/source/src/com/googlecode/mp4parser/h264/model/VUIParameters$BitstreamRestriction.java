// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.h264.model;


// Referenced classes of package com.googlecode.mp4parser.h264.model:
//            VUIParameters

public static class 
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

    public ()
    {
    }
}
