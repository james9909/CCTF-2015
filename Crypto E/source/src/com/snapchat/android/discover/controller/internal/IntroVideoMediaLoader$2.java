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
//            IntroVideoMediaLoader

class a
    implements com.snapchat.android.discover.model.database.vtable.elRepositoryListener
{

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

    nnelRepositoryListener(IntroVideoMediaLoader introvideomedialoader)
    {
        a = introvideomedialoader;
        super();
    }
}
