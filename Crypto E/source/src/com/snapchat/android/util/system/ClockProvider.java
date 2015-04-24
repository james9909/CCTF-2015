// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.system;

import com.snapchat.android.SnapchatApplication;

// Referenced classes of package com.snapchat.android.util.system:
//            Clock

public class ClockProvider
{

    Clock a;

    public ClockProvider()
    {
        SnapchatApplication.e().a(this);
    }

    public Clock a()
    {
        return a;
    }
}
