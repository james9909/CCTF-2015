// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import com.snapchat.android.cash.ValidatedInputCallback;
import com.snapchat.android.ui.cash.CardCvvEditText;
import com.snapchat.android.ui.cash.ZipEditText;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            CardLinkCameraDecor

class <init>
    implements ValidatedInputCallback
{

    final CardLinkCameraDecor a;

    public void a()
    {
        CardLinkCameraDecor.a(a, false);
    }

    public void b()
    {
        if (CardLinkCameraDecor.k(a).b())
        {
            CardLinkCameraDecor.a(a, true);
        }
    }

    public void c()
    {
        CardLinkCameraDecor.j(a).setText(" ");
        CardLinkCameraDecor.k(a).requestFocus();
    }

    private (CardLinkCameraDecor cardlinkcameradecor)
    {
        a = cardlinkcameradecor;
        super();
    }

    a(CardLinkCameraDecor cardlinkcameradecor, a a1)
    {
        this(cardlinkcameradecor);
    }
}
