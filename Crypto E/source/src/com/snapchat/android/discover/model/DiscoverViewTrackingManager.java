// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.util.system.Clock;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class DiscoverViewTrackingManager
{
    public static class ChannelViewState
    {

        private String a;
        private long b;

        public String a()
        {
            return a;
        }

        public long b()
        {
            return b;
        }

        public ChannelViewState(String s, long l)
        {
            a = s;
            b = l;
        }
    }

    public static class DSnapViewState
    {

        private String a;
        private long b;

        public String a()
        {
            return a;
        }

        public long b()
        {
            return b;
        }

        public DSnapViewState(String s, long l)
        {
            a = s;
            b = l;
        }
    }

    public static class EditionViewState
    {

        private final String a;
        private final int b;
        private final boolean c;
        private final int d;
        private final int e;

        static String a(EditionViewState editionviewstate)
        {
            return editionviewstate.a;
        }

        static int b(EditionViewState editionviewstate)
        {
            return editionviewstate.b;
        }

        static boolean c(EditionViewState editionviewstate)
        {
            return editionviewstate.c;
        }

        static int d(EditionViewState editionviewstate)
        {
            return editionviewstate.d;
        }

        static int e(EditionViewState editionviewstate)
        {
            return editionviewstate.e;
        }

        public String a()
        {
            return a;
        }

        public int b()
        {
            return b;
        }

        public boolean c()
        {
            return c;
        }

        public int d()
        {
            return d;
        }

        public int e()
        {
            return e;
        }

        private EditionViewState(String s, int i, boolean flag, int j, int k)
        {
            a = s;
            b = i;
            c = flag;
            d = j;
            e = k;
        }

    }

    public static class EditionViewState.Builder
    {

        private String a;
        private int b;
        private boolean c;
        private int d;
        private int e;

        private void b()
        {
            if (a == null)
            {
                throw new IllegalArgumentException("Cannot build EditionViewState with null ID.");
            } else
            {
                return;
            }
        }

        public EditionViewState.Builder a(int i)
        {
            b = i;
            return this;
        }

        public EditionViewState.Builder a(EditionViewState editionviewstate)
        {
            if (editionviewstate != null)
            {
                a = EditionViewState.a(editionviewstate);
                b = EditionViewState.b(editionviewstate);
                c = EditionViewState.c(editionviewstate);
                d = EditionViewState.d(editionviewstate);
                e = EditionViewState.e(editionviewstate);
            }
            return this;
        }

        public EditionViewState.Builder a(String s)
        {
            a = s;
            return this;
        }

        public EditionViewState.Builder a(boolean flag)
        {
            c = flag;
            return this;
        }

        public EditionViewState a()
        {
            b();
            return new EditionViewState(a, b, c, d, e);
        }

        public EditionViewState.Builder b(int i)
        {
            d = i;
            return this;
        }

        public EditionViewState.Builder c(int i)
        {
            e = i;
            return this;
        }

        public EditionViewState.Builder()
        {
            b = -1;
            d = 0;
            e = 0;
        }
    }


    private static final DiscoverViewTrackingManager a = new DiscoverViewTrackingManager();
    private final Clock b;
    private final DiscoverRepository c;
    private final Map d;
    private final Map e;
    private final Map f;

    private DiscoverViewTrackingManager()
    {
        this(new Clock(), DiscoverRepository.a());
    }

    DiscoverViewTrackingManager(Clock clock, DiscoverRepository discoverrepository)
    {
        d = new ConcurrentHashMap();
        e = new ConcurrentHashMap();
        f = new ConcurrentHashMap();
        b = clock;
        c = discoverrepository;
    }

    public static DiscoverViewTrackingManager a()
    {
        return a;
    }

    private void a(String s, long l)
    {
        e.put(s, new ChannelViewState(s, l));
    }

    private void b(String s, long l)
    {
        f.put(s, new DSnapViewState(s, l));
    }

    public int a(String s)
    {
        EditionViewState editionviewstate;
        if (s != null)
        {
            editionviewstate = (EditionViewState)d.get(s);
        } else
        {
            editionviewstate = null;
        }
        if (editionviewstate != null)
        {
            return editionviewstate.b();
        } else
        {
            return -1;
        }
    }

    public void a(String s, int i)
    {
        if (s == null)
        {
            return;
        }
        synchronized (d)
        {
            EditionViewState editionviewstate = (new EditionViewState.Builder()).a(s).a((EditionViewState)d.get(s)).a(i).a();
            d.put(s, editionviewstate);
        }
        return;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, int i, int j)
    {
        if (s == null)
        {
            return;
        }
        synchronized (d)
        {
            EditionViewState editionviewstate = (new EditionViewState.Builder()).a(s).a((EditionViewState)d.get(s)).c(j).b(i).a();
            d.put(s, editionviewstate);
        }
        return;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, boolean flag)
    {
        if (s == null)
        {
            return;
        }
        Map map = d;
        map;
        JVM INSTR monitorenter ;
        EditionViewState editionviewstate = (EditionViewState)d.get(s);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        flag = editionviewstate.c();
        EditionViewState editionviewstate1 = (new EditionViewState.Builder()).a(s).a((EditionViewState)d.get(s)).a(flag).a();
        d.put(s, editionviewstate1);
        map;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(List list)
    {
        EditionViewState editionviewstate;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a(editionviewstate.a(), editionviewstate.c()))
        {
            editionviewstate = (EditionViewState)iterator.next();
            a(editionviewstate.a(), editionviewstate.b());
        }

        c.c();
    }

    public Collection b()
    {
        return d.values();
    }

    public void b(List list)
    {
        ChannelViewState channelviewstate;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a(channelviewstate.a(), channelviewstate.b()))
        {
            channelviewstate = (ChannelViewState)iterator.next();
        }

        c.c();
    }

    public boolean b(String s)
    {
        EditionViewState editionviewstate;
        if (s != null)
        {
            editionviewstate = (EditionViewState)d.get(s);
        } else
        {
            editionviewstate = null;
        }
        return editionviewstate != null && editionviewstate.c();
    }

    public Collection c()
    {
        return e.values();
    }

    public void c(String s)
    {
        a(s, b.a());
    }

    public void c(List list)
    {
        DSnapViewState dsnapviewstate;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b(dsnapviewstate.a(), dsnapviewstate.b()))
        {
            dsnapviewstate = (DSnapViewState)iterator.next();
        }

    }

    public long d(String s)
    {
        ChannelViewState channelviewstate = (ChannelViewState)e.get(s);
        if (channelviewstate != null)
        {
            return channelviewstate.b();
        } else
        {
            return 0L;
        }
    }

    public Collection d()
    {
        return f.values();
    }

    public void e()
    {
        d.clear();
        e.clear();
        f.clear();
    }

    public void e(String s)
    {
        b(s, b.a());
    }

    public int f(String s)
    {
        EditionViewState editionviewstate = (EditionViewState)d.get(s);
        if (editionviewstate != null)
        {
            return editionviewstate.d();
        } else
        {
            return 0;
        }
    }

    public int g(String s)
    {
        EditionViewState editionviewstate = (EditionViewState)d.get(s);
        if (editionviewstate != null)
        {
            return editionviewstate.e();
        } else
        {
            return 0;
        }
    }

}
