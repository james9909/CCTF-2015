// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.h264.model;

import java.util.Arrays;

// Referenced classes of package com.googlecode.mp4parser.h264.model:
//            BitstreamElement, ScalingMatrix

public class PictureParameterSet extends BitstreamElement
{
    public static class PPSExt
    {

        public boolean a;
        public ScalingMatrix b;
        public int c;
        public boolean d[];

        public String toString()
        {
            return (new StringBuilder("PPSExt{transform_8x8_mode_flag=")).append(a).append(", scalindMatrix=").append(b).append(", second_chroma_qp_index_offset=").append(c).append(", pic_scaling_list_present_flag=").append(d).append('}').toString();
        }

        public PPSExt()
        {
            b = new ScalingMatrix();
        }
    }


    public boolean a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public boolean g;
    public int h;
    public int i;
    public boolean j;
    public int k;
    public int l;
    public int m;
    public int n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r[];
    public int s[];
    public int t[];
    public boolean u;
    public int v[];
    public PPSExt w;

    public PictureParameterSet()
    {
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            PictureParameterSet pictureparameterset = (PictureParameterSet)obj;
            if (!Arrays.equals(s, pictureparameterset.s))
            {
                return false;
            }
            if (n != pictureparameterset.n)
            {
                return false;
            }
            if (p != pictureparameterset.p)
            {
                return false;
            }
            if (o != pictureparameterset.o)
            {
                return false;
            }
            if (a != pictureparameterset.a)
            {
                return false;
            }
            if (w == null)
            {
                if (pictureparameterset.w != null)
                {
                    return false;
                }
            } else
            if (!w.equals(pictureparameterset.w))
            {
                return false;
            }
            if (b != pictureparameterset.b)
            {
                return false;
            }
            if (c != pictureparameterset.c)
            {
                return false;
            }
            if (h != pictureparameterset.h)
            {
                return false;
            }
            if (l != pictureparameterset.l)
            {
                return false;
            }
            if (m != pictureparameterset.m)
            {
                return false;
            }
            if (g != pictureparameterset.g)
            {
                return false;
            }
            if (e != pictureparameterset.e)
            {
                return false;
            }
            if (q != pictureparameterset.q)
            {
                return false;
            }
            if (!Arrays.equals(t, pictureparameterset.t))
            {
                return false;
            }
            if (f != pictureparameterset.f)
            {
                return false;
            }
            if (u != pictureparameterset.u)
            {
                return false;
            }
            if (d != pictureparameterset.d)
            {
                return false;
            }
            if (!Arrays.equals(v, pictureparameterset.v))
            {
                return false;
            }
            if (i != pictureparameterset.i)
            {
                return false;
            }
            if (!Arrays.equals(r, pictureparameterset.r))
            {
                return false;
            }
            if (k != pictureparameterset.k)
            {
                return false;
            }
            if (j != pictureparameterset.j)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        char c1 = '\u04CF';
        int i1 = 31 * (31 * (31 + Arrays.hashCode(s)) + n);
        char c2;
        int j1;
        char c3;
        int k1;
        char c4;
        int l1;
        int i2;
        int j2;
        char c5;
        int k2;
        char c6;
        int l2;
        char c7;
        int i3;
        if (p)
        {
            c2 = c1;
        } else
        {
            c2 = '\u04D5';
        }
        j1 = 31 * (c2 + i1);
        if (o)
        {
            c3 = c1;
        } else
        {
            c3 = '\u04D5';
        }
        k1 = 31 * (c3 + j1);
        if (a)
        {
            c4 = c1;
        } else
        {
            c4 = '\u04D5';
        }
        l1 = 31 * (c4 + k1);
        if (w == null)
        {
            i2 = 0;
        } else
        {
            i2 = w.hashCode();
        }
        j2 = 31 * (31 * (31 * (31 * (31 * (31 * (i2 + l1) + b) + c) + h) + l) + m);
        if (g)
        {
            c5 = c1;
        } else
        {
            c5 = '\u04D5';
        }
        k2 = 31 * (31 * (c5 + j2) + e);
        if (q)
        {
            c6 = c1;
        } else
        {
            c6 = '\u04D5';
        }
        l2 = 31 * (31 * (31 * (c6 + k2) + Arrays.hashCode(t)) + f);
        if (u)
        {
            c7 = c1;
        } else
        {
            c7 = '\u04D5';
        }
        i3 = 31 * (31 * (31 * (31 * (31 * (31 * (c7 + l2) + d) + Arrays.hashCode(v)) + i) + Arrays.hashCode(r)) + k);
        if (!j)
        {
            c1 = '\u04D5';
        }
        return i3 + c1;
    }

    public String toString()
    {
        return (new StringBuilder("PictureParameterSet{\n       entropy_coding_mode_flag=")).append(a).append(",\n       num_ref_idx_l0_active_minus1=").append(b).append(",\n       num_ref_idx_l1_active_minus1=").append(c).append(",\n       slice_group_change_rate_minus1=").append(d).append(",\n       pic_parameter_set_id=").append(e).append(",\n       seq_parameter_set_id=").append(f).append(",\n       pic_order_present_flag=").append(g).append(",\n       num_slice_groups_minus1=").append(h).append(",\n       slice_group_map_type=").append(i).append(",\n       weighted_pred_flag=").append(j).append(",\n       weighted_bipred_idc=").append(k).append(",\n       pic_init_qp_minus26=").append(l).append(",\n       pic_init_qs_minus26=").append(m).append(",\n       chroma_qp_index_offset=").append(n).append(",\n       deblocking_filter_control_present_flag=").append(o).append(",\n       constrained_intra_pred_flag=").append(p).append(",\n       redundant_pic_cnt_present_flag=").append(q).append(",\n       top_left=").append(r).append(",\n       bottom_right=").append(s).append(",\n       run_length_minus1=").append(t).append(",\n       slice_group_change_direction_flag=").append(u).append(",\n       slice_group_id=").append(v).append(",\n       extended=").append(w).append('}').toString();
    }
}
