// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.api2;

import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.discover.api2:
//            FetchVideoCatalogOperation

class a
    implements com.snapchat.android.discover.model.database.vtable.itoryListener
{

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
                if (dsnappanel != null && dsnappanel.f() == com.snapchat.android.discover.model. && FetchVideoCatalogOperation.b(a).a(dsnappanel) == MediaState.b)
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

    sitory(FetchVideoCatalogOperation fetchvideocatalogoperation)
    {
        a = fetchvideocatalogoperation;
        super();
    }
}
