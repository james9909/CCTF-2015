// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.captcha;

import android.content.Context;
import android.widget.GridView;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.captcha:
//            CaptchaAdapter, CaptchaFragment

class tchaAdapterInterface extends CaptchaAdapter
{

    final CaptchaFragment a;

    public boolean areAllItemsEnabled()
    {
        return CaptchaFragment.a(a).isClickable();
    }

    public boolean isEnabled(int i)
    {
        return CaptchaFragment.a(a).isClickable();
    }

    tchaAdapterInterface(CaptchaFragment captchafragment, Context context, List list, tchaAdapterInterface tchaadapterinterface)
    {
        a = captchafragment;
        super(context, list, tchaadapterinterface);
    }
}
