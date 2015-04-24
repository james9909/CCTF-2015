// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import android.content.Context;
import android.net.NetworkInfo;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;
import com.snapchat.android.discover.controller.internal.ads.PerEditionPredicate;
import com.snapchat.android.discover.controller.internal.ads.ResetAdsOperation;
import com.snapchat.android.discover.controller.internal.edition.DSnapAdResolver;
import com.snapchat.android.discover.controller.internal.edition.DSnapDownloader;
import com.snapchat.android.discover.controller.internal.edition.DSnapLoadingStrategy;
import com.snapchat.android.discover.controller.internal.edition.NetworkAwareDSnapLoadingStrategy;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverCaches;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.networkmanager.NetworkStatusListener;
import com.snapchat.android.networkmanager.NetworkStatusManager;
import com.snapchat.android.util.cache.Cache;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.snapchat.android.discover.controller.internal:
//            DiscoverMediaLoader, DiscoverUserState

public class EditionMediaLoader
    implements DiscoverMediaLoader, NetworkStatusListener
{

    protected com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener a = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener() {

        final EditionMediaLoader a;

        public void a(List list)
        {
            Iterator iterator = list.iterator();
            boolean flag = false;
            while (iterator.hasNext()) 
            {
                DSnapPage dsnappage = (DSnapPage)iterator.next();
                if (dsnappage.m().b())
                {
                    Object aobj1[] = new Object[2];
                    aobj1[0] = dsnappage;
                    aobj1[1] = dsnappage.m().name();
                    Timber.c("EditionMediaLoader", "Resetting placeholder state for %s because it was in error state %s", aobj1);
                    flag |= EditionMediaLoader.a(a).b(dsnappage, MediaState.a);
                }
                boolean flag1;
                if (dsnappage.l().b())
                {
                    Object aobj[] = new Object[2];
                    aobj[0] = dsnappage;
                    aobj[1] = dsnappage.l().name();
                    Timber.c("EditionMediaLoader", "Resetting media state for %s because it was in error state %s", aobj);
                    flag1 = flag | EditionMediaLoader.a(a).a(dsnappage, MediaState.a);
                } else
                {
                    flag1 = flag;
                }
                flag = flag1;
            }
            if (flag)
            {
                EditionMediaLoader.b(a).c();
            }
        }

            
            {
                a = EditionMediaLoader.this;
                super();
            }
    };
    protected com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener b = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener() {

        final EditionMediaLoader a;

        public void a(List list)
        {
            Iterator iterator = list.iterator();
            boolean flag = false;
            while (iterator.hasNext()) 
            {
                DSnapPage dsnappage = (DSnapPage)iterator.next();
                boolean flag1;
                if (dsnappage.l() == MediaState.f && dsnappage.g() != null && !EditionMediaLoader.c(a).f(dsnappage.g()))
                {
                    Timber.d("EditionMediaLoader", "Resetting media state for %s because it is not in the cache %s", new Object[] {
                        dsnappage
                    });
                    flag1 = flag | EditionMediaLoader.a(a).a(dsnappage, MediaState.a);
                } else
                {
                    flag1 = flag;
                }
                flag = flag1;
            }
            if (flag)
            {
                EditionMediaLoader.b(a).c();
            }
        }

            
            {
                a = EditionMediaLoader.this;
                super();
            }
    };
    protected com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener c = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener() {

        final EditionMediaLoader a;

        public void a(List list)
        {
            EditionMediaLoader.a(a, list);
        }

            
            {
                a = EditionMediaLoader.this;
                super();
            }
    };
    private final NetworkStatusManager d;
    private final DiscoverRepository e;
    private final DiscoverMediaStateTracker f;
    private final Cache g;
    private final DSnapAdResolver h;
    private final DSnapDownloader i;
    private final DSnapLoadingStrategy j;
    private DiscoverUserState k;

    public EditionMediaLoader()
    {
        this(NetworkStatusManager.a(), DiscoverRepository.a(), DiscoverMediaStateTracker.a(), DiscoverCaches.b, new DSnapAdResolver(), new DSnapDownloader(), ((DSnapLoadingStrategy) (new NetworkAwareDSnapLoadingStrategy())));
    }

    protected EditionMediaLoader(NetworkStatusManager networkstatusmanager, DiscoverRepository discoverrepository, DiscoverMediaStateTracker discovermediastatetracker, Cache cache, DSnapAdResolver dsnapadresolver, DSnapDownloader dsnapdownloader, DSnapLoadingStrategy dsnaploadingstrategy)
    {
        k = new DiscoverUserState();
        d = networkstatusmanager;
        e = discoverrepository;
        f = discovermediastatetracker;
        g = cache;
        h = dsnapadresolver;
        i = dsnapdownloader;
        j = dsnaploadingstrategy;
    }

    static DiscoverMediaStateTracker a(EditionMediaLoader editionmedialoader)
    {
        return editionmedialoader.f;
    }

    static void a(EditionMediaLoader editionmedialoader, List list)
    {
        editionmedialoader.b(list);
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
            DSnapPage dsnappage = (DSnapPage)iterator.next();
            if (dsnappage.g() != null)
            {
                hashset.add(dsnappage.g());
            }
        } while (true);
        g.a(hashset);
    }

    private boolean a(DiscoverUserState discoveruserstate, DSnapPage dsnappage)
    {
        com.snapchat.android.networkmanager.DownloadRequest.Builder builder = new com.snapchat.android.networkmanager.DownloadRequest.Builder();
        if (j.a(discoveruserstate, dsnappage, builder))
        {
            return i.a(discoveruserstate, dsnappage, builder);
        } else
        {
            return false;
        }
    }

    private boolean a(DSnapPage dsnappage)
    {
        return h.a(dsnappage);
    }

    static DiscoverRepository b(EditionMediaLoader editionmedialoader)
    {
        return editionmedialoader.e;
    }

    private void b(List list)
    {
        DiscoverUserState discoveruserstate;
        Iterator iterator;
        boolean flag;
        discoveruserstate = k;
        iterator = list.iterator();
        flag = false;
_L2:
        boolean flag1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        DSnapPage dsnappage = (DSnapPage)iterator.next();
        if (dsnappage.k() == MediaState.f)
        {
            flag1 = flag;
        } else
        if (dsnappage.k() == MediaState.c)
        {
            flag1 = flag | a(dsnappage);
        } else
        if (dsnappage.k() == MediaState.a)
        {
            if (dsnappage.g() == null)
            {
                break MISSING_BLOCK_LABEL_225;
            }
            if (g.f(dsnappage.g()))
            {
                flag1 = flag | f.a(dsnappage, MediaState.f);
            } else
            if (g.a())
            {
                flag1 = flag | a(discoveruserstate, dsnappage);
            } else
            {
                flag1 = flag | f.a(dsnappage, MediaState.j);
            }
        } else
        {
            if (dsnappage.k() != MediaState.b)
            {
                break MISSING_BLOCK_LABEL_225;
            }
            flag1 = flag | a(discoveruserstate, dsnappage);
        }
_L3:
        flag = flag1;
        if (true) goto _L2; else goto _L1
_L1:
        if (flag)
        {
            e.c();
        }
        a(list);
        return;
        flag1 = flag;
          goto _L3
    }

    static Cache c(EditionMediaLoader editionmedialoader)
    {
        return editionmedialoader.g;
    }

    public void a()
    {
        DiscoverRepository discoverrepository = e;
        com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener adsnaprepositorylistener[] = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener[1];
        adsnaprepositorylistener[0] = b;
        discoverrepository.a(adsnaprepositorylistener);
    }

    public void a(Context context)
    {
        d.a(this);
        e.a(c);
        i.a(context);
    }

    public void a(NetworkInfo networkinfo)
    {
        e.b();
    }

    public void a(DiscoverUserState discoveruserstate)
    {
        k = discoveruserstate;
    }

    public void a(String s)
    {
        b(s).a();
    }

    protected ResetAdsOperation b(String s)
    {
        return new ResetAdsOperation(new PerEditionPredicate(s));
    }

    public void b()
    {
        DiscoverRepository discoverrepository = e;
        com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener adsnaprepositorylistener[] = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener[1];
        adsnaprepositorylistener[0] = a;
        discoverrepository.a(adsnaprepositorylistener);
    }

    public void c()
    {
        Timber.c("EditionMediaLoader", "DISCOVER-MEDIA: Restricting low and medium priority downloads.", new Object[0]);
        i.a(DownloadPriority.b);
    }

    public void d()
    {
        Timber.c("EditionMediaLoader", "DISCOVER-MEDIA: Removing all download restrictions.", new Object[0]);
        i.a(null);
        e.b();
    }

    public DiscoverMediaCategory e()
    {
        return DiscoverMediaCategory.b;
    }
}
