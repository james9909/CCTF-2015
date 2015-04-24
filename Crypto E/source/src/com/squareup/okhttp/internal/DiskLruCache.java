// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal:
//            Util

public final class DiskLruCache
    implements Closeable
{
    public final class Editor
    {

        final DiskLruCache a;
        private final Entry b;
        private final boolean c[];
        private boolean d;
        private boolean e;

        static Entry a(Editor editor)
        {
            return editor.b;
        }

        static boolean a(Editor editor, boolean flag)
        {
            editor.d = flag;
            return flag;
        }

        static boolean[] b(Editor editor)
        {
            return editor.c;
        }

        public Sink a(int i1)
        {
            DiskLruCache disklrucache = a;
            disklrucache;
            JVM INSTR monitorenter ;
            if (Entry.a(b) != this)
            {
                throw new IllegalStateException();
            }
            break MISSING_BLOCK_LABEL_31;
            Exception exception;
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
            File file;
            if (!Entry.f(b))
            {
                c[i1] = true;
            }
            file = Entry.d(b)[i1];
            Sink sink3 = Okio.b(file);
            Sink sink2 = sink3;
_L1:
            FaultHidingSink faulthidingsink = new FaultHidingSink(this, sink2);
            disklrucache;
            JVM INSTR monitorexit ;
            return faulthidingsink;
            FileNotFoundException filenotfoundexception;
            filenotfoundexception;
            DiskLruCache.f(a).mkdirs();
            Sink sink1 = Okio.b(file);
            sink2 = sink1;
              goto _L1
            FileNotFoundException filenotfoundexception1;
            filenotfoundexception1;
            Sink sink = DiskLruCache.b();
            disklrucache;
            JVM INSTR monitorexit ;
            return sink;
        }

        public void a()
        {
            DiskLruCache disklrucache = a;
            disklrucache;
            JVM INSTR monitorenter ;
            if (!d)
            {
                break MISSING_BLOCK_LABEL_43;
            }
            DiskLruCache.a(a, this, false);
            DiskLruCache.a(a, b);
_L2:
            e = true;
            return;
            DiskLruCache.a(a, this, true);
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void b()
        {
            synchronized (a)
            {
                DiskLruCache.a(a, this, false);
            }
            return;
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
        }

        private Editor(Entry entry)
        {
            a = DiskLruCache.this;
            super();
            b = entry;
            boolean aflag[];
            if (Entry.f(entry))
            {
                aflag = null;
            } else
            {
                aflag = new boolean[DiskLruCache.e(DiskLruCache.this)];
            }
            c = aflag;
        }

    }

    class Editor.FaultHidingSink extends ForwardingSink
    {

        final Editor a;

        public void a()
        {
            try
            {
                super.a();
                return;
            }
            catch (IOException ioexception)
            {
                synchronized (a.a)
                {
                    Editor.a(a, true);
                }
                return;
            }
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a_(Buffer buffer, long l1)
        {
            try
            {
                super.a_(buffer, l1);
                return;
            }
            catch (IOException ioexception)
            {
                synchronized (a.a)
                {
                    Editor.a(a, true);
                }
                return;
            }
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void close()
        {
            try
            {
                super.close();
                return;
            }
            catch (IOException ioexception)
            {
                synchronized (a.a)
                {
                    Editor.a(a, true);
                }
                return;
            }
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public Editor.FaultHidingSink(Editor editor, Sink sink)
        {
            a = editor;
            super(sink);
        }
    }

    final class Entry
    {

        final DiskLruCache a;
        private final String b;
        private final long c[];
        private final File d[];
        private final File e[];
        private boolean f;
        private Editor g;
        private long h;

        static long a(Entry entry, long l1)
        {
            entry.h = l1;
            return l1;
        }

        static Editor a(Entry entry)
        {
            return entry.g;
        }

        static Editor a(Entry entry, Editor editor)
        {
            entry.g = editor;
            return editor;
        }

        static boolean a(Entry entry, boolean flag)
        {
            entry.f = flag;
            return flag;
        }

        static long[] b(Entry entry)
        {
            return entry.c;
        }

        static File[] c(Entry entry)
        {
            return entry.d;
        }

        static File[] d(Entry entry)
        {
            return entry.e;
        }

        static String e(Entry entry)
        {
            return entry.b;
        }

        static boolean f(Entry entry)
        {
            return entry.f;
        }

        static long g(Entry entry)
        {
            return entry.h;
        }

        Snapshot a()
        {
            Source asource[];
            int i1;
            if (!Thread.holdsLock(a))
            {
                throw new AssertionError();
            }
            asource = new Source[DiskLruCache.e(a)];
            i1 = 0;
_L2:
            if (i1 >= DiskLruCache.e(a))
            {
                break; /* Loop/switch isn't completed */
            }
            asource[i1] = Okio.a(d[i1]);
            i1++;
            if (true) goto _L2; else goto _L1
_L1:
            Snapshot snapshot = a. new Snapshot(b, h, asource, c);
            return snapshot;
_L4:
            int j1;
            for (; j1 < DiskLruCache.e(a) && asource[j1] != null; j1++)
            {
                Util.a(asource[j1]);
            }

            return null;
            FileNotFoundException filenotfoundexception;
            filenotfoundexception;
            j1 = 0;
            if (true) goto _L4; else goto _L3
_L3:
        }

        void a(BufferedSink bufferedsink)
        {
            long al[] = c;
            int i1 = al.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                long l1 = al[j1];
                bufferedsink.i(32).b(Long.toString(l1));
            }

        }

        private Entry(String s)
        {
            a = DiskLruCache.this;
            super();
            b = s;
            c = new long[DiskLruCache.e(DiskLruCache.this)];
            d = new File[DiskLruCache.e(DiskLruCache.this)];
            e = new File[DiskLruCache.e(DiskLruCache.this)];
            StringBuilder stringbuilder = (new StringBuilder(s)).append('.');
            int i1 = stringbuilder.length();
            for (int j1 = 0; j1 < DiskLruCache.e(DiskLruCache.this); j1++)
            {
                stringbuilder.append(j1);
                d[j1] = new File(DiskLruCache.f(DiskLruCache.this), stringbuilder.toString());
                stringbuilder.append(".tmp");
                e[j1] = new File(DiskLruCache.f(DiskLruCache.this), stringbuilder.toString());
                stringbuilder.setLength(i1);
            }

        }

    }

    public final class Snapshot
        implements Closeable
    {

        final DiskLruCache a;
        private final String b;
        private final long c;
        private final Source d[];
        private final long e[];

        static String a(Snapshot snapshot)
        {
            return snapshot.b;
        }

        public Editor a()
        {
            return DiskLruCache.a(a, b, c);
        }

        public Source a(int i1)
        {
            return d[i1];
        }

        public void close()
        {
            Source asource[] = d;
            int i1 = asource.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                Util.a(asource[j1]);
            }

        }

        private Snapshot(String s, long l1, Source asource[], long al[])
        {
            a = DiskLruCache.this;
            super();
            b = s;
            c = l1;
            d = asource;
            e = al;
        }

        Snapshot(String s, long l1, Source asource[], long al[], _cls1 _pcls1)
        {
            this(s, l1, asource, al);
        }
    }


    static final Pattern a = Pattern.compile("[a-z0-9_-]{1,120}");
    private static final Sink p = new Sink() {

        public void a()
        {
        }

        public void a_(Buffer buffer, long l1)
        {
        }

        public Timeout b()
        {
            return Timeout.b;
        }

        public void close()
        {
        }

    };
    private final File b;
    private final File c;
    private final File d;
    private final File e;
    private final int f;
    private long g;
    private final int h;
    private long i;
    private BufferedSink j;
    private final LinkedHashMap k;
    private int l;
    private long m;
    private final Executor n;
    private final Runnable o;

    static int a(DiskLruCache disklrucache, int i1)
    {
        disklrucache.l = i1;
        return i1;
    }

    static Editor a(DiskLruCache disklrucache, String s, long l1)
    {
        return disklrucache.a(s, l1);
    }

    private Editor a(String s, long l1)
    {
        this;
        JVM INSTR monitorenter ;
        Entry entry;
        e();
        d(s);
        entry = (Entry)k.get(s);
        if (l1 == -1L) goto _L2; else goto _L1
_L1:
        if (entry == null) goto _L4; else goto _L3
_L3:
        long l2 = Entry.g(entry);
        if (l2 == l1) goto _L2; else goto _L4
_L4:
        Editor editor1 = null;
_L7:
        this;
        JVM INSTR monitorexit ;
        return editor1;
_L2:
        if (entry != null) goto _L6; else goto _L5
_L5:
        Entry entry2;
        entry2 = new Entry(s);
        k.put(s, entry2);
        Entry entry1 = entry2;
_L9:
        editor1 = new Editor(entry1);
        Entry.a(entry1, editor1);
        j.b("DIRTY").i(32).b(s).i(10);
        j.a();
          goto _L7
        Exception exception;
        exception;
        throw exception;
_L6:
        Editor editor = Entry.a(entry);
label0:
        {
            if (editor == null)
            {
                break label0;
            }
            editor1 = null;
        }
        if (true) goto _L7; else goto _L8
_L8:
        entry1 = entry;
          goto _L9
    }

    static BufferedSink a(DiskLruCache disklrucache)
    {
        return disklrucache.j;
    }

    private void a(Editor editor, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        Entry entry;
        entry = Editor.a(editor);
        if (Entry.a(entry) != editor)
        {
            throw new IllegalStateException();
        }
        break MISSING_BLOCK_LABEL_30;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i1 = 0;
        if (!flag) goto _L2; else goto _L1
_L1:
        boolean flag1 = Entry.f(entry);
        i1 = 0;
        if (flag1) goto _L2; else goto _L3
_L3:
        int j1 = 0;
_L7:
        int k1 = h;
        i1 = 0;
        if (j1 >= k1) goto _L2; else goto _L4
_L4:
        if (!Editor.b(editor)[j1])
        {
            editor.b();
            throw new IllegalStateException((new StringBuilder()).append("Newly created entry didn't create value for index ").append(j1).toString());
        }
        if (Entry.d(entry)[j1].exists()) goto _L6; else goto _L5
_L5:
        editor.b();
_L8:
        this;
        JVM INSTR monitorexit ;
        return;
_L6:
        j1++;
          goto _L7
_L2:
        long l1;
        File file;
        File file1;
        long l2;
        long l3;
        for (; i1 >= h; i1++)
        {
            break MISSING_BLOCK_LABEL_241;
        }

        file = Entry.d(entry)[i1];
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_233;
        }
        if (file.exists())
        {
            file1 = Entry.c(entry)[i1];
            file.renameTo(file1);
            l2 = Entry.b(entry)[i1];
            l3 = file1.length();
            Entry.b(entry)[i1] = l3;
            i = l3 + (i - l2);
        }
        break MISSING_BLOCK_LABEL_462;
        a(file);
        break MISSING_BLOCK_LABEL_462;
        l = 1 + l;
        Entry.a(entry, null);
        if (!(flag | Entry.f(entry)))
        {
            break MISSING_BLOCK_LABEL_400;
        }
        Entry.a(entry, true);
        j.b("CLEAN").i(32);
        j.b(Entry.e(entry));
        entry.a(j);
        j.i(10);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_356;
        }
        l1 = m;
        m = 1L + l1;
        Entry.a(entry, l1);
_L9:
        j.a();
        if (i > g || d())
        {
            n.execute(o);
        }
          goto _L8
        k.remove(Entry.e(entry));
        j.b("REMOVE").i(32);
        j.b(Entry.e(entry));
        j.i(10);
          goto _L9
    }

    static void a(DiskLruCache disklrucache, Editor editor, boolean flag)
    {
        disklrucache.a(editor, flag);
    }

    private static void a(File file)
    {
        if (!file.delete() && file.exists())
        {
            throw new IOException((new StringBuilder()).append("failed to delete ").append(file).toString());
        } else
        {
            return;
        }
    }

    private static void a(File file, File file1, boolean flag)
    {
        if (flag)
        {
            a(file1);
        }
        if (!file.renameTo(file1))
        {
            throw new IOException();
        } else
        {
            return;
        }
    }

    private boolean a(Entry entry)
    {
        if (Entry.a(entry) != null)
        {
            Editor.a(Entry.a(entry), true);
        }
        for (int i1 = 0; i1 < h; i1++)
        {
            a(Entry.c(entry)[i1]);
            i = i - Entry.b(entry)[i1];
            Entry.b(entry)[i1] = 0L;
        }

        l = 1 + l;
        j.b("REMOVE").i(32).b(Entry.e(entry)).i(10);
        k.remove(Entry.e(entry));
        if (d())
        {
            n.execute(o);
        }
        return true;
    }

    static boolean a(DiskLruCache disklrucache, Entry entry)
    {
        return disklrucache.a(entry);
    }

    static Sink b()
    {
        return p;
    }

    static void b(DiskLruCache disklrucache)
    {
        disklrucache.f();
    }

    private void c()
    {
        this;
        JVM INSTR monitorenter ;
        BufferedSink bufferedsink;
        if (j != null)
        {
            j.close();
        }
        bufferedsink = Okio.a(Okio.b(d));
        Iterator iterator;
        bufferedsink.b("libcore.io.DiskLruCache").i(10);
        bufferedsink.b("1").i(10);
        bufferedsink.b(Integer.toString(f)).i(10);
        bufferedsink.b(Integer.toString(h)).i(10);
        bufferedsink.i(10);
        iterator = k.values().iterator();
_L1:
        Entry entry;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_256;
            }
            entry = (Entry)iterator.next();
            if (Entry.a(entry) == null)
            {
                break MISSING_BLOCK_LABEL_210;
            }
            bufferedsink.b("DIRTY").i(32);
            bufferedsink.b(Entry.e(entry));
            bufferedsink.i(10);
        } while (true);
        Exception exception1;
        exception1;
        bufferedsink.close();
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        bufferedsink.b("CLEAN").i(32);
        bufferedsink.b(Entry.e(entry));
        entry.a(bufferedsink);
        bufferedsink.i(10);
          goto _L1
        bufferedsink.close();
        if (c.exists())
        {
            a(c, e, true);
        }
        a(d, c, false);
        e.delete();
        j = Okio.a(Okio.c(c));
        this;
        JVM INSTR monitorexit ;
    }

    static boolean c(DiskLruCache disklrucache)
    {
        return disklrucache.d();
    }

    static void d(DiskLruCache disklrucache)
    {
        disklrucache.c();
    }

    private void d(String s)
    {
        if (!a.matcher(s).matches())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("keys must match regex [a-z0-9_-]{1,120}: \"").append(s).append("\"").toString());
        } else
        {
            return;
        }
    }

    private boolean d()
    {
        return l >= 2000 && l >= k.size();
    }

    static int e(DiskLruCache disklrucache)
    {
        return disklrucache.h;
    }

    private void e()
    {
        if (j == null)
        {
            throw new IllegalStateException("cache is closed");
        } else
        {
            return;
        }
    }

    static File f(DiskLruCache disklrucache)
    {
        return disklrucache.b;
    }

    private void f()
    {
        while (i > g) 
        {
            a((Entry)k.values().iterator().next());
        }
    }

    public Snapshot a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Entry entry;
        e();
        d(s);
        entry = (Entry)k.get(s);
        if (entry == null) goto _L2; else goto _L1
