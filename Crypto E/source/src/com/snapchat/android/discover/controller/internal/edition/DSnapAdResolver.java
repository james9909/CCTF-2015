// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.edition;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.ads.AdTransformResponse;
import com.snapchat.android.discover.controller.internal.ads.DSnapAdRequest;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class DSnapAdResolver
    implements com.snapchat.android.discover.controller.internal.ads.DSnapAdRequest.Callback
{

    private final DiscoverRepository a;
    private final DiscoverMediaStateTracker b;
    private final Map c;
    private final Object d;

    public DSnapAdResolver()
    {
        this(DiscoverRepository.a(), DiscoverMediaStateTracker.a());
    }

    protected DSnapAdResolver(DiscoverRepository discoverrepository, DiscoverMediaStateTracker discovermediastatetracker)
    {
        c = new ConcurrentHashMap();
        d = new Object();
        b = discovermediastatetracker;
        a = discoverrepository;
    }

    private void a(DSnapPage dsnappage, MediaState mediastate)
    {
        b.b(dsnappage, mediastate);
        a.c();
    }

    public void a(DSnapPage dsnappage, AdTransformResponse adtransformresponse)
    {
label0:
        {
            synchronized (d)
            {
                if ((DSnapAdRequest)c.remove(dsnappage.a()) != null)
                {
                    break label0;
                }
            }
            return;
        }
        if (adtransformresponse != null) goto _L2; else goto _L1
_L1:
        Timber.e("DSnapAdResolver", "DISCOVER-MEDIA: Timed out while resolving ad for %s", new Object[] {
            dsnappage
        });
        a(dsnappage, MediaState.k);
_L3:
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
label1:
        {
            if (adtransformresponse.b() == null)
            {
                break label1;
            }
            Object aobj1[] = new Object[2];
            aobj1[0] = dsnappage;
            aobj1[1] = adtransformresponse.b();
            Timber.e("DSnapAdResolver", "DISCOVER-MEDIA: Exception caught while resolving ad for %s: %s", aobj1);
            a(dsnappage, MediaState.i);
        }
          goto _L3
label2:
        {
            if (TextUtils.isEmpty(adtransformresponse.a()))
            {
                break label2;
            }
            Object aobj[] = new Object[2];
            aobj[0] = dsnappage;
            aobj[1] = adtransformresponse.a();
            Timber.c("DSnapAdResolver", "DISCOVER-MEDIA: Resolved ad for %s, url: %s", aobj);
            a.a(dsnappage, adtransformresponse.a(), adtransformresponse.a());
            a(dsnappage, MediaState.f);
        }
          goto _L3
        Timber.e("DSnapAdResolver", "DISCOVER-MEDIA: Null ad url for %s", new Object[] {
            dsnappage
        });
        a(dsnappage, MediaState.k);
          goto _L3
    }

    public boolean a(DSnapPage dsnappage)
    {
label0:
        {
            synchronized (d)
            {
                if (!c.containsKey(dsnappage.a()))
                {
                    break label0;
                }
                Timber.d("DSnapAdResolver", "DISCOVER-MEDIA: Skipping resolve for ad %s since there is a pending request for it.", new Object[] {
                    dsnappage
                });
            }
            return false;
        }
        Timber.c("DSnapAdResolver", "DISCOVER-MEDIA: Requesting resolve for ad %s", new Object[] {
            dsnappage
        });
        DSnapAdRequest dsnapadrequest = b(dsnappage);
        c.put(dsnappage.a(), dsnapadrequest);
        b.b(dsnappage, MediaState.d);
        dsnapadrequest.a();
        obj;
        JVM INSTR monitorexit ;
        return true;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected DSnapAdRequest b(DSnapPage dsnappage)
    {
        return new DSnapAdRequest(dsnappage, this);
    }
}
