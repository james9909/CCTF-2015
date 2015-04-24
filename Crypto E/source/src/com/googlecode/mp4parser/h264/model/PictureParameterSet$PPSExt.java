// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.h264.model;


// Referenced classes of package com.googlecode.mp4parser.h264.model:
//            ScalingMatrix, PictureParameterSet

public static class b
{

    public boolean a;
    public ScalingMatrix b;
    public int c;
    public boolean d[];

    public String toString()
    {
        return (new StringBuilder("PPSExt{transform_8x8_mode_flag=")).append(a).append(", scalindMatrix=").append(b).append(", second_chroma_qp_index_offset=").append(c).append(", pic_scaling_list_present_flag=").append(d).append('}').toString();
    }

    public ()
    {
        b = new ScalingMatrix();
    }
}
