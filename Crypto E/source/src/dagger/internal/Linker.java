// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

// Referenced classes of package dagger.internal:
//            ArrayQueue, Binding, Keys, BuiltInBinding, 
//            LazyBinding, Loader, BindingsGroup

public final class Linker
{
    static class DeferredBinding extends Binding
    {

        final ClassLoader a;
        final String b;
        final boolean c;

        public void a(Object obj)
        {
            throw new UnsupportedOperationException("Deferred bindings must resolve first.");
        }

        public void a(Set set, Set set1)
        {
            throw new UnsupportedOperationException("Deferred bindings must resolve first.");
        }

        public String toString()
        {
            return (new StringBuilder()).append("DeferredBinding[deferredKey=").append(b).append("]").toString();
        }

        private DeferredBinding(String s, ClassLoader classloader, Object obj, boolean flag)
        {
            super(null, null, false, obj);
            b = s;
            a = classloader;
            c = flag;
        }

    }

    public static interface ErrorHandler
    {

        public static final ErrorHandler a = new ErrorHandler() {

            public void a(List list)
            {
            }

        };

        public abstract void a(List list);

    }

    static class SingletonBinding extends Binding
    {

        private final Binding a;
        private volatile Object b;

        public void a(Linker linker)
        {
            a.a(linker);
        }

        public void a(Object obj)
        {
            a.a(obj);
        }

        public void a(Set set, Set set1)
        {
            a.a(set, set1);
        }

        public void a(boolean flag)
        {
            a.a(flag);
        }

        protected void b()
        {
            a.b();
        }

        public void b(boolean flag)
        {
            a.b(flag);
        }

        public void c(boolean flag)
        {
            a.c(true);
        }

        public boolean c()
        {
            return a.c();
        }

        public void d(boolean flag)
        {
            a.d(flag);
        }

        protected boolean d()
        {
            return true;
        }

        public boolean e()
        {
            return a.e();
        }

        public boolean f()
        {
            return a.f();
        }

        public boolean g()
        {
            return a.g();
        }

        public Object get()
        {
            if (b != Linker.b()) goto _L2; else goto _L1
_L1:
            this;
            JVM INSTR monitorenter ;
            if (b == Linker.b())
            {
                b = a.get();
            }
            this;
            JVM INSTR monitorexit ;
_L2:
            return b;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public boolean h()
        {
            return a.h();
        }

        public String toString()
        {
            return (new StringBuilder()).append("@Singleton/").append(a.toString()).toString();
        }

        private SingletonBinding(Binding binding)
        {
            super(binding.provideKey, binding.membersKey, true, binding.requiredBy);
            b = Linker.b();
            a = binding;
        }

    }


    private static final Object a = new Object();
    private final Linker b;
    private final Queue c = new ArrayQueue();
    private boolean d;
    private final List e = new ArrayList();
    private final Map f = new HashMap();
    private volatile Map g;
    private final Loader h;
    private final ErrorHandler i;

    public Linker(Linker linker, Loader loader, ErrorHandler errorhandler)
    {
        d = true;
        g = null;
        if (loader == null)
        {
            throw new NullPointerException("plugin");
        }
        if (errorhandler == null)
        {
            throw new NullPointerException("errorHandler");
        } else
        {
            b = linker;
            h = loader;
            i = errorhandler;
            return;
        }
    }

    static Binding a(Binding binding)
    {
        if (!binding.d() || (binding instanceof SingletonBinding))
        {
            return binding;
        } else
        {
            return new SingletonBinding(binding);
        }
    }

    private Binding a(String s, Object obj, ClassLoader classloader, boolean flag)
    {
        String s1 = Keys.a(s);
        Object obj1;
        if (s1 != null)
        {
            obj1 = new BuiltInBinding(s, obj, classloader, s1);
        } else
        {
            String s2 = Keys.b(s);
            if (s2 != null)
            {
                return new LazyBinding(s, obj, classloader, s2);
            }
            String s3 = Keys.d(s);
            if (s3 == null || Keys.c(s))
            {
                throw new IllegalArgumentException(s);
            }
            obj1 = h.a(s, s3, classloader, flag);
            if (obj1 == null)
            {
                throw new Binding.InvalidBindingException(s3, (new StringBuilder()).append("could not be bound with key ").append(s).toString());
            }
        }
        return ((Binding) (obj1));
    }

