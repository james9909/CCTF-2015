// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments:
//            ScAcceptTermsFragment

class a extends ClickableSpan
{

    final String a;
    final ScAcceptTermsFragment b;

    public void onClick(View view)
    {
        view.invalidate();
        BusProvider.a().a(new StartFragmentEvent(new WebFragment("https://www.snapchat.com/privacy", a)));
    }

    public void updateDrawState(TextPaint textpaint)
    {
        super.updateDrawState(textpaint);
        textpaint.setUnderlineText(false);
    }

    (ScAcceptTermsFragment scaccepttermsfragment, String s)
    {
        b = scaccepttermsfragment;
        a = s;
        super();
    }
}
