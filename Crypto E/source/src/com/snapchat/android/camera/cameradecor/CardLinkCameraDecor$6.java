// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.view.View;
import com.snapchat.android.util.LocalizationUtils;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            CardLinkCameraDecor

class a
    implements android.view.ener
{

    final CardLinkCameraDecor a;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            CardLinkCameraDecor.a(a, LocalizationUtils.a(0x7f0c0046, new Object[0]));
        }
    }

    (CardLinkCameraDecor cardlinkcameradecor)
    {
        a = cardlinkcameradecor;
        super();
    }
}