    private void a(String s)
    {
        e.add(s);
    }

    private void a(Map map, Object obj, Object obj1)
    {
        Object obj2 = map.put(obj, obj1);
        if (obj2 != null)
        {
            map.put(obj, obj2);
        }
    }

    static Object b()
    {
        return a;
    }

    private void b(Binding binding)
    {
        if (binding.provideKey != null)
        {
            a(f, binding.provideKey, binding);
        }
        if (binding.membersKey != null)
        {
            a(f, binding.membersKey, binding);
        }
    }

    private void c()
    {
        if (!Thread.holdsLock(this))
        {
            throw new AssertionError();
        } else
        {
            return;
        }
    }

    public Binding a(String s, Object obj, ClassLoader classloader)
    {
        return a(s, obj, classloader, true, true);
    }

    public Binding a(String s, Object obj, ClassLoader classloader, boolean flag, boolean flag1)
    {
        c();
        Linker linker = this;
        Binding binding = null;
        do
        {
            if (linker == null)
            {
                break;
            }
            binding = (Binding)linker.f.get(s);
            if (binding != null)
            {
                if (linker != this && !binding.c())
                {
                    throw new AssertionError();
                }
                break;
            }
            linker = linker.b;
        } while (true);
        if (binding == null)
        {
            DeferredBinding deferredbinding = new DeferredBinding(s, classloader, obj, flag);
            deferredbinding.c(flag1);
            deferredbinding.d(true);
            c.add(deferredbinding);
            d = false;
            return null;
        }
        if (!binding.c())
        {
            c.add(binding);
        }
        binding.c(flag1);
        binding.d(true);
        return binding;
    }

    public void a()
    {
        c();
_L2:
        Binding binding;
        DeferredBinding deferredbinding;
        String s;
        boolean flag;
        binding = (Binding)c.poll();
        if (binding == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!(binding instanceof DeferredBinding))
        {
            break MISSING_BLOCK_LABEL_378;
        }
        deferredbinding = (DeferredBinding)binding;
        s = deferredbinding.b;
        flag = deferredbinding.c;
        if (f.containsKey(s))
        {
            continue; /* Loop/switch isn't completed */
        }
        Binding.InvalidBindingException invalidbindingexception;
        Binding binding1;
        binding1 = a(s, binding.requiredBy, deferredbinding.a, flag);
        binding1.c(binding.g());
        binding1.d(binding.h());
        if (!s.equals(binding1.provideKey) && !s.equals(binding1.membersKey))
        {
            throw new IllegalStateException((new StringBuilder()).append("Unable to create binding for ").append(s).toString());
        }
        try
        {
            Binding binding2 = a(binding1);
            c.add(binding2);
            b(binding2);
        }
        // Misplaced declaration of an exception variable
        catch (Binding.InvalidBindingException invalidbindingexception)
        {
            a((new StringBuilder()).append(invalidbindingexception.a).append(" ").append(invalidbindingexception.getMessage()).append(" required by ").append(binding.requiredBy).toString());
            f.put(s, Binding.UNRESOLVED);
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            a((new StringBuilder()).append("Unsupported: ").append(unsupportedoperationexception.getMessage()).append(" required by ").append(binding.requiredBy).toString());
            f.put(s, Binding.UNRESOLVED);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            a((new StringBuilder()).append(illegalargumentexception.getMessage()).append(" required by ").append(binding.requiredBy).toString());
            f.put(s, Binding.UNRESOLVED);
        }
        catch (RuntimeException runtimeexception)
        {
            throw runtimeexception;
        }
        catch (Exception exception1)
        {
            throw new RuntimeException(exception1);
        }
        continue; /* Loop/switch isn't completed */
        d = true;
        binding.a(this);
        if (d)
        {
            binding.b();
        } else
        {
            c.add(binding);
        }
        if (true) goto _L2; else goto _L1
_L1:
        i.a(e);
        e.clear();
        return;
        Exception exception;
        exception;
        e.clear();
        throw exception;
    }

    public void a(BindingsGroup bindingsgroup)
    {
        if (g != null)
        {
            throw new IllegalStateException("Cannot install further bindings after calling linkAll().");
        }
        java.util.Map.Entry entry;
        for (Iterator iterator = bindingsgroup.a().iterator(); iterator.hasNext(); f.put(entry.getKey(), a((Binding)entry.getValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

}
