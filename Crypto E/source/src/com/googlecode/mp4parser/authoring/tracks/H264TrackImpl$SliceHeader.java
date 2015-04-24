// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;


// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            H264TrackImpl

public static class SliceType
{
    public static final class SliceType extends Enum
    {

        public static final SliceType a;
        public static final SliceType b;
        public static final SliceType c;
        public static final SliceType d;
        public static final SliceType e;
        private static final SliceType f[];

        public static SliceType valueOf(String s)
        {
            return (SliceType)Enum.valueOf(com/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType, s);
        }

        public static SliceType[] values()
        {
            SliceType aslicetype[] = f;
            int k = aslicetype.length;
            SliceType aslicetype1[] = new SliceType[k];
            System.arraycopy(aslicetype, 0, aslicetype1, 0, k);
            return aslicetype1;
        }

        static 
        {
            a = new SliceType("P", 0);
            b = new SliceType("B", 1);
            c = new SliceType("I", 2);
            d = new SliceType("SP", 3);
            e = new SliceType("SI", 4);
            SliceType aslicetype[] = new SliceType[5];
            aslicetype[0] = a;
            aslicetype[1] = b;
            aslicetype[2] = c;
            aslicetype[3] = d;
            aslicetype[4] = e;
            f = aslicetype;
        }

        private SliceType(String s, int k)
        {
            super(s, k);
        }
    }


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
