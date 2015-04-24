// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.util.cache.Cache;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.discover.controller.internal:
//            PublisherIconMediaLoader

class a
    implements com.snapchat.android.discover.model.database.vtable.epositoryListener
{

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

    lRepositoryListener(PublisherIconMediaLoader publishericonmedialoader)
    {
        a = publishericonmedialoader;
        super();
    }
}
