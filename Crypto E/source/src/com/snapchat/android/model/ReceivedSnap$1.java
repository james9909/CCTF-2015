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

class mpleted
    implements Runnable
{

    final ReceivedSnap this$0;
    final Context val$context;
    final com.snapchat.android.util.cache.ed val$listener;
    final TimberTimingLogger val$timingLogger;

    public void run()
    {
        val$timingLogger.a("startDelay");
        final Bitmap bitmap = a(val$context);
        val$timingLogger.a("getImageBitmap");
        ThreadUtils.a(new Runnable() {

            final ReceivedSnap._cls1 this$1;
            final Bitmap val$bitmap;

            public void run()
            {
                timingLogger.a("runOnUiThreadDelay");
                listener.a(bitmap);
                timingLogger.a("onBitmapLoaded");
                Timber.a(timingLogger);
            }

            
            {
                this$1 = ReceivedSnap._cls1.this;
                bitmap = bitmap1;
                super();
            }
        });
    }

    mpleted()
    {
        this$0 = final_receivedsnap;
        val$timingLogger = timbertiminglogger;
        val$context = context1;
        val$listener = com.snapchat.android.util.cache.ed.this;
        super();
    }
}
