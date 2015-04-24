// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.vtable;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import com.snapchat.android.Timber;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.discover.analytics.DiscoverAnalytics;
import com.snapchat.android.discover.analytics.handledexceptions.BadDiscoverContentException;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverCaches;
import com.snapchat.android.discover.model.DiscoverMediaStateTracker;
import com.snapchat.android.discover.model.database.table.ChannelViewStateTable;
import com.snapchat.android.discover.model.database.table.DSnapTable;
import com.snapchat.android.discover.model.database.table.DSnapViewStateTable;
import com.snapchat.android.discover.model.database.table.EditionChunkTable;
import com.snapchat.android.discover.model.database.table.EditionTable;
import com.snapchat.android.discover.model.database.table.EditionViewStateTable;
import com.snapchat.android.discover.model.database.table.PublisherChannelTable;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.network.CloseableUtils;
import com.snapchat.android.util.threading.ThreadUtils;
import com.snapchat.data.gson.rich_story.RichStoryMetadataResponse;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.discover.model.database.vtable:
//            PublisherAndEditionVirtualTable, DSnapPageVirtualTable

public class DiscoverRepository
{
    public static interface ChannelRepositoryListener
    {

        public abstract void a(List list);
    }

    public static interface DSnapRepositoryListener
    {

        public abstract void a(List list);
    }

    public static abstract class DiscoverContentObserver extends ContentObserver
    {

        protected abstract void a();

        public void onChange(boolean flag)
        {
            a();
        }

        public void onChange(boolean flag, Uri uri)
        {
            a();
        }

        public DiscoverContentObserver(Handler handler)
        {
            super(handler);
        }
    }


    private static final DiscoverRepository b = new DiscoverRepository();
    protected Runnable a = new Runnable() {

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

            
            {
                a = DiscoverRepository.this;
                super();
            }
    };
    private final PublisherAndEditionVirtualTable c;
    private final DSnapPageVirtualTable d;
    private final PublisherChannelTable e;
    private final EditionTable f;
    private final EditionChunkTable g;
    private final DSnapTable h;
    private final DiscoverMediaStateTracker i;
    private final HandlerThread j;
    private final Object k;
    private final Provider l;
    private final ExceptionReporter m;
    private final DiscoverAnalytics n;
    private final Object o;
    private final Set p;
    private final Set q;
    private Handler r;
    private Context s;
    private ContentResolver t;
    private boolean u;

    private DiscoverRepository()
    {
        this(PublisherAndEditionVirtualTable.e(), DSnapPageVirtualTable.e(), PublisherChannelTable.b(), EditionTable.b(), EditionChunkTable.b(), DSnapTable.b(), DiscoverMediaStateTracker.a(), User.UNSAFE_USER_PROVIDER, new HandlerThread("DiscoverRepository", 10), new ExceptionReporter(), new DiscoverAnalytics());
    }

    protected DiscoverRepository(PublisherAndEditionVirtualTable publisherandeditionvirtualtable, DSnapPageVirtualTable dsnappagevirtualtable, PublisherChannelTable publisherchanneltable, EditionTable editiontable, EditionChunkTable editionchunktable, DSnapTable dsnaptable, DiscoverMediaStateTracker discovermediastatetracker, 
            Provider provider, HandlerThread handlerthread, ExceptionReporter exceptionreporter, DiscoverAnalytics discoveranalytics)
    {
        k = new Object();
        o = new Object();
        p = new HashSet();
        q = new HashSet();
        u = false;
        c = publisherandeditionvirtualtable;
        e = publisherchanneltable;
        d = dsnappagevirtualtable;
        f = editiontable;
        g = editionchunktable;
        h = dsnaptable;
        i = discovermediastatetracker;
        l = provider;
        j = handlerthread;
        m = exceptionreporter;
        n = discoveranalytics;
    }

    public static DiscoverRepository a()
    {
        return b;
    }

    static void a(DiscoverRepository discoverrepository)
    {
        discoverrepository.h();
    }

