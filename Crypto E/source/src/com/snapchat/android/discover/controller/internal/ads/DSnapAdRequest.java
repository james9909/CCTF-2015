// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.ads;

import com.snapchat.android.Timber;
import com.snapchat.android.ads.AdManager;
import com.snapchat.android.ads.AdPlacement;
import com.snapchat.android.ads.AdTransformListener;
import com.snapchat.android.ads.AdTransformResponse;
import com.snapchat.android.discover.model.DSnapPage;
import java.util.Timer;
import java.util.TimerTask;

public class DSnapAdRequest
    implements AdTransformListener
{
    public static interface Callback
    {

        public abstract void a(DSnapPage dsnappage, AdTransformResponse adtransformresponse);
    }


    protected final TimerTask a;
    private final AdManager b;
    private final Timer c;
    private final DSnapPage d;
    private final Callback e;
    private final Object f;
    private boolean g;

    protected DSnapAdRequest(AdManager admanager, Timer timer, DSnapPage dsnappage, Callback callback)
    {
        f = new Object();
        a = new TimerTask() {

            final DSnapAdRequest a;

            public void run()
            {
label0:
                {
                    synchronized (DSnapAdRequest.a(a))
                    {
                        if (!DSnapAdRequest.b(a))
                        {
                            break label0;
                        }
                    }
                    return;
                }
                DSnapAdRequest.a(a, null);
                obj;
                JVM INSTR monitorexit ;
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                a = DSnapAdRequest.this;
                super();
            }
        };
        b = admanager;
        c = timer;
        d = dsnappage;
        e = callback;
    }

    public DSnapAdRequest(DSnapPage dsnappage, Callback callback)
    {
        this(AdManager.a(), new Timer(), dsnappage, callback);
    }

    static Object a(DSnapAdRequest dsnapadrequest)
    {
        return dsnapadrequest.f;
    }

    private void a(AdTransformResponse adtransformresponse)
    {
        e.a(d, adtransformresponse);
        g = true;
        a.cancel();
        c.cancel();
    }

    static void a(DSnapAdRequest dsnapadrequest, AdTransformResponse adtransformresponse)
    {
        dsnapadrequest.a(adtransformresponse);
    }

    static boolean b(DSnapAdRequest dsnapadrequest)
    {
        return dsnapadrequest.g;
    }

    public void a()
    {
        com.snapchat.android.ads.DiscoverAdPlacement discoveradplacement = (new com.snapchat.android.ads.DiscoverAdPlacement.Builder()).b(d.i().intValue()).b(d.e()).a(d.d()).a(d.j()).b();
        b.a(discoveradplacement, this);
        c.schedule(a, 10000L);
    }

    public void a(AdPlacement adplacement, AdTransformResponse adtransformresponse)
    {
label0:
        {
            synchronized (f)
            {
                if (!g)
                {
                    break label0;
                }
                Object aobj[] = new Object[1];
                aobj[0] = d;
                Timber.d("DSnapAdRequest", "DISCOVER-MEDIA: Skipping transform handling from resolving ad for %s", aobj);
            }
            return;
        }
        a(adtransformresponse);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
