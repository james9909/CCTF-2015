// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;


// Referenced classes of package com.snapchat.android.util.cache:
//            Cache, CacheType, LruDiskCache

public class Caches
{

    public static final Cache a;
    public static final Cache b;
    public static final Cache c;
    public static final Cache d;
    public static final Cache e;
    public static final Cache f;
    public static final Cache g;
    public static final Cache h;
    public static final Cache i;
    public static final Cache j;
    public static final Cache k;
    public static final Cache l;

    public Caches()
    {
    }

    public static void a()
    {
        Thread thread = new Thread() {

            public void run()
            {
                Caches.a.d();
                Caches.b.d();
                Caches.c.d();
                Caches.d.d();
                Caches.e.d();
                Caches.f.d();
                Caches.i.d();
                Caches.k.d();
                Caches.l.d();
                Caches.g.d();
                Caches.h.d();
            }

        };
        thread.setName("Cache sanitizeAll() thread");
        thread.start();
    }

    public static void b()
    {
        Thread thread = new Thread() {

            public void run()
            {
                Caches.a.b();
                Caches.b.b();
                Caches.c.b();
                Caches.d.b();
                Caches.e.b();
                Caches.f.b();
                Caches.i.b();
                Caches.k.b();
                Caches.l.b();
                Caches.j.b();
                Caches.h.b();
                Caches.g.b();
            }

        };
        thread.setName("Cache clearAll() thread");
        thread.start();
    }

    static 
    {
        a = new Cache(CacheType.h, 1440L);
        b = new Cache(CacheType.a, 1440L);
        c = new Cache(CacheType.b, 1440L);
        d = new Cache(CacheType.c, 1440L);
        e = new Cache(CacheType.d, 40000L);
        f = new Cache(CacheType.e, 40000L);
        g = new Cache(CacheType.i, 1440L);
        h = new Cache(CacheType.j, 1440L);
        i = new Cache(CacheType.f, 1440L);
        j = new Cache(CacheType.o, 40000L);
        k = new Cache(CacheType.g, 1440L);
        l = new LruDiskCache(CacheType.k, 7);
    }
}
