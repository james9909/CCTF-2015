// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapview;


public final class SnapViewSessionStopReason extends Enum
{

    public static final SnapViewSessionStopReason a;
    public static final SnapViewSessionStopReason b;
    public static final SnapViewSessionStopReason c;
    public static final SnapViewSessionStopReason d;
    public static final SnapViewSessionStopReason e;
    public static final SnapViewSessionStopReason f;
    private static final SnapViewSessionStopReason i[];
    private final boolean g;
    private final boolean h;

    private SnapViewSessionStopReason(String s, int j, boolean flag, boolean flag1)
    {
        super(s, j);
        g = flag;
        h = flag1;
    }

    public static SnapViewSessionStopReason valueOf(String s)
    {
        return (SnapViewSessionStopReason)Enum.valueOf(com/snapchat/android/ui/snapview/SnapViewSessionStopReason, s);
    }

    public static SnapViewSessionStopReason[] values()
    {
        return (SnapViewSessionStopReason[])i.clone();
    }

    public boolean a()
    {
        return h;
    }

    static 
    {
        a = new SnapViewSessionStopReason("ERROR_STARTING_MEDIA_UNAVAILABLE_FROM_SERVER", 0, true, true);
        b = new SnapViewSessionStopReason("ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY", 1, false, true);
        c = new SnapViewSessionStopReason("ERROR_UNABLE_TO_SHOW_MEDIA", 2, true, true);
        d = new SnapViewSessionStopReason("TIMER_EXPIRED", 3, true, false);
        e = new SnapViewSessionStopReason("ABORT_REQUESTED", 4, false, false);
        f = new SnapViewSessionStopReason("SKIP_REQUESTED", 5, true, false);
        SnapViewSessionStopReason asnapviewsessionstopreason[] = new SnapViewSessionStopReason[6];
        asnapviewsessionstopreason[0] = a;
        asnapviewsessionstopreason[1] = b;
        asnapviewsessionstopreason[2] = c;
        asnapviewsessionstopreason[3] = d;
        asnapviewsessionstopreason[4] = e;
        asnapviewsessionstopreason[5] = f;
        i = asnapviewsessionstopreason;
    }
}
