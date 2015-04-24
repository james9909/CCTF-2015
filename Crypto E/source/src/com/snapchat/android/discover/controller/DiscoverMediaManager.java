// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller;

import android.content.Context;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.api2.FetchVideoCatalogOperation;
import com.snapchat.android.discover.controller.internal.DiscoverMediaLoader;
import com.snapchat.android.discover.controller.internal.DiscoverUserState;
import com.snapchat.android.discover.controller.internal.EditionMediaLoader;
import com.snapchat.android.discover.controller.internal.IntroVideoMediaLoader;
import com.snapchat.android.discover.controller.internal.PublisherIconMediaLoader;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.discover.controller:
//            DiscoverMediaCategory

public class DiscoverMediaManager
{

    private static final DiscoverMediaManager a = new DiscoverMediaManager();
    private final DiscoverRepository b;
    private final List c;
    private final DiscoverMediaStateTracker d;
    private DiscoverUserState e;

    private DiscoverMediaManager()
    {
        this(DiscoverRepository.a(), f(), DiscoverMediaStateTracker.a());
    }

    protected DiscoverMediaManager(DiscoverRepository discoverrepository, List list, DiscoverMediaStateTracker discovermediastatetracker)
    {
        e = new DiscoverUserState();
        c = list;
        b = discoverrepository;
        d = discovermediastatetracker;
    }

    public static DiscoverMediaManager a()
    {
        return a;
    }

    private static List f()
    {
        ArrayList arraylist = new ArrayList(3);
        arraylist.add(new IntroVideoMediaLoader());
        arraylist.add(new PublisherIconMediaLoader());
        arraylist.add(new EditionMediaLoader());
        return arraylist;
    }

    public void a(Context context)
    {
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((DiscoverMediaLoader)iterator.next()).a(context)) { }
    }

    public void a(DiscoverMediaCategory discovermediacategory)
    {
        Timber.c("DiscoverMediaManager", "DISCOVER-MEDIA: Retry failed media for context %s", new Object[] {
            discovermediacategory
        });
        Iterator iterator = c.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            DiscoverMediaLoader discovermedialoader = (DiscoverMediaLoader)iterator.next();
            if (discovermediacategory.equals(discovermedialoader.e()))
            {
                discovermedialoader.b();
            }
        } while (true);
    }

    public void a(ChannelPage channelpage)
    {
        b(channelpage);
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((DiscoverMediaLoader)iterator.next()).a(channelpage.f())) { }
    }

    public void a(ChannelPage channelpage, com.snapchat.android.discover.model.ChannelPage.MediaType mediatype)
    {
        int i;
        boolean flag;
        static class _cls1
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

        i = _cls1.a[mediatype.ordinal()];
        flag = false;
        i;
        JVM INSTR tableswitch 1 3: default 40
    //                   1 53
    //                   2 71
    //                   3 89;
           goto _L1 _L2 _L3 _L4
_L1:
        if (flag)
        {
            b.c();
        }
        return;
_L2:
        flag = false | d.b(channelpage, MediaState.a);
        continue; /* Loop/switch isn't completed */
_L3:
        flag = false | d.c(channelpage, MediaState.a);
        continue; /* Loop/switch isn't completed */
_L4:
        flag = false | d.d(channelpage, MediaState.a);
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void a(ChannelPage channelpage, DSnapPage dsnappage)
    {
        DiscoverUserState discoveruserstate;
        Object aobj[];
        if (channelpage == null && dsnappage != null && e.a() != null)
        {
            discoveruserstate = new DiscoverUserState(e.a(), dsnappage);
        } else
        {
            discoveruserstate = new DiscoverUserState(channelpage, dsnappage);
        }
        aobj = new Object[2];
        aobj[0] = e;
        aobj[1] = discoveruserstate;
        Timber.c("DiscoverMediaManager", "DISCOVER-MEDIA: Updating user state from %s to %s", aobj);
        e = discoveruserstate;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((DiscoverMediaLoader)iterator.next()).a(e)) { }
        b.c();
    }

    public void a(String s)
    {
        Timber.c("DiscoverMediaManager", "DISCOVER-MEDIA: Fetching remote video urls for %s", new Object[] {
            s
        });
        b(s).a();
    }

    protected FetchVideoCatalogOperation b(String s)
    {
        return new FetchVideoCatalogOperation(s);
    }

    public void b()
    {
        Timber.c("DiscoverMediaManager", "DISCOVER-MEDIA: Checking cache consistency", new Object[0]);
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((DiscoverMediaLoader)iterator.next()).a()) { }
    }

    public void b(ChannelPage channelpage)
    {
        String s = channelpage.f();
        if (s == null)
        {
            return;
        } else
        {
            a(s);
            return;
        }
    }

    public void c()
    {
        Timber.c("DiscoverMediaManager", "DISCOVER-MEDIA: Retry failed media", new Object[0]);
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((DiscoverMediaLoader)iterator.next()).b()) { }
    }

    public void d()
    {
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((DiscoverMediaLoader)iterator.next()).c()) { }
    }

    public void e()
    {
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((DiscoverMediaLoader)iterator.next()).d()) { }
    }

}
