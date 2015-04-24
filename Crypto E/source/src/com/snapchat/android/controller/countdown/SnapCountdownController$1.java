// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller.countdown;


// Referenced classes of package com.snapchat.android.controller.countdown:
//            SnapCountdownController

class a
    implements Runnable
{

    final SnapCountdownController a;

    public void run()
    {
        a.b();
    }

    I(SnapCountdownController snapcountdowncontroller)
    {
        a = snapcountdowncontroller;
        super();
    }
}
