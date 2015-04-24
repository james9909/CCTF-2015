// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.captcha;

import android.graphics.Bitmap;

// Referenced classes of package com.snapchat.android.fragments.captcha:
//            CaptchaAdapter

class c
{

    final CaptchaAdapter a;
    private boolean b;
    private Bitmap c;

    static Bitmap a(c c1)
    {
        return c1.c;
    }

    static boolean a(c c1, boolean flag)
    {
        c1.b = flag;
        return flag;
    }

    static boolean b(b b1)
    {
        return b1.b;
    }

    (CaptchaAdapter captchaadapter, Bitmap bitmap)
    {
        a = captchaadapter;
        super();
        c = bitmap;
    }
}
