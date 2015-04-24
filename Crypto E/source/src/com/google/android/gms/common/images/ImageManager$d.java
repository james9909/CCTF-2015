// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.os.SystemClock;
import com.google.android.gms.common.internal.b;
import java.util.HashSet;
import java.util.Map;

// Referenced classes of package com.google.android.gms.common.images:
//            ImageManager, a

final class SX
    implements Runnable
{

    final ImageManager SV;
    private final a SX;

    public void run()
    {
        b.bb("LoadImageRunnable must be executed on the main thread");
        ageReceiver agereceiver = (ageReceiver)ImageManager.a(SV).get(SX);
        if (agereceiver != null)
        {
            ImageManager.a(SV).remove(SX);
            agereceiver.c(SX);
        }
        ageReceiver agereceiver1 = SX.SZ;
        if (agereceiver1.SX == null)
        {
            SX.a(com.google.android.gms.common.images.ImageManager.b(SV), ImageManager.c(SV), true);
            return;
        }
        android.graphics.Bitmap bitmap = ImageManager.a(SV, agereceiver1);
        if (bitmap != null)
        {
            SX.a(com.google.android.gms.common.images.ImageManager.b(SV), bitmap, true);
            return;
        }
        Long long1 = (Long)ImageManager.d(SV).get(agereceiver1.SV);
        if (long1 != null)
        {
            if (SystemClock.elapsedRealtime() - long1.longValue() < 0x36ee80L)
            {
                SX.a(com.google.android.gms.common.images.ImageManager.b(SV), ImageManager.c(SV), true);
                return;
            }
            ImageManager.d(SV).remove(agereceiver1.SV);
        }
        SX.a(com.google.android.gms.common.images.ImageManager.b(SV), ImageManager.c(SV));
        ageReceiver agereceiver2 = (ageReceiver)ImageManager.e(SV).get(agereceiver1.SV);
        if (agereceiver2 == null)
        {
            agereceiver2 = new ageReceiver(SV, agereceiver1.SV);
            ImageManager.e(SV).put(agereceiver1.SV, agereceiver2);
        }
        agereceiver2.b(SX);
        if (!(SX instanceof SX))
        {
            ImageManager.a(SV).put(SX, agereceiver2);
        }
        synchronized (ImageManager.ju())
        {
            if (!ImageManager.jv().contains(agereceiver1.))
            {
                ImageManager.jv().add(agereceiver1.);
                agereceiver2.jw();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ageReceiver(ImageManager imagemanager, a a1)
    {
        SV = imagemanager;
        super();
        SX = a1;
    }
}
