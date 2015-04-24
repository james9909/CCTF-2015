// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import android.content.Context;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.discover.analytics.DiscoverPerformanceAnalytics;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;
import com.snapchat.android.discover.controller.internal.edition.DefaultEndpointProvider;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DiscoverCaches;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.networkmanager.DownloadManager;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.networkmanager.DownloadRequest;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.memory.DynamicByteBuffer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.discover.controller.internal:
//            DiscoverMediaLoader, ContextAwareParamsProvider, DiscoverUserState

public class IntroVideoMediaLoader
    implements DiscoverMediaLoader, com.snapchat.android.networkmanager.DownloadManager.Callback
{

    protected final Map a;
    protected com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener b = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener() {

        final IntroVideoMediaLoader a;

        public void a(List list)
        {
            Iterator iterator = list.iterator();
            boolean flag = false;
            while (iterator.hasNext()) 
            {
                ChannelPage channelpage = (ChannelPage)iterator.next();
                boolean flag1;
                if (channelpage.v() == MediaState.f && !IntroVideoMediaLoader.a(a).f(channelpage.w()))
                {
                    Timber.d("IntroVideoMediaLoader", "Resetting intro video media state for %s because it is not in the cache %s", new Object[] {
                        channelpage
                    });
                    flag1 = flag | IntroVideoMediaLoader.b(a).a(channelpage, MediaState.a);
                } else
                {
                    flag1 = flag;
                }
                flag = flag1;
            }
            if (flag)
            {
                IntroVideoMediaLoader.c(a).c();
            }
        }

            
            {
                a = IntroVideoMediaLoader.this;
                super();
            }
    };
    protected com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener c = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener() {

        final IntroVideoMediaLoader a;

        public void a(List list)
        {
            Iterator iterator = list.iterator();
            boolean flag = false;
            while (iterator.hasNext()) 
            {
                ChannelPage channelpage = (ChannelPage)iterator.next();
                boolean flag1;
                if (channelpage.v().b())
                {
                    Object aobj[] = new Object[2];
                    aobj[0] = channelpage;
                    aobj[1] = channelpage.v().name();
                    Timber.c("IntroVideoMediaLoader", "Resetting state for %s because it was in error state %s", aobj);
                    flag1 = flag | IntroVideoMediaLoader.b(a).a(channelpage, MediaState.a);
                } else
                {
                    flag1 = flag;
                }
                flag = flag1;
            }
            if (flag)
            {
                IntroVideoMediaLoader.c(a).c();
            }
        }

            
            {
                a = IntroVideoMediaLoader.this;
                super();
            }
    };
    protected com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener d = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener() {

        final IntroVideoMediaLoader a;

        public void a(List list)
        {
            IntroVideoMediaLoader.a(a, list);
        }

            
            {
                a = IntroVideoMediaLoader.this;
                super();
            }
    };
    private final DownloadManager e;
    private final Cache f;
    private final DiscoverRepository g;
    private final DiscoverMediaStateTracker h;
    private final ContextAwareParamsProvider i;
    private final Provider j;
    private final DiscoverPerformanceAnalytics k;

    public IntroVideoMediaLoader()
    {
        this(DiscoverRepository.a(), DiscoverMediaStateTracker.a(), DownloadManager.a(), DiscoverCaches.a, new ContextAwareParamsProvider(), ((Provider) (new DefaultEndpointProvider())), DiscoverPerformanceAnalytics.a());
    }

    protected IntroVideoMediaLoader(DiscoverRepository discoverrepository, DiscoverMediaStateTracker discovermediastatetracker, DownloadManager downloadmanager, Cache cache, ContextAwareParamsProvider contextawareparamsprovider, Provider provider, DiscoverPerformanceAnalytics discoverperformanceanalytics)
    {
        a = new ConcurrentHashMap();
        g = discoverrepository;
        h = discovermediastatetracker;
        f = cache;
        e = downloadmanager;
        i = contextawareparamsprovider;
        j = provider;
        k = discoverperformanceanalytics;
    }

    static Cache a(IntroVideoMediaLoader introvideomedialoader)
    {
        return introvideomedialoader.f;
    }

    static void a(IntroVideoMediaLoader introvideomedialoader, List list)
    {
        introvideomedialoader.b(list);
    }

    private void a(List list)
    {
        HashSet hashset = new HashSet();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); hashset.add(((ChannelPage)iterator.next()).w())) { }
        f.a(hashset);
    }

    static DiscoverMediaStateTracker b(IntroVideoMediaLoader introvideomedialoader)
    {
        return introvideomedialoader.h;
    }

    private void b(List list)
    {
        Iterator iterator = list.iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            ChannelPage channelpage = (ChannelPage)iterator.next();
            boolean flag1;
            if (channelpage.v() == MediaState.f)
            {
                flag1 = flag;
            } else
            if (channelpage.v() == MediaState.a)
            {
                if (f.f(channelpage.w()))
                {
                    flag1 = flag | h.a(channelpage, MediaState.f);
                } else
                if (f.a())
                {
                    flag1 = flag | a(channelpage, DownloadPriority.b);
                } else
                {
                    flag1 = flag | h.a(channelpage, MediaState.j);
                }
            } else
            {
                flag1 = flag;
            }
            flag = flag1;
        }
        if (flag)
        {
            g.c();
        }
        a(list);
    }

    static DiscoverRepository c(IntroVideoMediaLoader introvideomedialoader)
    {
        return introvideomedialoader.g;
    }

    public void a()
    {
        DiscoverRepository discoverrepository = g;
        com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener achannelrepositorylistener[] = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener[1];
        achannelrepositorylistener[0] = b;
        discoverrepository.a(achannelrepositorylistener);
    }

    public void a(Context context)
    {
        g.a(d);
    }

    public void a(DiscoverUserState discoveruserstate)
    {
        if (f.a() && discoveruserstate.a() != null && !discoveruserstate.a().j() && a(discoveruserstate.a(), DownloadPriority.c))
        {
            g.c();
        }
    }

    public void a(DownloadRequest downloadrequest)
    {
        ChannelPage channelpage = (ChannelPage)a.remove(downloadrequest.e());
        if (channelpage != null)
        {
            k.a(downloadrequest.e(), channelpage.a());
        }
    }

    public void a(DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult)
    {
        ChannelPage channelpage;
        channelpage = (ChannelPage)a.remove(downloadrequest.e());
        if (channelpage == null)
        {
            return;
        }
        if (!networkresult.h()) goto _L2; else goto _L1
_L1:
        Object aobj1[] = new Object[2];
        aobj1[0] = channelpage.a();
        aobj1[1] = downloadrequest.a().name();
        Timber.c("IntroVideoMediaLoader", "DISCOVER-MEDIA: Downloaded intro video for %s (executed with %s priority)", aobj1);
        if (f.a(channelpage.w(), dynamicbytebuffer.b(), dynamicbytebuffer.a()) == null) goto _L4; else goto _L3
_L3:
        boolean flag2 = h.a(channelpage, MediaState.f);
        boolean flag = flag2 | false;
_L6:
        k.a(downloadrequest.e(), channelpage.a(), h.c(channelpage), networkresult.h(), networkresult.e(), channelpage);
        if (flag)
        {
            g.c();
            g.d();
        }
        k.c(channelpage);
        return;
_L4:
        boolean flag1;
        try
        {
            Object aobj3[] = new Object[1];
            aobj3[0] = channelpage.a();
            Timber.e("IntroVideoMediaLoader", "DISCOVER-MEDIA: Cannot cache intro video for %s, cache write failed.", aobj3);
            flag1 = h.a(channelpage, MediaState.g);
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = channelpage.a();
            Timber.e("IntroVideoMediaLoader", "DISCOVER-MEDIA: Cannot cache intro video for %s, external storage is not available.", aobj2);
            flag = false | h.a(channelpage, MediaState.j);
            continue; /* Loop/switch isn't completed */
        }
        flag = flag1 | false;
        continue; /* Loop/switch isn't completed */
_L2:
        Object aobj[] = new Object[1];
        aobj[0] = channelpage.a();
        Timber.e("IntroVideoMediaLoader", "DISCOVER-MEDIA: Failed to download intro video for %s.", aobj);
        flag = false | h.a(channelpage, MediaState.i);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(String s)
    {
    }

    protected boolean a(ChannelPage channelpage, DownloadPriority downloadpriority)
    {
        String s = channelpage.e();
        a.put(s, channelpage);
        boolean flag = false | h.a(channelpage, MediaState.b);
        if (b(channelpage, downloadpriority))
        {
            k.b(channelpage);
            return flag;
        } else
        {
            a.remove(s);
            return flag | h.a(channelpage, MediaState.a);
        }
    }

    public void b()
    {
        DiscoverRepository discoverrepository = g;
        com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener achannelrepositorylistener[] = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener[1];
        achannelrepositorylistener[0] = c;
        discoverrepository.a(achannelrepositorylistener);
    }

    protected boolean b(ChannelPage channelpage, DownloadPriority downloadpriority)
    {
        android.os.Bundle bundle = i.a();
        boolean flag = false;
        if (bundle != null)
        {
            Object aobj[] = new Object[3];
            aobj[0] = downloadpriority.name();
            aobj[1] = channelpage.a();
            aobj[2] = channelpage.e();
            Timber.c("IntroVideoMediaLoader", "DISCOVER-MEDIA: Requesting %s priority download for %s intro video (%s).", aobj);
            String s;
            DownloadRequest downloadrequest;
            if (channelpage.e().startsWith("http"))
            {
                s = channelpage.e();
            } else
            {
                s = (new StringBuilder()).append((String)j.get()).append(channelpage.e()).toString();
            }
            downloadrequest = (new com.snapchat.android.networkmanager.DownloadRequest.Builder()).a(downloadpriority).b(channelpage.e()).a(s).a(bundle).b(DownloadPriority.b).a();
            e.a(downloadrequest, this);
            k.a(channelpage.e(), channelpage.a(), channelpage.e());
            flag = true;
        }
        return flag;
    }

    public void c()
    {
    }

    public void d()
    {
    }

    public DiscoverMediaCategory e()
    {
        return DiscoverMediaCategory.a;
    }
}
