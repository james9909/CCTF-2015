// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.edition;

import android.content.Context;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.discover.analytics.DiscoverAnalytics;
import com.snapchat.android.discover.analytics.DiscoverPerformanceAnalytics;
import com.snapchat.android.discover.controller.internal.ContextAwareParamsProvider;
import com.snapchat.android.discover.controller.internal.DiscoverUserState;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverCaches;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.networkmanager.DownloadManager;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.networkmanager.DownloadRequest;
import com.snapchat.android.networkmanager.NetworkTypeDisallowedException;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.memory.DynamicByteBuffer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.discover.controller.internal.edition:
//            DSnapMetadataExtractor, DefaultEndpointProvider

public class DSnapDownloader
    implements com.snapchat.android.networkmanager.DownloadManager.Callback
{
    static final class PendingRequest
    {

        private final DownloadPriority a;
        private final DSnapPage b;

        public DSnapPage a()
        {
            return b;
        }

        public DownloadPriority b()
        {
            return a;
        }

        public PendingRequest(DSnapPage dsnappage, DownloadPriority downloadpriority)
        {
            b = dsnappage;
            a = downloadpriority;
        }
    }


    private final DownloadManager a;
    private final DiscoverRepository b;
    private final DiscoverMediaStateTracker c;
    private final Cache d;
    private final DSnapMetadataExtractor e;
    private final ContextAwareParamsProvider f;
    private final Provider g;
    private final DiscoverPerformanceAnalytics h;
    private final ExceptionReporter i;
    private final DiscoverAnalytics j;
    private final Object k;
    private final Map l;
    private DownloadPriority m;

    public DSnapDownloader()
    {
        this(DownloadManager.a(), DiscoverRepository.a(), DiscoverMediaStateTracker.a(), DiscoverCaches.b, new DSnapMetadataExtractor(), new ContextAwareParamsProvider(), ((Provider) (new DefaultEndpointProvider())), DiscoverPerformanceAnalytics.a(), new ExceptionReporter(), new DiscoverAnalytics());
    }

    protected DSnapDownloader(DownloadManager downloadmanager, DiscoverRepository discoverrepository, DiscoverMediaStateTracker discovermediastatetracker, Cache cache, DSnapMetadataExtractor dsnapmetadataextractor, ContextAwareParamsProvider contextawareparamsprovider, Provider provider, 
            DiscoverPerformanceAnalytics discoverperformanceanalytics, ExceptionReporter exceptionreporter, DiscoverAnalytics discoveranalytics)
    {
        k = new Object();
        l = new ConcurrentHashMap();
        m = null;
        a = downloadmanager;
        b = discoverrepository;
        c = discovermediastatetracker;
        d = cache;
        e = dsnapmetadataextractor;
        f = contextawareparamsprovider;
        g = provider;
        h = discoverperformanceanalytics;
        i = exceptionreporter;
        j = discoveranalytics;
    }

    private PendingRequest a(String s)
    {
        PendingRequest pendingrequest;
        synchronized (k)
        {
            pendingrequest = (PendingRequest)l.remove(s);
        }
        return pendingrequest;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(DSnapPage dsnappage, MediaState mediastate)
    {
        c.a(dsnappage, mediastate);
        b.c();
    }

    public void a(Context context)
    {
    }

    public void a(DownloadPriority downloadpriority)
    {
        m = downloadpriority;
        if (m != null)
        {
            HashSet hashset = new HashSet();
            synchronized (k)
            {
                hashset.addAll(l.entrySet());
            }
            Iterator iterator = hashset.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                PendingRequest pendingrequest = (PendingRequest)entry.getValue();
                if (pendingrequest.b().compareTo(m) <= 0)
                {
                    Object aobj[] = new Object[2];
                    aobj[0] = pendingrequest.b().name();
                    aobj[1] = pendingrequest.a();
                    Timber.c("DSnapDownloader", "Attempting to cancel %s priority pending download for %s", aobj);
                    a.a((String)entry.getKey());
                }
            } while (true);
        }
        break MISSING_BLOCK_LABEL_166;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(DownloadRequest downloadrequest)
    {
        PendingRequest pendingrequest = a(downloadrequest.e());
        if (pendingrequest == null)
        {
            return;
        } else
        {
            DSnapPage dsnappage = pendingrequest.a();
            Timber.c("DSnapDownloader", "DISCOVER-MEDIA: DSnap download canceled %s.", new Object[] {
                dsnappage
            });
            a(dsnappage, MediaState.a);
            return;
        }
    }

    public void a(DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult)
    {
        PendingRequest pendingrequest = a(downloadrequest.e());
        if (pendingrequest == null)
        {
            h.a(downloadrequest.e());
            return;
        }
        DSnapPage dsnappage = pendingrequest.a();
        boolean flag;
        if (downloadrequest.a() == DownloadPriority.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        h.a(dsnappage.g(), networkresult.h(), networkresult.e(), flag);
        if (!networkresult.h())
        {
            if (networkresult.g() instanceof NetworkTypeDisallowedException)
            {
                Object aobj3[] = new Object[2];
                aobj3[0] = dsnappage;
                aobj3[1] = downloadrequest.d();
                Timber.d("DSnapDownloader", "DISCOVER-MEDIA: Failed to download %s, network type does not allow the download %s", aobj3);
                a(dsnappage, MediaState.a);
                return;
            } else
            {
                Object aobj2[] = new Object[3];
                aobj2[0] = networkresult;
                aobj2[1] = dsnappage;
                aobj2[2] = downloadrequest.d();
                Timber.e("DSnapDownloader", "DISCOVER-MEDIA: %s trying to download %s from %s.", aobj2);
                a(dsnappage, MediaState.i);
                return;
            }
        }
        Object aobj[] = new Object[2];
        aobj[0] = dsnappage;
        aobj[1] = downloadrequest.a().name();
        Timber.c("DSnapDownloader", "DISCOVER-MEDIA: Downloaded %s (executed with %s priority).", aobj);
        String s;
        try
        {
            s = d.a(dsnappage.g(), dynamicbytebuffer.b(), dynamicbytebuffer.a());
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Timber.e("DSnapDownloader", "DISCOVER-MEDIA: Cannot %s, external storage is not available.", new Object[] {
                dsnappage
            });
            a(dsnappage, MediaState.j);
            return;
        }
        if (s == null)
        {
            Timber.e("DSnapDownloader", "DISCOVER-MEDIA: Failed to cache %s.", new Object[] {
                dsnappage
            });
            a(dsnappage, MediaState.g);
            return;
        }
        com.snapchat.data.gson.rich_story.RichStoryMetadataResponse richstorymetadataresponse = e.a(s);
        if (richstorymetadataresponse == null)
        {
            Timber.e("DSnapDownloader", "DISCOVER-MEDIA: Failed to parse %s directory %s", new Object[] {
                dsnappage, s
            });
            Object aobj1[] = new Object[4];
            aobj1[0] = dsnappage.a();
            aobj1[1] = dsnappage.g();
            aobj1[2] = dsnappage.d();
            aobj1[3] = dsnappage.e();
            String s1 = String.format("Bad Discover DSnap metadata! id: %s hash: %s edition_id: %s publisher: %s", aobj1);
            i.a(new JsonSyntaxException(s1));
            j.b(dsnappage.e(), dsnappage.a(), dsnappage.g());
            a(dsnappage, MediaState.h);
            return;
        } else
        {
            b.a(dsnappage, richstorymetadataresponse);
            a(dsnappage, MediaState.f);
            b.d();
            return;
        }
    }

    public boolean a(DiscoverUserState discoveruserstate, DSnapPage dsnappage, com.snapchat.android.networkmanager.DownloadRequest.Builder builder)
    {
        DownloadRequest downloadrequest;
label0:
        {
            android.os.Bundle bundle = f.a();
            if (bundle == null || dsnappage.g() == null)
            {
                break MISSING_BLOCK_LABEL_373;
            }
            builder.a((new StringBuilder()).append((String)g.get()).append(dsnappage.f()).toString()).a(bundle).b(dsnappage.g());
            downloadrequest = builder.a();
            synchronized (k)
            {
                if (m == null || downloadrequest.a().compareTo(m) > 0)
                {
                    break label0;
                }
                Object aobj2[] = new Object[3];
                aobj2[0] = dsnappage;
                aobj2[1] = downloadrequest.a().name();
                aobj2[2] = m.name();
                Timber.c("DSnapDownloader", "DISCOVER-MEDIA: Skipping download for %s at %s priority because there is a restriction at %s priority level", aobj2);
            }
            return false;
        }
        PendingRequest pendingrequest = (PendingRequest)l.get(dsnappage.g());
        if (pendingrequest == null)
        {
            break MISSING_BLOCK_LABEL_317;
        }
        if (pendingrequest.b().compareTo(downloadrequest.a()) < 0)
        {
            break MISSING_BLOCK_LABEL_200;
        }
        obj;
        JVM INSTR monitorexit ;
        return false;
        Object aobj[] = new Object[3];
        aobj[0] = dsnappage;
        aobj[1] = pendingrequest.b().name();
        aobj[2] = downloadrequest.a().name();
        Timber.c("DSnapDownloader", "DISCOVER-MEDIA: Attempting to upgrade download priority for %s from %s to %s", aobj);
_L1:
        l.put(dsnappage.g(), new PendingRequest(dsnappage, downloadrequest.a()));
        obj;
        JVM INSTR monitorexit ;
        a.a(downloadrequest, this);
        h.a(dsnappage.g(), dsnappage.e(), dsnappage.a(), dsnappage.g(), dsnappage.i().intValue());
        return true;
        Object aobj1[] = new Object[2];
        aobj1[0] = dsnappage;
        aobj1[1] = downloadrequest.a().name();
        Timber.c("DSnapDownloader", "DISCOVER-MEDIA: Queueing download for %s with priority %s", aobj1);
        c.a(dsnappage, MediaState.b);
          goto _L1
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        return false;
    }
}
