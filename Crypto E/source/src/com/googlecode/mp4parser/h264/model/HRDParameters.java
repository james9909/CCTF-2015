// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.h264.model;

import java.util.Arrays;

public class HRDParameters
{

    public int a;
    public int b;
    public int c;
    public int d[];
    public int e[];
    public boolean f[];
    public int g;
    public int h;
    public int i;
    public int j;

    public HRDParameters()
    {
    }

    public String toString()
    {
        return (new StringBuilder("HRDParameters{cpb_cnt_minus1=")).append(a).append(", bit_rate_scale=").append(b).append(", cpb_size_scale=").append(c).append(", bit_rate_value_minus1=").append(Arrays.toString(d)).append(", cpb_size_value_minus1=").append(Arrays.toString(e)).append(", cbr_flag=").append(Arrays.toString(f)).append(", initial_cpb_removal_delay_length_minus1=").append(g).append(", cpb_removal_delay_length_minus1=").append(h).append(", dpb_output_delay_length_minus1=").append(i).append(", time_offset_length=").append(j).append('}').toString();
    }
}
