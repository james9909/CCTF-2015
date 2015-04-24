// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger;

import dagger.internal.Binding;
import dagger.internal.BindingsGroup;
import dagger.internal.FailoverLoader;
import dagger.internal.Keys;
import dagger.internal.Linker;
import dagger.internal.Loader;
import dagger.internal.ModuleAdapter;
import dagger.internal.Modules;
import dagger.internal.SetBinding;
import dagger.internal.ThrowingErrorHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class ObjectGraph
{
    static class DaggerObjectGraph extends ObjectGraph
    {

        private final DaggerObjectGraph a;
        private final Linker b;
        private final Loader c;
        private final Map d;
        private final Map e;
        private final List f;

        static ObjectGraph a(DaggerObjectGraph daggerobjectgraph, Loader loader, Object aobj[])
        {
            return b(daggerobjectgraph, loader, aobj);
        }

        private Binding a(ClassLoader classloader, String s, String s1)
        {
            Class class1;
            class1 = null;
            DaggerObjectGraph daggerobjectgraph = this;
label0:
            do
            {
                Class class2;
label1:
                {
                    if (daggerobjectgraph != null)
                    {
                        class2 = (Class)daggerobjectgraph.e.get(s);
                        if (class2 == null)
                        {
                            break label1;
                        }
                        class1 = class2;
                    }
                    if (class1 == null)
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("No inject registered for ").append(s).append(". You must explicitly add it to the 'injects' option in one of your modules.").toString());
                    }
                    break label0;
                }
                daggerobjectgraph = daggerobjectgraph.a;
                class1 = class2;
            } while (true);
            Linker linker = b;
            linker;
            JVM INSTR monitorenter ;
            Binding binding = b.a(s1, class1, classloader, false, true);
            if (binding == null)
            {
                break MISSING_BLOCK_LABEL_124;
            }
            if (binding.c())
            {
                break MISSING_BLOCK_LABEL_146;
            }
            b.a();
            binding = b.a(s1, class1, classloader, false, true);
            linker;
            JVM INSTR monitorexit ;
            return binding;
            Exception exception;
            exception;
            linker;
            JVM INSTR monitorexit ;
            throw exception;
        }

        private static Object a(Object obj, String s)
        {
            if (obj == null)
            {
                throw new NullPointerException(s);
            } else
            {
                return obj;
            }
        }

        private static transient ObjectGraph b(DaggerObjectGraph daggerobjectgraph, Loader loader, Object aobj[])
        {
            LinkedHashMap linkedhashmap;
            LinkedHashMap linkedhashmap1;
            StandardBindings standardbindings;
            OverridesBindings overridesbindings;
            java.util.Map.Entry entry;
            ModuleAdapter moduleadapter;
            linkedhashmap = new LinkedHashMap();
            linkedhashmap1 = new LinkedHashMap();
            Iterator iterator;
            int i;
            if (daggerobjectgraph == null)
            {
                standardbindings = new StandardBindings();
            } else
            {
                standardbindings = new StandardBindings(daggerobjectgraph.f);
            }
            overridesbindings = new OverridesBindings();
            iterator = Modules.a(loader, aobj).entrySet().iterator();
_L2:
            if (!iterator.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            entry = (java.util.Map.Entry)iterator.next();
            moduleadapter = (ModuleAdapter)entry.getKey();
            for (i = 0; i < moduleadapter.b.length; i++)
            {
                linkedhashmap.put(moduleadapter.b[i], moduleadapter.a);
            }

            for (int j = 0; j < moduleadapter.c.length; j++)
            {
                linkedhashmap1.put(moduleadapter.c[j], null);
            }

            Object obj;
            if (moduleadapter.d)
            {
                obj = overridesbindings;
            } else
            {
                obj = standardbindings;
            }
            try
            {
                moduleadapter.a(((BindingsGroup) (obj)), entry.getValue());
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw new IllegalArgumentException((new StringBuilder()).append(moduleadapter.a.getSimpleName()).append(": ").append(illegalargumentexception.getMessage()).toString(), illegalargumentexception);
            }
            if (true) goto _L2; else goto _L1
_L1:
            Linker linker;
            Linker linker1;
            if (daggerobjectgraph != null)
            {
                linker = daggerobjectgraph.b;
            } else
            {
                linker = null;
            }
            linker1 = new Linker(linker, loader, new ThrowingErrorHandler());
            linker1.a(standardbindings);
            linker1.a(overridesbindings);
            return new DaggerObjectGraph(daggerobjectgraph, linker1, loader, linkedhashmap1, linkedhashmap, StandardBindings.a(standardbindings));
        }

        public Object a(Class class1)
        {
            String s = Keys.a(class1);
            String s1;
            if (class1.isInterface())
            {
                s1 = s;
            } else
            {
                s1 = Keys.a(class1);
            }
            return a(class1.getClassLoader(), s1, s).get();
        }

        public Object a(Object obj)
        {
            String s = Keys.a(obj.getClass());
            a(obj.getClass().getClassLoader(), s, s).a(obj);
            return obj;
        }

        DaggerObjectGraph(DaggerObjectGraph daggerobjectgraph, Linker linker, Loader loader, Map map, Map map1, List list)
        {
            a = daggerobjectgraph;
            b = (Linker)a(linker, "linker");
            c = (Loader)a(loader, "plugin");
            d = (Map)a(map, "staticInjections");
            e = (Map)a(map1, "injectableTypes");
            f = (List)a(list, "setBindings");
        }
    }

    static final class OverridesBindings extends BindingsGroup
    {

        OverridesBindings()
        {
        }
    }

    static final class StandardBindings extends BindingsGroup
    {

        private final List a;

        static List a(StandardBindings standardbindings)
        {
            return standardbindings.a;
        }

        public StandardBindings()
        {
            a = new ArrayList();
        }

        public StandardBindings(List list)
        {
            a = new ArrayList(list.size());
            SetBinding setbinding;
            for (Iterator iterator = list.iterator(); iterator.hasNext(); a(setbinding.provideKey, setbinding))
            {
                setbinding = new SetBinding((SetBinding)iterator.next());
                a.add(setbinding);
            }

        }
    }


    ObjectGraph()
    {
    }

    public static transient ObjectGraph a(Object aobj[])
    {
        return DaggerObjectGraph.a(null, new FailoverLoader(), aobj);
    }

    public abstract Object a(Class class1);

    public abstract Object a(Object obj);
}
