// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap.internal;

import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

// Referenced classes of package com.snapchat.android.util.bitmap.internal:
//            BitmapSource

public class ByteArrayBitmapSource
    implements BitmapSource
{

    private final byte a[];

    public ByteArrayBitmapSource(byte abyte0[])
    {
        a = abyte0;
    }

    public Bitmap a(android.graphics.BitmapFactory.Options options)
    {
        return BitmapFactory.decodeByteArray(a, 0, a.length, options);
    }

    public void a(ContentResolver contentresolver, Resources resources)
    {
    }
}
