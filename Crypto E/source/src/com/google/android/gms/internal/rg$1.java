// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;

// Referenced classes of package com.google.android.gms.internal:
//            rg

static final class aFZ extends Thread
{

    final ContentResolver aFZ;

    public void run()
    {
        Looper.prepare();
        aFZ.registerContentObserver(rg.CONTENT_URI, true, new ContentObserver(new Handler(Looper.myLooper())) {

            final rg._cls1 aGa;

            public void onChange(boolean flag)
            {
                com/google/android/gms/internal/rg;
                JVM INSTR monitorenter ;
                rg.tH().clear();
                rg.E(new Object());
                if (rg.tI().length > 0)
                {
                    rg.b(aGa.aFZ, rg.tI());
                }
                com/google/android/gms/internal/rg;
                JVM INSTR monitorexit ;
                return;
                Exception exception;
                exception;
                com/google/android/gms/internal/rg;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                aGa = rg._cls1.this;
                super(handler);
            }
        });
        Looper.loop();
    }

    t>(String s, ContentResolver contentresolver)
    {
        aFZ = contentresolver;
        super(s);
    }
}
