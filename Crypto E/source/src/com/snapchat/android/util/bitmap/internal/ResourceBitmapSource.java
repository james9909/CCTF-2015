// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap.internal;

import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.snapchat.android.util.debug.ReleaseManager;

// Referenced classes of package com.snapchat.android.util.bitmap.internal:
//            BitmapSource

public class ResourceBitmapSource
    implements BitmapSource
{

    private final int a;
    private Resources b;

    public ResourceBitmapSource(int i)
    {
        a = i;
    }

    public Bitmap a(android.graphics.BitmapFactory.Options options)
    {
        if (b == null)
        {
            if (ReleaseManager.e())
            {
                throw new IllegalStateException("Cannot decode bitmap without calling prepare!");
            } else
            {
                return null;
            }
        } else
        {
            return BitmapFactory.decodeResource(b, a, options);
        }
    }

    public void a(ContentResolver contentresolver, Resources resources)
    {
        b = resources;
    }
}
