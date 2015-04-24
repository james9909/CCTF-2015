// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.captcha;

import android.view.View;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ProgressBar;
import com.snapchat.android.api.SolveCaptchaTask;
import com.snapchat.android.util.ScExecutors;

// Referenced classes of package com.snapchat.android.fragments.captcha:
//            CaptchaFragment, CaptchaAdapter

class b
    implements android.view.er
{

    final CaptchaAdapter a;
    final String b;
    final CaptchaFragment c;

    public void onClick(View view)
    {
        if (c.getActivity() == null)
        {
            return;
        } else
        {
            java.util.List list = a.a();
            (new SolveCaptchaTask(b, list, c)).executeOnExecutor(ScExecutors.b, new String[0]);
            CaptchaFragment.a(c).setClickable(false);
            CaptchaFragment.b(c).setText("");
            CaptchaFragment.b(c).setClickable(false);
            CaptchaFragment.c(c).setVisibility(0);
            return;
        }
    }

    (CaptchaFragment captchafragment, CaptchaAdapter captchaadapter, String s)
    {
        c = captchafragment;
        a = captchaadapter;
        b = s;
        super();
    }
}
