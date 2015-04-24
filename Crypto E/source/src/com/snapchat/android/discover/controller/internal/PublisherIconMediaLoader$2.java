// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
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

    lRepositoryListener(PublisherIconMediaLoader publishericonmedialoader)
    {
        a = publishericonmedialoader;
        super();
    }
}
