// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;

import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.ads:
//            AdManager, AdTransformListener, AdPlacement

class b
    implements Runnable
{

    final AdPlacement a;
    final AdTransformListener b;
    final AdManager c;

    public void run()
    {
        try
        {
            c.c(a, b);
            return;
        }
        catch (Exception exception)
        {
            if (b != null)
            {
                AdTransformResponse adtransformresponse = (new esponse.Builder()).a(exception).a();
                b.a(a, adtransformresponse);
                return;
            } else
            {
                Object aobj[] = new Object[2];
                aobj[0] = exception;
                aobj[1] = a;
                Timber.d("AdManager", "transformAsync error:%s for adPlaceholder:%s", aobj);
                return;
            }
        }
    }

    istener(AdManager admanager, AdPlacement adplacement, AdTransformListener adtransformlistener)
    {
        c = admanager;
        a = adplacement;
        b = adtransformlistener;
        super();
    }
}
