// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.common.internal.b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.google.android.gms.common.images:
//            a, ImageManager

final class mm
    implements Runnable
{

    final ImageManager SV;
    private boolean SY;
    private final Bitmap mBitmap;
    private final Uri mUri;
    private final CountDownLatch mm;

    private void a(ageReceiver agereceiver, boolean flag)
    {
        ArrayList arraylist = ageReceiver.a(agereceiver);
        int i = arraylist.size();
        int j = 0;
        while (j < i) 
        {
            a a1 = (a)arraylist.get(j);
            if (flag)
            {
                a1.a(com.google.android.gms.common.images.ImageManager.b(SV), mBitmap, false);
            } else
            {
                ImageManager.d(SV).put(mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                a1.a(com.google.android.gms.common.images.ImageManager.b(SV), ImageManager.c(SV), false);
            }
            if (!(a1 instanceof SV))
            {
                ImageManager.a(SV).remove(a1);
            }
            j++;
        }
    }

    public void run()
    {
        b.bb("OnBitmapLoadedRunnable must be executed in the main thread");
        boolean flag;
        if (mBitmap != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (ImageManager.h(SV) != null)
        {
            if (SY)
            {
                ImageManager.h(SV).evictAll();
                System.gc();
                SY = false;
                ImageManager.g(SV).post(this);
                return;
            }
            if (flag)
            {
                ImageManager.h(SV).put(new put(mUri), mBitmap);
            }
        }
        ageReceiver agereceiver = (ageReceiver)ImageManager.e(SV).remove(mUri);
        if (agereceiver != null)
        {
            a(agereceiver, flag);
        }
        mm.countDown();
        synchronized (ImageManager.ju())
        {
            ImageManager.jv().remove(mUri);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ageReceiver(ImageManager imagemanager, Uri uri, Bitmap bitmap, boolean flag, CountDownLatch countdownlatch)
    {
        SV = imagemanager;
        super();
        mUri = uri;
        mBitmap = bitmap;
        SY = flag;
        mm = countdownlatch;
    }
}
