// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.graphics.Bitmap;
import com.snapchat.android.model.ReceivedSnap;

// Referenced classes of package com.snapchat.android.rendering.video:
//            VideoSnapResources

public static class a
{

    private final ReceivedSnap a;
    private String b;
    private Bitmap c;

    public a a(Bitmap bitmap)
    {
        c = bitmap;
        return this;
    }

    public c a(String s)
    {
        b = s;
        return this;
    }

    public VideoSnapResources a()
    {
        return new VideoSnapResources(a, b, c, null);
    }

    public (ReceivedSnap receivedsnap)
    {
        a = receivedsnap;
    }
}
