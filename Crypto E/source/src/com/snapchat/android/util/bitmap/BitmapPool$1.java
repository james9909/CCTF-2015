// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.graphics.Bitmap;

// Referenced classes of package com.snapchat.android.util.bitmap:
//            BitmapPool

class b
    implements Runnable
{

    final int a;
    final Bitmap b;
    final BitmapPool c;

    public void run()
    {
        BitmapPool.a(c, a, b);
    }

    (BitmapPool bitmappool, int i, Bitmap bitmap)
    {
        c = bitmappool;
        a = i;
        b = bitmap;
        super();
    }
}
