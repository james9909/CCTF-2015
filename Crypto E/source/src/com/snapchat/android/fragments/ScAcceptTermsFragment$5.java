// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

// Referenced classes of package com.snapchat.android.fragments:
//            ScAcceptTermsFragment

class a extends ClickableSpan
{

    final ScAcceptTermsFragment a;

    public void onClick(View view)
    {
        view.invalidate();
        ScAcceptTermsFragment.e(a);
    }

    public void updateDrawState(TextPaint textpaint)
    {
        super.updateDrawState(textpaint);
        textpaint.setUnderlineText(false);
    }

    (ScAcceptTermsFragment scaccepttermsfragment)
    {
        a = scaccepttermsfragment;
        super();
    }
}
