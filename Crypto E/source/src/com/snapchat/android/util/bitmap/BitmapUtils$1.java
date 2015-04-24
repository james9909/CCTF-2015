// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.graphics.Bitmap;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.concurrent.Callable;

// Referenced classes of package com.snapchat.android.util.bitmap:
//            BitmapUtils

static final class a
    implements Callable
{

    final ReceivedSnap a;

    public Bitmap a()
    {
        ThreadUtils.b();
        if (!a.am())
        {
            return a.b(SnapchatApplication.e());
        } else
        {
            return null;
        }
    }

    public Object call()
    {
        return a();
    }

    (ReceivedSnap receivedsnap)
    {
        a = receivedsnap;
        super();
    }
}
