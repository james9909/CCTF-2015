// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.ads;

import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.util.Predicate;
import java.util.Iterator;
import java.util.List;

public class ResetAdsOperation
{

    protected final com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener a;
    private final String b;
    private final DiscoverRepository c;
    private final DiscoverMediaStateTracker d;
    private final Predicate e;

    public ResetAdsOperation(Predicate predicate)
    {
        this(predicate, DiscoverRepository.a(), DiscoverMediaStateTracker.a());
    }

    protected ResetAdsOperation(Predicate predicate, DiscoverRepository discoverrepository, DiscoverMediaStateTracker discovermediastatetracker)
    {
        b = "ResetAdsOperation";
        a = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener() {

            final ResetAdsOperation a;

            public void a(List list)
            {
                Iterator iterator = list.iterator();
                boolean flag = false;
                while (iterator.hasNext()) 
                {
                    DSnapPage dsnappage = (DSnapPage)iterator.next();
                    boolean flag1;
                    if (ResetAdsOperation.a(a).a(dsnappage))
                    {
                        flag1 = flag | ResetAdsOperation.b(a).b(dsnappage, MediaState.c);
                    } else
                    {
                        flag1 = flag;
                    }
                    flag = flag1;
                }
                if (flag)
                {
                    ResetAdsOperation.c(a).c();
                }
            }

            
            {
                a = ResetAdsOperation.this;
                super();
            }
        };
        c = discoverrepository;
        d = discovermediastatetracker;
        e = predicate;
    }

    static Predicate a(ResetAdsOperation resetadsoperation)
    {
        return resetadsoperation.e;
    }

    static DiscoverMediaStateTracker b(ResetAdsOperation resetadsoperation)
    {
        return resetadsoperation.d;
    }

    static DiscoverRepository c(ResetAdsOperation resetadsoperation)
    {
        return resetadsoperation.c;
    }

    public void a()
    {
        Object aobj[] = new Object[1];
        aobj[0] = e.getClass().getSimpleName();
        Timber.c("ResetAdsOperation", "Resetting state of failed ads using %s", aobj);
        DiscoverRepository discoverrepository = c;
        com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener adsnaprepositorylistener[] = new com.snapchat.android.discover.model.database.vtable.DiscoverRepository.DSnapRepositoryListener[1];
        adsnaprepositorylistener[0] = a;
        discoverrepository.a(adsnaprepositorylistener);
    }
}
