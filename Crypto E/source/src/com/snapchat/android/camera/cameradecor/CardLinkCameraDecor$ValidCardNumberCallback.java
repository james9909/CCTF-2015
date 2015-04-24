// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.graphics.drawable.TransitionDrawable;
import android.view.View;
import com.snapchat.android.cash.ValidatedInputCallback;
import com.snapchat.android.ui.cash.CardExpiryEditText;
import com.snapchat.android.ui.cash.CardNumberEditText;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            CardLinkCameraDecor

class <init>
    implements ValidatedInputCallback
{

    final CardLinkCameraDecor a;
    private boolean b;

    public void a()
    {
        CardLinkCameraDecor.a(a, false);
        if (b)
        {
            b = false;
            CardLinkCameraDecor.b(a, true);
            CardLinkCameraDecor.f(a).setBackgroundDrawable(null);
            ((TransitionDrawable)CardLinkCameraDecor.g(a).getBackground()).reverseTransition(1000);
            CardLinkCameraDecor.c(a, false);
        }
    }

    public void b()
    {
        CardLinkCameraDecor.b(a, false);
        if (!b)
        {
            b = true;
            ((TransitionDrawable)CardLinkCameraDecor.g(a).getBackground()).startTransition(1000);
        }
        CardLinkCameraDecor.h(a).requestFocus();
        if (CardLinkCameraDecor.h(a).b())
        {
            CardLinkCameraDecor.a(a, true);
            CardLinkCameraDecor.c(a, true);
        }
    }

    public void c()
    {
        CardLinkCameraDecor.i(a).setText(" ");
    }

    private Y(CardLinkCameraDecor cardlinkcameradecor)
    {
        a = cardlinkcameradecor;
        super();
    }

    a(CardLinkCameraDecor cardlinkcameradecor, a a1)
    {
        this(cardlinkcameradecor);
    }
}
