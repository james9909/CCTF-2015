// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.util.cache.Cache;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.discover.controller.internal:
//            EditionMediaLoader

class a
    implements com.snapchat.android.discover.model.database.vtable.napRepositoryListener
{

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

    DSnapRepositoryListener(EditionMediaLoader editionmedialoader)
    {
        a = editionmedialoader;
        super();
    }
}
