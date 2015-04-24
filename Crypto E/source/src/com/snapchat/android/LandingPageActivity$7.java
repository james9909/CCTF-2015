// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;


// Referenced classes of package com.snapchat.android:
//            LandingPageActivity

class a
    implements Runnable
{

    final boolean a;
    final LandingPageActivity b;

    public void run()
    {
        LandingPageActivity.b(b, false);
        if (a)
        {
            b.q();
        }
    }

    (LandingPageActivity landingpageactivity, boolean flag)
    {
        b = landingpageactivity;
        a = flag;
        super();
    }
}
