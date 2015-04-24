// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;


public final class MediaState extends Enum
{

    public static final MediaState a;
    public static final MediaState b;
    public static final MediaState c;
    public static final MediaState d;
    public static final MediaState e;
    public static final MediaState f;
    public static final MediaState g;
    public static final MediaState h;
    public static final MediaState i;
    public static final MediaState j;
    public static final MediaState k;
    private static final MediaState n[];
    private final boolean l;
    private final boolean m;

    private MediaState(String s, int i1, boolean flag, boolean flag1)
    {
        super(s, i1);
        l = flag;
        m = flag1;
    }

    public static MediaState valueOf(String s)
    {
        return (MediaState)Enum.valueOf(com/snapchat/android/discover/model/MediaState, s);
    }

    public static MediaState[] values()
    {
        return (MediaState[])n.clone();
    }

    public boolean a()
    {
        return l;
    }

    public boolean b()
    {
        return m;
    }

    static 
    {
        a = new MediaState("NOT_STARTED", 0, true, false);
        b = new MediaState("FETCHING_MEDIA", 1, true, false);
        c = new MediaState("RESOLVE_NEEDED", 2, true, false);
        d = new MediaState("RESOLVING_AD", 3, true, false);
        e = new MediaState("RESOLVED_AD", 4, true, false);
        f = new MediaState("SUCCESS", 5, false, false);
        g = new MediaState("DISK_FULL_ERROR", 6, false, true);
        h = new MediaState("CONTENT_ERROR", 7, false, true);
        i = new MediaState("NETWORK_ERROR", 8, false, true);
        j = new MediaState("EXTERNAL_STORAGE_UNAVAILABLE", 9, false, true);
        k = new MediaState("GENERIC_ERROR", 10, false, true);
        MediaState amediastate[] = new MediaState[11];
        amediastate[0] = a;
        amediastate[1] = b;
        amediastate[2] = c;
        amediastate[3] = d;
        amediastate[4] = e;
        amediastate[5] = f;
        amediastate[6] = g;
        amediastate[7] = h;
        amediastate[8] = i;
        amediastate[9] = j;
        amediastate[10] = k;
        n = amediastate;
    }
}