_L1:
        boolean flag = Entry.f(entry);
        if (flag) goto _L3; else goto _L2
_L2:
        Snapshot snapshot = null;
_L5:
        this;
        JVM INSTR monitorexit ;
        return snapshot;
_L3:
        snapshot = entry.a();
        if (snapshot == null)
        {
            snapshot = null;
            continue; /* Loop/switch isn't completed */
        }
        l = 1 + l;
        j.b("READ").i(32).b(s).i(10);
        if (d())
        {
            n.execute(o);
        }
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public boolean a()
    {
        return j == null;
    }

    public Editor b(String s)
    {
        return a(s, -1L);
    }

    public boolean c(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Entry entry;
        e();
        d(s);
        entry = (Entry)k.get(s);
        if (entry != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        boolean flag = a(entry);
        flag1 = flag;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        BufferedSink bufferedsink = j;
        if (bufferedsink != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Entry aentry[];
        int i1;
        aentry = (Entry[])k.values().toArray(new Entry[k.size()]);
        i1 = aentry.length;
        Exception exception;
        Entry entry;
        for (int j1 = 0; j1 >= i1; j1++)
        {
            break MISSING_BLOCK_LABEL_79;
        }

        entry = aentry[j1];
        if (Entry.a(entry) != null)
        {
            Entry.a(entry).b();
        }
        break MISSING_BLOCK_LABEL_105;
        f();
        j.close();
        j = null;
        if (true) goto _L1; else goto _L3
_L3:
        exception;
        throw exception;
    }


    // Unreferenced inner class com/squareup/okhttp/internal/DiskLruCache$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final DiskLruCache a;

        public void run()
        {
label0:
            {
                synchronized (a)
                {
                    if (DiskLruCache.a(a) != null)
                    {
                        break label0;
                    }
                }
                return;
            }
            DiskLruCache.b(a);
            if (DiskLruCache.c(a))
            {
                DiskLruCache.d(a);
                DiskLruCache.a(a, 0);
            }
            disklrucache;
            JVM INSTR monitorexit ;
            return;
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
            IOException ioexception;
            ioexception;
            throw new RuntimeException(ioexception);
        }
    }


    // Unreferenced inner class com/squareup/okhttp/internal/DiskLruCache$2

/* anonymous class */
    class _cls2
        implements Iterator
    {

        final Iterator a;
        Snapshot b;
        Snapshot c;
        final DiskLruCache d;

        public Snapshot a()
        {
            if (!hasNext())
            {
                throw new NoSuchElementException();
            } else
            {
                c = b;
                b = null;
                return c;
            }
        }

        public boolean hasNext()
        {
label0:
            {
                if (b != null)
                {
                    return true;
                }
                synchronized (d)
                {
                    if (!d.a())
                    {
                        break label0;
                    }
                }
                return false;
            }
            Snapshot snapshot;
            do
            {
                if (!a.hasNext())
                {
                    break MISSING_BLOCK_LABEL_71;
                }
                snapshot = ((Entry)a.next()).a();
            } while (snapshot == null);
            b = snapshot;
            disklrucache;
            JVM INSTR monitorexit ;
            return true;
            disklrucache;
            JVM INSTR monitorexit ;
            return false;
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public Object next()
        {
            return a();
        }

        public void remove()
        {
            Exception exception;
            if (c == null)
            {
                throw new IllegalStateException("remove() before next()");
            }
            try
            {
                d.c(Snapshot.a(c));
            }
            catch (IOException ioexception)
            {
                c = null;
                return;
            }
            finally
            {
                c = null;
            }
            c = null;
            return;
            throw exception;
        }
    }

}
