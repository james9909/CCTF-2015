// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.util.fragment.SnapchatFragment;

// Referenced classes of package com.snapchat.android:
//            LandingPageActivity

class a
    implements Runnable
{

    final SnapchatFragment a;
    final LandingPageActivity b;

    public void run()
    {
        a.g(true);
    }

    Fragment(LandingPageActivity landingpageactivity, SnapchatFragment snapchatfragment)
    {
        b = landingpageactivity;
        a = snapchatfragment;
        super();
    }
}
