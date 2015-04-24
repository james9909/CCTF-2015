// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.api2;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.DiscoverVideoCatalog;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.data.gson.discover.VideoCatalogListResponse;
import com.snapchat.data.gson.discover.VideoCatalogResponse;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.discover.api2:
//            FetchVideoCatalogTask

public class FetchVideoCatalogOperation
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{

    protected final com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener a;
    protected final com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener b;
    protected final com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener c;
    private final String d;
    private final Map e;
    private final DiscoverRepository f;
    private final DiscoverMediaStateTracker g;
    private final DiscoverVideoCatalog h;
    private final String i;

    public FetchVideoCatalogOperation(String s)
    {
        this(s, DiscoverRepository.a(), DiscoverMediaStateTracker.a(), DiscoverVideoCatalog.a(), ((Map) (new HashMap())));
    }

    protected FetchVideoCatalogOperation(String s, DiscoverRepository discoverrepository, DiscoverMediaStateTracker discovermediastatetracker, DiscoverVideoCatalog discovervideocatalog, Map map)
    {
        d = "FetchVideoCatalogOperation";
        a = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener() {

            final FetchVideoCatalogOperation a;

            public void a(List list)
            {
                Iterator iterator = list.iterator();
                boolean flag = false;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    DSnapPage dsnappage = (DSnapPage)iterator.next();
                    DSnapPanel dsnappanel = dsnappage.o();
                    if (dsnappanel != null && dsnappanel.f() == com.snapchat.android.discover.model.DSnapPanel.MediaType.d)
                    {
                        boolean flag1;
                        if (dsnappage.d().equals(FetchVideoCatalogOperation.a(a)))
                        {
                            flag1 = flag | FetchVideoCatalogOperation.b(a).a(dsnappanel, MediaState.b);
                        } else
                        {
                            FetchVideoCatalogOperation.c(a).a(dsnappanel.b(), null);
                            flag1 = flag | FetchVideoCatalogOperation.b(a).a(dsnappanel, MediaState.a);
                        }
                        flag = flag1;
                    }
                } while (true);
                if (flag)
                {
                    FetchVideoCatalogOperation.d(a).c();
                }
                FetchVideoCatalogOperation.e(a);
            }

            
            {
                a = FetchVideoCatalogOperation.this;
                super();
            }
        };
        b = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener() {

            final FetchVideoCatalogOperation a;

            public void a(List list)
            {
                Iterator iterator = list.iterator();
                boolean flag = false;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    DSnapPage dsnappage = (DSnapPage)iterator.next();
                    if (dsnappage.d().equals(FetchVideoCatalogOperation.a(a)))
                    {
                        DSnapPanel dsnappanel = dsnappage.o();
                        if (dsnappanel != null && dsnappanel.f() == com.snapchat.android.discover.model.DSnapPanel.MediaType.d && FetchVideoCatalogOperation.b(a).a(dsnappanel) == MediaState.b)
                        {
                            String s1 = dsnappanel.b();
                            boolean flag1;
                            if (FetchVideoCatalogOperation.f(a).containsKey(s1))
                            {
                                VideoCatalogResponse videocatalogresponse = (VideoCatalogResponse)FetchVideoCatalogOperation.f(a).get(s1);
                                Timber.c("FetchVideoCatalogOperation", "DISCOVER-MEDIA: Successfully loaded metadata for %s, with response %s", new Object[] {
                                    dsnappanel, videocatalogresponse
                                });
                                FetchVideoCatalogOperation.c(a).a(s1, videocatalogresponse);
                                flag1 = flag | FetchVideoCatalogOperation.b(a).a(dsnappanel, MediaState.f);
                            } else
                            {
                                Timber.c("FetchVideoCatalogOperation", "DISCOVER-MEDIA: Failed load video URL for %s, it was not in the server response", new Object[] {
                                    dsnappanel
                                });
                                flag1 = flag | FetchVideoCatalogOperation.b(a).a(dsnappanel, MediaState.k);
                            }
                            flag = flag1;
                        }
                    }
                } while (true);
                if (flag)
                {
                    FetchVideoCatalogOperation.d(a).c();
                }
            }

            
            {
                a = FetchVideoCatalogOperation.this;
                super();
            }
        };
        c = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener() {

            final FetchVideoCatalogOperation a;

            public void a(List list)
            {
                Iterator iterator = list.iterator();
                boolean flag = false;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    DSnapPage dsnappage = (DSnapPage)iterator.next();
                    if (dsnappage.d().equals(FetchVideoCatalogOperation.a(a)))
                    {
                        DSnapPanel dsnappanel = dsnappage.o();
                        if (dsnappanel != null && dsnappanel.f() == com.snapchat.android.discover.model.DSnapPanel.MediaType.d && FetchVideoCatalogOperation.b(a).a(dsnappanel) == MediaState.b)
                        {
                            flag |= FetchVideoCatalogOperation.b(a).a(dsnappanel, MediaState.i);
                        }
                    }
                } while (true);
                if (flag)
                {
                    FetchVideoCatalogOperation.d(a).c();
                }
            }

            
            {
                a = FetchVideoCatalogOperation.this;
                super();
            }
        };
        f = discoverrepository;
        g = discovermediastatetracker;
        h = discovervideocatalog;
        i = s;
        e = map;
    }

    static String a(FetchVideoCatalogOperation fetchvideocatalogoperation)
    {
        return fetchvideocatalogoperation.i;
    }

    static DiscoverMediaStateTracker b(FetchVideoCatalogOperation fetchvideocatalogoperation)
    {
        return fetchvideocatalogoperation.g;
    }

    private void b()
    {
        FetchVideoCatalogTask fetchvideocatalogtask = new FetchVideoCatalogTask(i);
        fetchvideocatalogtask.a(com/snapchat/data/gson/discover/VideoCatalogListResponse, this);
        fetchvideocatalogtask.g();
    }

    static DiscoverVideoCatalog c(FetchVideoCatalogOperation fetchvideocatalogoperation)
    {
        return fetchvideocatalogoperation.h;
    }

    static DiscoverRepository d(FetchVideoCatalogOperation fetchvideocatalogoperation)
    {
        return fetchvideocatalogoperation.f;
    }

    static void e(FetchVideoCatalogOperation fetchvideocatalogoperation)
    {
        fetchvideocatalogoperation.b();
    }

    static Map f(FetchVideoCatalogOperation fetchvideocatalogoperation)
    {
        return fetchvideocatalogoperation.e;
    }

    public void a()
    {
        g.b();
        h.b();
        DiscoverRepository discoverrepository = f;
        com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener adsnaprepositorylistener[] = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener[1];
        adsnaprepositorylistener[0] = a;
        discoverrepository.a(adsnaprepositorylistener);
    }

    protected void a(NetworkResult networkresult)
    {
        Object aobj[] = new Object[2];
        aobj[0] = i;
        aobj[1] = networkresult;
        Timber.e("FetchVideoCatalogOperation", "DISCOVER-MEDIA: Failed to load long-form URLs for edition %s, %s", aobj);
        DiscoverRepository discoverrepository = f;
        com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener adsnaprepositorylistener[] = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener[1];
        adsnaprepositorylistener[0] = c;
        discoverrepository.a(adsnaprepositorylistener);
    }

    protected void a(VideoCatalogListResponse videocataloglistresponse)
    {
        Object aobj[] = new Object[1];
        aobj[0] = i;
        Timber.c("FetchVideoCatalogOperation", "DISCOVER-MEDIA: Successfully loaded long-form URLs for edition %s", aobj);
        Iterator iterator = videocataloglistresponse.a().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            VideoCatalogResponse videocatalogresponse = (VideoCatalogResponse)iterator.next();
            if (videocatalogresponse != null && !TextUtils.isEmpty(videocatalogresponse.a()))
            {
                e.put(videocatalogresponse.a(), videocatalogresponse);
            }
        } while (true);
        DiscoverRepository discoverrepository = f;
        com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener adsnaprepositorylistener[] = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener[1];
        adsnaprepositorylistener[0] = b;
        discoverrepository.a(adsnaprepositorylistener);
    }

    public void a(VideoCatalogListResponse videocataloglistresponse, NetworkResult networkresult)
    {
        if (networkresult.h() && videocataloglistresponse != null)
        {
            a(videocataloglistresponse);
            return;
        } else
        {
            a(networkresult);
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((VideoCatalogListResponse)obj, networkresult);
    }
}
