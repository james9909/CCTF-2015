// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;


// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            H265TrackImpl

public static final class I extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d d[];

    public static I valueOf(String s)
    {
        return (I)Enum.valueOf(com/googlecode/mp4parser/authoring/tracks/H265TrackImpl$PARSE_STATE, s);
    }

    public static I[] values()
    {
        I ai[] = d;
        int i = ai.length;
        I ai1[] = new d[i];
        System.arraycopy(ai, 0, ai1, 0, i);
        return ai1;
    }

    static 
    {
        a = new <init>("AUD_SEI_SLICE", 0);
        b = new <init>("SEI_SLICE", 1);
        c = new <init>("SLICE_OES_EOB", 2);
        d ad[] = new <init>[3];
        ad[0] = a;
        ad[1] = b;
        ad[2] = c;
        d = ad;
    }

    private I(String s, int i)
    {
        super(s, i);
    }
}
