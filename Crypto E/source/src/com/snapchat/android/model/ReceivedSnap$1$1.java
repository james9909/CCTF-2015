// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import android.graphics.Bitmap;
import com.snapchat.android.Timber;
import com.snapchat.android.TimberTimingLogger;
import com.snapchat.android.util.threading.ThreadUtils;

// Referenced classes of package com.snapchat.android.model:
//            ReceivedSnap

class val.bitmap
    implements Runnable
{

    final l.timingLogger this$1;
    final Bitmap val$bitmap;

    public void run()
    {
        timingLogger.a("runOnUiThreadDelay");
        listener.a(val$bitmap);
        timingLogger.a("onBitmapLoaded");
        Timber.a(timingLogger);
    }

    leted()
    {
        this$1 = final_leted;
        val$bitmap = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/snapchat/android/model/ReceivedSnap$1

/* anonymous class */
    class ReceivedSnap._cls1
        implements Runnable
    {

        final ReceivedSnap this$0;
        final Context val$context;
        final com.snapchat.android.util.cache.Cache.OnCompleted val$listener;
        final TimberTimingLogger val$timingLogger;

        public void run()
        {
            timingLogger.a("startDelay");
            Bitmap bitmap1 = a(context);
            timingLogger.a("getImageBitmap");
            ThreadUtils.a(bitmap1. new ReceivedSnap._cls1._cls1());
        }

            
            {
                this$0 = final_receivedsnap;
                timingLogger = timbertiminglogger;
                context = context1;
                listener = com.snapchat.android.util.cache.Cache.OnCompleted.this;
                super();
            }
    }

}
