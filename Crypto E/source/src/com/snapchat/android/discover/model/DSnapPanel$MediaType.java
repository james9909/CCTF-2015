// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import java.util.Locale;

// Referenced classes of package com.snapchat.android.discover.model:
//            MediaState, DSnapPanel

public static final class e extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    private static final f f[];
    private final MediaState e;

    public static e a(String s)
    {
        return valueOf(s.toUpperCase(Locale.ENGLISH));
    }

    public static valueOf valueOf(String s)
    {
        return (valueOf)Enum.valueOf(com/snapchat/android/discover/model/DSnapPanel$MediaType, s);
    }

    public static valueOf[] values()
    {
        return (valueOf[])f.clone();
    }

    public MediaState a()
    {
        return e;
    }

    static 
    {
        a = new <init>("IMAGE", 0, MediaState.f);
        b = new <init>("VIDEO", 1, MediaState.f);
        c = new <init>("LOCAL_WEBPAGE", 2, MediaState.f);
        d = new <init>("REMOTE_VIDEO", 3, MediaState.a);
        e ae[] = new <init>[4];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        ae[3] = d;
        f = ae;
    }

    private (String s, int i, MediaState mediastate)
    {
        super(s, i);
        e = mediastate;
    }
}
