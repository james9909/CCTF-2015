// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import android.content.Context;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.discover.analytics.DiscoverPerformanceAnalytics;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;
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

// Referenced classes of package com.snapchat.android.discover.controller.internal:
//            DiscoverMediaLoader, DiscoverUserState

public class PublisherIconMediaLoader
    implements DiscoverMediaLoader, com.snapchat.android.networkmanager.DownloadManager.Callback
{

    protected final Map a;
    protected com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener b = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener() {

        final PublisherIconMediaLoader a;

        public void a(List list)
        {
            Iterator iterator = list.iterator();
            boolean flag = false;
            while (iterator.hasNext()) 
            {
                ChannelPage channelpage = (ChannelPage)iterator.next();
                String s = PublisherIconMediaLoader.a(a, channelpage.b());
                if (channelpage.s() == MediaState.f && !PublisherIconMediaLoader.a(a).f(s))
                {
                    Timber.d("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Resetting filled icon media state for %s because it is not in the cache %s", new Object[] {
                        channelpage
                    });
                    flag |= PublisherIconMediaLoader.b(a).b(channelpage, MediaState.a);
                }
                String s1 = PublisherIconMediaLoader.a(a, channelpage.c());
                if (channelpage.t() == MediaState.f && !PublisherIconMediaLoader.a(a).f(s1))
                {
                    Timber.d("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Resetting inverted icon media state for %s because it is not in the cache %s", new Object[] {
                        channelpage
                    });
                    flag |= PublisherIconMediaLoader.b(a).c(channelpage, MediaState.a);
                }
                boolean flag1;
                if (channelpage.u() == MediaState.f && channelpage.d() != null && !PublisherIconMediaLoader.a(a).f(PublisherIconMediaLoader.a(a, channelpage.d())))
                {
                    Timber.d("PublisherIconMediaLoader", "BRAND-ICON: Resetting loading icon media state for %s because it is not in the cache %s", new Object[] {
                        channelpage
                    });
                    flag1 = flag | PublisherIconMediaLoader.b(a).d(channelpage, MediaState.a);
                } else
                {
                    flag1 = flag;
                }
                flag = flag1;
            }
            if (flag)
            {
                PublisherIconMediaLoader.c(a).c();
            }
        }

            
            {
                a = PublisherIconMediaLoader.this;
                super();
            }
    };
    protected com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener c = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener() {

        final PublisherIconMediaLoader a;

        public void a(List list)
        {
            Iterator iterator = list.iterator();
            boolean flag = false;
            while (iterator.hasNext()) 
            {
                ChannelPage channelpage = (ChannelPage)iterator.next();
                if (channelpage.s().b())
                {
                    Object aobj2[] = new Object[2];
                    aobj2[0] = channelpage;
                    aobj2[1] = channelpage.s().name();
                    Timber.c("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Resetting state for filled icon for %s because it was in error state %s", aobj2);
                    flag |= PublisherIconMediaLoader.b(a).b(channelpage, MediaState.a);
                }
                if (channelpage.t().b())
                {
                    Object aobj1[] = new Object[2];
                    aobj1[0] = channelpage;
                    aobj1[1] = channelpage.t().name();
                    Timber.c("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Resetting state for inverted icon for %s because it was in error state %s", aobj1);
                    flag |= PublisherIconMediaLoader.b(a).c(channelpage, MediaState.a);
                }
                boolean flag1;
                if (channelpage.u().b())
                {
                    Object aobj[] = new Object[2];
                    aobj[0] = channelpage;
                    aobj[1] = channelpage.u().name();
                    Timber.a("PublisherIconMediaLoader", "BRAND-ICON: Resetting state for loading icon for %s because it was in error state %s", aobj);
                    flag1 = flag | PublisherIconMediaLoader.b(a).d(channelpage, MediaState.a);
                } else
                {
                    flag1 = flag;
                }
                flag = flag1;
            }
            if (flag)
            {
                PublisherIconMediaLoader.c(a).c();
            }
        }

            
            {
                a = PublisherIconMediaLoader.this;
                super();
            }
    };
    protected com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener d = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener() {

        final PublisherIconMediaLoader a;

        public void a(List list)
        {
            PublisherIconMediaLoader.a(a, list);
        }

            
            {
                a = PublisherIconMediaLoader.this;
                super();
            }
    };
    private final DownloadManager e;
    private final Cache f;
    private final DiscoverRepository g;
    private final DiscoverMediaStateTracker h;
    private final DiscoverPerformanceAnalytics i;

    public PublisherIconMediaLoader()
    {
        this(DiscoverRepository.a(), DiscoverMediaStateTracker.a(), DownloadManager.a(), DiscoverCaches.c, DiscoverPerformanceAnalytics.a());
    }

    protected PublisherIconMediaLoader(DiscoverRepository discoverrepository, DiscoverMediaStateTracker discovermediastatetracker, DownloadManager downloadmanager, Cache cache, DiscoverPerformanceAnalytics discoverperformanceanalytics)
    {
        a = new ConcurrentHashMap();
        g = discoverrepository;
        h = discovermediastatetracker;
        f = cache;
        e = downloadmanager;
        i = discoverperformanceanalytics;
    }

    static Cache a(PublisherIconMediaLoader publishericonmedialoader)
    {
        return publishericonmedialoader.f;
    }

    static String a(PublisherIconMediaLoader publishericonmedialoader, String s)
    {
        return publishericonmedialoader.b(s);
    }

    static void a(PublisherIconMediaLoader publishericonmedialoader, List list)
    {
        publishericonmedialoader.b(list);
    }

    private void a(List list)
    {
        HashSet hashset = new HashSet();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChannelPage channelpage = (ChannelPage)iterator.next();
            hashset.add(b(channelpage.b()));
            hashset.add(b(channelpage.c()));
            if (channelpage.d() != null)
            {
                hashset.add(b(channelpage.d()));
            }
        } while (true);
        f.a(hashset);
    }

    private boolean a(ChannelPage channelpage, com.snapchat.android.discover.model.ChannelPage.MediaType mediatype)
    {
        String s = channelpage.a(mediatype);
        MediaState mediastate;
        if (s != null && !a.containsKey(s))
        {
            if ((mediastate = channelpage.b(mediatype)) != MediaState.f && mediastate == MediaState.a)
            {
                String s1 = b(s);
                if (f.f(s1))
                {
                    return false | a(channelpage, MediaState.f, mediatype);
                }
                if (f.a())
                {
                    Timber.a("PublisherIconMediaLoader", "BRAND-ICON: Missing file for publisher icon %s", new Object[] {
                        s
                    });
                    f.d(s1);
                    Timber.a("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Icon missing in cache for publisher icon %s", new Object[] {
                        s
                    });
                    a(channelpage, DownloadPriority.c, mediatype);
                    return true;
                } else
                {
                    return false | a(channelpage, MediaState.j, mediatype);
                }
            }
        }
        return false;
    }

    private boolean a(ChannelPage channelpage, MediaState mediastate, com.snapchat.android.discover.model.ChannelPage.MediaType mediatype)
    {
        static class _cls4
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.discover.model.ChannelPage.MediaType.values().length];
                try
                {
                    a[com.snapchat.android.discover.model.ChannelPage.MediaType.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.discover.model.ChannelPage.MediaType.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.discover.model.ChannelPage.MediaType.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls4.a[mediatype.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
            return false | h.b(channelpage, mediastate);

        case 2: // '\002'
            return false | h.c(channelpage, mediastate);

        case 3: // '\003'
            return false | h.d(channelpage, mediastate);
        }
    }

    static DiscoverMediaStateTracker b(PublisherIconMediaLoader publishericonmedialoader)
    {
        return publishericonmedialoader.h;
    }

    private String b(String s)
    {
        return Integer.toString(s.hashCode());
    }

    private void b(List list)
    {
        Iterator iterator = list.iterator();
        boolean flag;
        ChannelPage channelpage;
        for (flag = false; iterator.hasNext(); flag = flag | a(channelpage, com.snapchat.android.discover.model.ChannelPage.MediaType.b) | a(channelpage, com.snapchat.android.discover.model.ChannelPage.MediaType.c) | a(channelpage, com.snapchat.android.discover.model.ChannelPage.MediaType.d))
        {
            channelpage = (ChannelPage)iterator.next();
        }

        if (flag)
        {
            g.c();
        }
        a(list);
    }

    static DiscoverRepository c(PublisherIconMediaLoader publishericonmedialoader)
    {
        return publishericonmedialoader.g;
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
        if (f.a() && discoveruserstate.a() != null)
        {
            ChannelPage channelpage = discoveruserstate.a();
            String s = channelpage.p();
            boolean flag = false;
            if (s == null)
            {
                a(channelpage, DownloadPriority.c, com.snapchat.android.discover.model.ChannelPage.MediaType.b);
                flag = true;
            }
            if (channelpage.q() == null)
            {
                a(channelpage, DownloadPriority.c, com.snapchat.android.discover.model.ChannelPage.MediaType.c);
                flag = true;
            }
            if (channelpage.r() == null && channelpage.d() != null)
            {
                a(channelpage, DownloadPriority.c, com.snapchat.android.discover.model.ChannelPage.MediaType.d);
                flag = true;
            }
            if (flag)
            {
                g.c();
            }
        }
    }

    protected void a(ChannelPage channelpage, DownloadPriority downloadpriority, com.snapchat.android.discover.model.ChannelPage.MediaType mediatype)
    {
        String s = channelpage.a(mediatype);
        Object aobj[] = new Object[3];
        aobj[0] = downloadpriority.name();
        aobj[1] = channelpage.a();
        aobj[2] = s;
        Timber.c("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Requesting %s priority download for %s publisher icon (%s).", aobj);
        a.put(s, channelpage);
        a(channelpage, MediaState.b, mediatype);
        DownloadRequest downloadrequest = (new com.snapchat.android.networkmanager.DownloadRequest.Builder()).a(downloadpriority).b(s).a(s).b(DownloadPriority.b).a();
        e.a(downloadrequest, this);
        i.b(channelpage);
    }

    public void a(DownloadRequest downloadrequest)
    {
        Object aobj[] = new Object[1];
        aobj[0] = downloadrequest.d();
        Timber.a("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Download cancelled for publisher icon %s", aobj);
        a.remove(downloadrequest.d());
    }

    public void a(DownloadRequest downloadrequest, DynamicByteBuffer dynamicbytebuffer, NetworkResult networkresult)
    {
        ChannelPage channelpage;
        com.snapchat.android.discover.model.ChannelPage.MediaType mediatype;
        channelpage = (ChannelPage)a.remove(downloadrequest.d());
        if (channelpage == null)
        {
            return;
        }
        mediatype = channelpage.a(downloadrequest.d());
        if (mediatype == null)
        {
            Object aobj4[] = new Object[1];
            aobj4[0] = downloadrequest.d();
            Timber.e("PublisherIconMediaLoader", "BRAND-ICON: Unknown URL %s", aobj4);
            return;
        }
        if (!networkresult.h()) goto _L2; else goto _L1
_L1:
        Object aobj1[] = new Object[3];
        aobj1[0] = downloadrequest.d();
        aobj1[1] = channelpage.a();
        aobj1[2] = downloadrequest.a().name();
        Timber.c("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Downloaded publisher icon %s for %s (executed with %s priority)", aobj1);
        if (f.a(b(downloadrequest.d()), dynamicbytebuffer.b(), dynamicbytebuffer.a()) == null) goto _L4; else goto _L3
_L3:
        boolean flag2 = a(channelpage, MediaState.f, mediatype);
        boolean flag = flag2 | false;
_L6:
        if (flag)
        {
            g.c();
            g.d();
        }
        i.c(channelpage);
        return;
_L4:
        boolean flag1;
        try
        {
            Object aobj3[] = new Object[2];
            aobj3[0] = downloadrequest.d();
            aobj3[1] = channelpage.a();
            Timber.e("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Cannot cache publisher icon %s for %s, cache write failed.", aobj3);
            flag1 = a(channelpage, MediaState.g, mediatype);
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = downloadrequest.d();
            Timber.e("PublisherIconMediaLoader", "BDISCOVER-MEDIA-BRAND-ICON: annot cache publisher icon %s, external storage is not available.", aobj2);
            flag = false | a(channelpage, MediaState.j, mediatype);
            continue; /* Loop/switch isn't completed */
        }
        flag = flag1 | false;
        continue; /* Loop/switch isn't completed */
_L2:
        Object aobj[] = new Object[2];
        aobj[0] = downloadrequest.d();
        aobj[1] = networkresult;
        Timber.e("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Failed to download publisher icon %s %s", aobj);
        flag = false | a(channelpage, MediaState.i, mediatype);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(String s)
    {
    }

    public void b()
    {
        DiscoverRepository discoverrepository = g;
        com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener achannelrepositorylistener[] = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener[1];
        achannelrepositorylistener[0] = c;
        discoverrepository.a(achannelrepositorylistener);
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
