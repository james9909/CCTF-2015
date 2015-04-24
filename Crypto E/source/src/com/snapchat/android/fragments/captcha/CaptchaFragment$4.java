// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.captcha;

import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.api.GetCaptchaTask;
import com.snapchat.android.util.ScExecutors;

// Referenced classes of package com.snapchat.android.fragments.captcha:
//            CaptchaFragment

class c
    implements android.view.er
{

    final Button a;
    final TextView b;
    final ProgressBar c;
    final CaptchaFragment d;

    public void onClick(View view)
    {
        if (d.getActivity() == null)
        {
            return;
        } else
        {
            a.setVisibility(8);
            b.setText(0x7f0c0041);
            c.setVisibility(0);
            (new GetCaptchaTask(d)).executeOnExecutor(ScExecutors.b, new String[0]);
            return;
        }
    }

    (CaptchaFragment captchafragment, Button button, TextView textview, ProgressBar progressbar)
    {
        d = captchafragment;
        a = button;
        b = textview;
        c = progressbar;
        super();
    }
}
