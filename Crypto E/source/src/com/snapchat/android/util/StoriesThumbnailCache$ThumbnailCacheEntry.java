// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.graphics.Bitmap;
import android.os.SystemClock;
import com.snapchat.android.model.StorySnap;
import java.util.List;

// Referenced classes of package com.snapchat.android.util:
//            StoriesThumbnailCache

class e
{

    final StoriesThumbnailCache a;
    private Bitmap b;
    private long c;
    private long d;
    private long e;
    private boolean f;

    static Bitmap a(e e1)
    {
        return e1.b;
    }

    static boolean a(b b1, boolean flag)
    {
        b1.f = flag;
        return flag;
    }

    static boolean b(f f1)
    {
        return f1.f;
    }

    public boolean a(List list)
    {
        while (((StorySnap)list.get(0)).ae() != d || ((StorySnap)list.get(-1 + list.size())).ae() != e) 
        {
            return true;
        }
        boolean flag;
        if ((SystemClock.elapsedRealtime() - c) / 60000L >= 30L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public I(StoriesThumbnailCache storiesthumbnailcache, Bitmap bitmap, List list)
    {
        a = storiesthumbnailcache;
        super();
        f = false;
        b = bitmap;
        c = SystemClock.elapsedRealtime();
        d = ((StorySnap)list.get(0)).ae();
        e = ((StorySnap)list.get(-1 + list.size())).ae();
    }
}
