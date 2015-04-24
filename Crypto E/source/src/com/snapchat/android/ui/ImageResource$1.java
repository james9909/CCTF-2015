// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.snapchat.android.util.SnapMediaUtils;

// Referenced classes of package com.snapchat.android.ui:
//            ImageResource

static final class  extends LruCache
{

    protected int a(String s, Bitmap bitmap)
    {
        return (int)Math.ceil((float)SnapMediaUtils.e(bitmap) / 1024F);
    }

    protected int sizeOf(Object obj, Object obj1)
    {
        return a((String)obj, (Bitmap)obj1);
    }

    (int i)
    {
        super(i);
    }
}
