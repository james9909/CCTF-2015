// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.h264.model.SeqParameterSet;
import com.googlecode.mp4parser.h264.model.VUIParameters;

// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            H264TrackImpl

public class 
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
