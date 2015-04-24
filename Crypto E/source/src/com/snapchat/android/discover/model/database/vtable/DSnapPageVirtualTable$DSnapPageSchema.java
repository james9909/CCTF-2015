// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.vtable;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.discover.model.database.vtable:
//            DSnapPageVirtualTable

public static final class y extends Enum
    implements Schema
{

    public static final z a;
    public static final z b;
    public static final z c;
    public static final z d;
    public static final z e;
    public static final z f;
    public static final z g;
    public static final z h;
    public static final z i;
    public static final z j;
    public static final z k;
    public static final z l;
    public static final z m;
    public static final z n;
    public static final z o;
    public static final z p;
    public static final z q;
    public static final z r;
    public static final z s;
    public static final z t;
    public static final z u;
    public static final z v;
    private static final z z[];
    private String w;
    private DataType x;
    private String y;

    public static y valueOf(String s1)
    {
        return (y)Enum.valueOf(com/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema, s1);
    }

    public static y[] values()
    {
        return (y[])z.clone();
    }

    public DataType a()
    {
        return x;
    }

    public int b()
    {
        return ordinal();
    }

    public String c()
    {
        return w;
    }

    public String d()
    {
        return y;
    }

    static 
    {
        a = new <init>("ID", 0, "_id", DataType.a, "PRIMARY KEY");
        b = new <init>("TYPE", 1, "type", DataType.a);
        c = new <init>("PUBLISHER_NAME", 2, "publisher_name", DataType.a);
        d = new <init>("POSITION", 3, "position", DataType.b);
        e = new <init>("EDITION_ID", 4, "edition_id", DataType.a);
        f = new <init>("URL", 5, "url", DataType.a);
        g = new <init>("HASH", 6, "hash", DataType.a);
        h = new <init>("COLOR", 7, "color", DataType.a);
        i = new <init>("AD_TYPE", 8, "ad_type", DataType.b);
        j = new <init>("AD_POSITION", 9, "ad_position", DataType.b);
        k = new <init>("SHAREABLE", 10, "shareable", DataType.d);
        l = new <init>("TOP_SNAP_URI", 11, "top_snap_uri", DataType.a);
        m = new <init>("TOP_SNAP_OVERLAY_URI", 12, "top_snap_overlay_uri", DataType.a);
        n = new <init>("TOP_SNAP_SPONSORED_OVERLAY_URI", 13, "top_snap_sponsored_overlay_uri", DataType.a);
        o = new <init>("TOP_SNAP_MEDIA_TYPE", 14, "top_snap_media_type", DataType.a);
        p = new <init>("TOP_SNAP_DOCKING", 15, "top_snap_docking", DataType.a);
        q = new <init>("TOP_SNAP_MODE", 16, "top_snap_mode", DataType.a);
        r = new <init>("LONGFORM_OVERLAY_URI", 17, "longform_overlay_uri", DataType.a);
        s = new <init>("LONGFORM_SPONSORED_OVERLAY_URI", 18, "longform_sponsored_overlay_uri", DataType.a);
        t = new <init>("LONGFORM_URI", 19, "longform_uri", DataType.a);
        u = new <init>("LONGFORM_MEDIA_TYPE", 20, "longform_media_type", DataType.a);
        v = new <init>("LONGFORM_VIDEO_ID", 21, "longform_video_id", DataType.a);
        y ay[] = new <init>[22];
        ay[0] = a;
        ay[1] = b;
        ay[2] = c;
        ay[3] = d;
        ay[4] = e;
        ay[5] = f;
        ay[6] = g;
        ay[7] = h;
        ay[8] = i;
        ay[9] = j;
        ay[10] = k;
        ay[11] = l;
        ay[12] = m;
        ay[13] = n;
        ay[14] = o;
        ay[15] = p;
        ay[16] = q;
        ay[17] = r;
        ay[18] = s;
        ay[19] = t;
        ay[20] = u;
        ay[21] = v;
        z = ay;
    }

    private (String s1, int i1, String s2, DataType datatype)
    {
        super(s1, i1);
        w = s2;
        x = datatype;
    }

    private x(String s1, int i1, String s2, DataType datatype, String s3)
    {
        this(s1, i1, s2, datatype);
        y = s3;
    }
}
