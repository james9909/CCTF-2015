// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.graphics.Bitmap;

// Referenced classes of package com.snapchat.android.api:
//            GetCaptchaTask

class mBitmap
{

    Bitmap mBitmap;
    String mName;
    final GetCaptchaTask this$0;

    (String s, Bitmap bitmap)
    {
        this$0 = GetCaptchaTask.this;
        super();
        mName = s;
        mBitmap = bitmap;
    }
}