    static boolean a(DiscoverRepository discoverrepository, boolean flag)
    {
        discoverrepository.u = flag;
        return flag;
    }

    static void b(DiscoverRepository discoverrepository)
    {
        discoverrepository.i();
    }

    static Object c(DiscoverRepository discoverrepository)
    {
        return discoverrepository.o;
    }

    static Context d(DiscoverRepository discoverrepository)
    {
        return discoverrepository.s;
    }

    static Provider e(DiscoverRepository discoverrepository)
    {
        return discoverrepository.l;
    }

    static Handler f(DiscoverRepository discoverrepository)
    {
        return discoverrepository.r;
    }

    private void h()
    {
        DSnapRepositoryListener adsnaprepositorylistener1[];
        synchronized (k)
        {
            DSnapRepositoryListener adsnaprepositorylistener[] = new DSnapRepositoryListener[p.size()];
            adsnaprepositorylistener1 = (DSnapRepositoryListener[])p.toArray(adsnaprepositorylistener);
        }
        b(adsnaprepositorylistener1);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void i()
    {
        ChannelRepositoryListener achannelrepositorylistener1[];
        synchronized (k)
        {
            ChannelRepositoryListener achannelrepositorylistener[] = new ChannelRepositoryListener[q.size()];
            achannelrepositorylistener1 = (ChannelRepositoryListener[])q.toArray(achannelrepositorylistener);
        }
        b(achannelrepositorylistener1);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public DSnapPage a(Cursor cursor)
    {
        com.snapchat.android.discover.model.DSnapPage.Builder builder;
        DSnapPage dsnappage;
        builder = d.a(cursor);
        dsnappage = builder.a();
        if (dsnappage.g() == null) goto _L2; else goto _L1
_L1:
        String s1 = DiscoverCaches.b.b(dsnappage.g());
_L4:
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        builder.h((new StringBuilder()).append("file://").append(s1).append("/").toString());
        DSnapPage dsnappage1;
        builder.b(i.b(dsnappage));
        builder.a(i.a(dsnappage));
        dsnappage1 = builder.a();
        return dsnappage1;
        BadDiscoverContentException baddiscovercontentexception;
        baddiscovercontentexception;
        m.a(baddiscovercontentexception.a);
        n.c(cursor.getString(DSnapPageVirtualTable.DSnapPageSchema.a.b()), cursor.getString(DSnapPageVirtualTable.DSnapPageSchema.g.b()), baddiscovercontentexception.b);
        return null;
_L2:
        s1 = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(Context context)
    {
        s = context;
        t = context.getContentResolver();
        j.start();
        r = new Handler(j.getLooper());
        r.post(a);
        t.registerContentObserver(SnapchatProvider.c, false, new DiscoverContentObserver(r) {

            final DiscoverRepository a;

            protected void a()
            {
                DiscoverRepository.a(a);
            }

            
            {
                a = DiscoverRepository.this;
                super(handler);
            }
        });
        t.registerContentObserver(SnapchatProvider.b, false, new DiscoverContentObserver(r) {

            final DiscoverRepository a;

            protected void a()
            {
                DiscoverRepository.b(a);
            }

            
            {
                a = DiscoverRepository.this;
                super(handler);
            }
        });
    }

    public void a(DSnapPage dsnappage, RichStoryMetadataResponse richstorymetadataresponse)
    {
        h.a(s, dsnappage.g(), richstorymetadataresponse);
    }

    public void a(DSnapPage dsnappage, String s1, String s2)
    {
        g.a(s, dsnappage.a(), s1, s2);
    }

    public void a(ChannelRepositoryListener channelrepositorylistener)
    {
        synchronized (k)
        {
            q.add(channelrepositorylistener);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(DSnapRepositoryListener dsnaprepositorylistener)
    {
        synchronized (k)
        {
            p.add(dsnaprepositorylistener);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public transient void a(ChannelRepositoryListener achannelrepositorylistener[])
    {
        r.post(new Runnable(achannelrepositorylistener) {

            final ChannelRepositoryListener a[];
            final DiscoverRepository b;

            public void run()
            {
                b.b(a);
            }

            
            {
                b = DiscoverRepository.this;
                a = achannelrepositorylistener;
                super();
            }
        });
    }

    public transient void a(DSnapRepositoryListener adsnaprepositorylistener[])
    {
        r.post(new Runnable(adsnaprepositorylistener) {

            final DSnapRepositoryListener a[];
            final DiscoverRepository b;

            public void run()
            {
                b.b(a);
            }

            
            {
                b = DiscoverRepository.this;
                a = adsnaprepositorylistener;
                super();
            }
        });
    }

    public ChannelPage b(Cursor cursor)
    {
        com.snapchat.android.discover.model.ChannelPage.Builder builder;
        ChannelPage channelpage;
        String s1;
        String s2;
        String s3;
        builder = c.a(cursor);
        channelpage = builder.a();
        builder.h(DiscoverCaches.a.b(channelpage.w()));
        builder.a(i.c(channelpage));
        s1 = DiscoverCaches.c.b(Integer.toString(channelpage.b().hashCode()));
        s2 = DiscoverCaches.c.b(Integer.toString(channelpage.c().hashCode()));
        if (channelpage.d() == null)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        s3 = DiscoverCaches.c.b(Integer.toString(channelpage.d().hashCode()));
_L1:
        ChannelPage channelpage1;
        builder.i(s1);
        builder.j(s2);
        builder.k(s3);
        builder.b(i.d(channelpage));
        builder.c(i.e(channelpage));
        builder.d(i.f(channelpage));
        channelpage1 = builder.a();
        return channelpage1;
        s3 = null;
          goto _L1
        BadDiscoverContentException baddiscovercontentexception;
        baddiscovercontentexception;
        m.a(baddiscovercontentexception.a);
        n.a(cursor.getString(PublisherAndEditionVirtualTable.ChannelSchema.a.b()), baddiscovercontentexception.b);
        return null;
    }

    public void b()
    {
        Timber.c("DiscoverRepository", "Manually triggering update of channel and dsnap lists.", new Object[0]);
        r.post(new Runnable() {

            final DiscoverRepository a;

            public void run()
            {
                DiscoverRepository.a(a);
                DiscoverRepository.b(a);
            }

            
            {
                a = DiscoverRepository.this;
                super();
            }
        });
    }

    public transient void b(ChannelRepositoryListener achannelrepositorylistener[])
    {
        long l1;
        LinkedList linkedlist;
        if (achannelrepositorylistener.length == 0)
        {
            Timber.a("DiscoverRepository", "Skipping query of channel repository - no listeners were specified.", new Object[0]);
            return;
        }
        if (!UserPrefs.l() || !u)
        {
            Timber.c("DiscoverRepository", "Skipping query of channel repository - user is not logged in.", new Object[0]);
            return;
        }
        Timber.a("DiscoverRepository", "Beginning refresh of channel repository.", new Object[0]);
        l1 = SystemClock.currentThreadTimeMillis();
        linkedlist = new LinkedList();
        Cursor cursor1 = t.query(SnapchatProvider.b, PublisherAndEditionVirtualTable.a, null, null, null);
        Cursor cursor = cursor1;
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        ChannelPage channelpage = b(cursor);
        if (channelpage == null) goto _L5; else goto _L4
_L4:
        linkedlist.add(channelpage);
_L6:
        boolean flag = cursor.moveToNext();
        if (flag) goto _L3; else goto _L2
_L5:
        Timber.e("DiscoverRepository", "Invalid ChannelPage found in queryChannelList!", new Object[0]);
          goto _L6
        Exception exception;
        exception;
_L8:
        CloseableUtils.a(cursor);
        throw exception;
_L2:
        CloseableUtils.a(cursor);
        int i1 = achannelrepositorylistener.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            achannelrepositorylistener[j1].a(linkedlist);
        }

        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(SystemClock.currentThreadTimeMillis() - l1);
        Timber.a("DiscoverRepository", "Completed query of channel repository, took %dms.", aobj);
        return;
        exception;
        cursor = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public transient void b(DSnapRepositoryListener adsnaprepositorylistener[])
    {
        long l1;
        LinkedList linkedlist;
        if (adsnaprepositorylistener.length == 0)
        {
            Timber.a("DiscoverRepository", "Skipping query of edition repository - no listeners were specified.", new Object[0]);
            return;
        }
        if (!UserPrefs.l() || !u)
        {
            Timber.c("DiscoverRepository", "Skipping query of edition repository - user is not logged in.", new Object[0]);
            return;
        }
        l1 = SystemClock.currentThreadTimeMillis();
        Timber.a("DiscoverRepository", "Beginning refresh of edition repository.", new Object[0]);
        linkedlist = new LinkedList();
        Cursor cursor1 = t.query(SnapchatProvider.c, DSnapPageVirtualTable.a, null, null, null);
        Cursor cursor = cursor1;
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(SystemClock.currentThreadTimeMillis() - l1);
        Timber.a("DiscoverRepository", "Query for refresh of edition repository took %dms.", aobj);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        DSnapPage dsnappage = a(cursor);
        if (dsnappage == null) goto _L5; else goto _L4
_L4:
        linkedlist.add(dsnappage);
_L6:
        boolean flag = cursor.moveToNext();
        if (flag) goto _L3; else goto _L2
_L5:
        Timber.e("DiscoverRepository", "Invalid DSnapPage found in queryDSnapList!", new Object[0]);
          goto _L6
        Exception exception;
        exception;
_L8:
        CloseableUtils.a(cursor);
        throw exception;
_L2:
        CloseableUtils.a(cursor);
        int i1 = adsnaprepositorylistener.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            adsnaprepositorylistener[j1].a(linkedlist);
        }

        Object aobj1[] = new Object[1];
        aobj1[0] = Long.valueOf(SystemClock.currentThreadTimeMillis() - l1);
        Timber.a("DiscoverRepository", "Completed refresh of edition repository, took %dms.", aobj1);
        return;
        exception;
        cursor = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void c()
    {
        Object aobj[] = new Object[1];
        aobj[0] = Timber.a();
        Timber.c("DiscoverRepository", "Signaling data model changed from %s", aobj);
        e.a(s);
    }

    public void d()
    {
        Object aobj[] = new Object[1];
        aobj[0] = Timber.a();
        Timber.c("DiscoverRepository", "Persisting data model changed from %s", aobj);
        User user = (User)l.get();
        if (user != null)
        {
            com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[] = new com.snapchat.android.database.table.DbTable.DatabaseTable[3];
            adatabasetable[0] = com.snapchat.android.database.table.DbTable.DatabaseTable.N;
            adatabasetable[1] = com.snapchat.android.database.table.DbTable.DatabaseTable.L;
            adatabasetable[2] = com.snapchat.android.database.table.DbTable.DatabaseTable.M;
            user.a(adatabasetable);
        }
    }

    public void e()
    {
        r.post(new Runnable() {

            final DiscoverRepository a;

            public void run()
            {
                a.f();
            }

            
            {
                a = DiscoverRepository.this;
                super();
            }
        });
    }

    protected void f()
    {
        f.a(s);
    }

    public void g()
    {
        ThreadUtils.b(new Runnable() {

            final DiscoverRepository a;

            public void run()
            {
                synchronized (DiscoverRepository.c(a))
                {
                    if (DiscoverRepository.d(a) != null)
                    {
                        EditionViewStateTable.b().a(DiscoverRepository.d(a));
                        ChannelViewStateTable.b().a(DiscoverRepository.d(a));
                        DSnapViewStateTable.b().a(DiscoverRepository.d(a));
                    }
                }
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                a = DiscoverRepository.this;
                super();
            }
        });
    }

}
