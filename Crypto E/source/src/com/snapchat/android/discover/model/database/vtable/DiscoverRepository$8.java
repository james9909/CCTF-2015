// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.vtable;

import android.os.Handler;
import com.snapchat.android.discover.model.DiscoverCaches;
import com.snapchat.android.model.User;
import com.snapchat.android.util.cache.Cache;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.discover.model.database.vtable:
//            DiscoverRepository

class a
    implements Runnable
{

    final DiscoverRepository a;

    public void run()
    {
        User user = (User)DiscoverRepository.e(a).get();
        if (user != null && user.J())
        {
            DiscoverCaches.b.a(true);
            DiscoverCaches.a.a(true);
            DiscoverCaches.c.a(true);
            DiscoverRepository.a(a, true);
            return;
        } else
        {
            DiscoverRepository.f(a).postDelayed(this, 1000L);
            return;
        }
    }

    (DiscoverRepository discoverrepository)
    {
        a = discoverrepository;
        super();
    }
}
