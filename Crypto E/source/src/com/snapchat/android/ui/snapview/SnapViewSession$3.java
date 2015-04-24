// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapview;


// Referenced classes of package com.snapchat.android.ui.snapview:
//            SnapViewSession, SnapViewSessionStopReason

static class pReason
{

    static final int a[];

    static 
    {
        a = new int[SnapViewSessionStopReason.values().length];
        try
        {
            a[SnapViewSessionStopReason.e.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[SnapViewSessionStopReason.f.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[SnapViewSessionStopReason.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[SnapViewSessionStopReason.a.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[SnapViewSessionStopReason.d.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4)
        {
            return;
        }
    }
}
