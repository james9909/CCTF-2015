// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.database.DataType;
import com.snapchat.android.database.schema.Schema;

// Referenced classes of package com.snapchat.android.database.table:
//            StorySnapTable

public static final class D extends Enum
    implements Schema
{

    public static final E A;
    private static final E E[];
    public static final E a;
    public static final E b;
    public static final E c;
    public static final E d;
    public static final E e;
    public static final E f;
    public static final E g;
    public static final E h;
    public static final E i;
    public static final E j;
    public static final E k;
    public static final E l;
    public static final E m;
    public static final E n;
    public static final E o;
    public static final E p;
    public static final E q;
    public static final E r;
    public static final E s;
    public static final E t;
    public static final E u;
    public static final E v;
    public static final E w;
    public static final E x;
    public static final E y;
    public static final E z;
    private int B;
    private String C;
    private DataType D;

    static String a(D d1)
    {
        return d1.C;
    }

    static DataType b(C c1)
    {
        return c1.D;
    }

    public static D valueOf(String s1)
    {
        return (D)Enum.valueOf(com/snapchat/android/database/table/StorySnapTable$StorySnapSchema, s1);
    }

    public static D[] values()
    {
        return (D[])E.clone();
    }

    public DataType a()
    {
        return D;
    }

    public int b()
    {
        return B;
    }

    public String c()
    {
        return C;
    }

    public String d()
    {
        return null;
    }

    static 
    {
        a = new <init>("STORY_SNAP_ID", 0, 1, "StorySnapId", DataType.a);
        b = new <init>("CLIENT_ID", 1, 2, "ClientId", DataType.a);
        c = new <init>("MEDIA_ID", 2, 3, "MediaId", DataType.a);
        d = new <init>("TIMESTAMP", 3, 4, "Timestamp", DataType.b);
        e = new <init>("MEDIA_TYPE", 4, 5, "MediaType", DataType.b);
        f = new <init>("MEDIA_URL", 5, 6, "MediaUrl", DataType.a);
        g = new <init>("THUMBNAIL_URL", 6, 7, "ThumbnailUrl", DataType.a);
        h = new <init>("STATUS", 7, 8, "Status", DataType.a);
        i = new <init>("USERNAME", 8, 9, "Username", DataType.a);
        j = new <init>("DISPLAY_TIME", 9, 10, "DisplayTime", DataType.b);
        k = new <init>("CAPTION_TEXT", 10, 11, "CaptionText", DataType.a);
        l = new <init>("CAPTION_ORIENTATION", 11, 12, "CaptionOrientation", DataType.b);
        m = new <init>("CAPTION_POSITION", 12, 13, "CaptionPosition", DataType.e);
        n = new <init>("IS_VIEWED", 13, 14, "IsViewed", DataType.d);
        o = new <init>("IS_SCREENSHOTTED", 14, 15, "IsScreenshotted", DataType.d);
        p = new <init>("VIEWED_TIMESTAMP", 15, 16, "ViewedTimestamp", DataType.b);
        q = new <init>("IS_UPDATED", 16, 17, "IsUpdated", DataType.d);
        r = new <init>("IS_FAILED", 17, 18, "IsFailed", DataType.d);
        s = new <init>("IS_ZIPPED", 18, 19, "IsZipped", DataType.d);
        t = new <init>("FILTER_ID", 19, 20, "FilterId", DataType.a);
        u = new <init>("WAS_404_RESPONSE_RECEIVED", 20, 21, "Was404ResponseReceived", DataType.d);
        v = new <init>("STORY_ID", 21, 22, "StoryId", DataType.a);
        w = new <init>("IS_SHARED", 22, 23, "IsShared", DataType.d);
        x = new <init>("SPONSORED_PREVIEW_DISPLAY_NAME", 23, 24, "SponsoredPreviewDisplayName", DataType.a);
        y = new <init>("SPONSORED_POSTVIEW_DISPLAY_NAME", 24, 25, "SponsoredPostviewDisplayName", DataType.a);
        z = new <init>("SPONSORED_SPONSOR", 25, 26, "SponsoredSponsor", DataType.a);
        A = new <init>("SPONSORED_TAG_URL", 26, 27, "SponsoredTagUrl", DataType.a);
        C ac[] = new <init>[27];
        ac[0] = a;
        ac[1] = b;
        ac[2] = c;
        ac[3] = d;
        ac[4] = e;
        ac[5] = f;
        ac[6] = g;
        ac[7] = h;
        ac[8] = i;
        ac[9] = j;
        ac[10] = k;
        ac[11] = l;
        ac[12] = m;
        ac[13] = n;
        ac[14] = o;
        ac[15] = p;
        ac[16] = q;
        ac[17] = r;
        ac[18] = s;
        ac[19] = t;
        ac[20] = u;
        ac[21] = v;
        ac[22] = w;
        ac[23] = x;
        ac[24] = y;
        ac[25] = z;
        ac[26] = A;
        E = ac;
    }

    private (String s1, int i1, int j1, String s2, DataType datatype)
    {
        super(s1, i1);
        B = j1;
        C = s2;
        D = datatype;
    }
}
