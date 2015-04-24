// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import com.snapchat.android.camera.cameradecor.CardLinkCameraDecor;

// Referenced classes of package com.snapchat.android.camera:
//            CardLinkCameraFragment

class a
    implements Runnable
{

    final com.snapchat.android.camera.cameradecor.nputError a;
    final CardLinkCameraFragment b;

    public void run()
    {
        b.a.a(a);
    }

    aDecor.CardInputError(CardLinkCameraFragment cardlinkcamerafragment, com.snapchat.android.camera.cameradecor.nputError nputerror)
    {
        b = cardlinkcamerafragment;
        a = nputerror;
        super();
    }
}
