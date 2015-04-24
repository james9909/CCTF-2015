// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import dagger.internal.loaders.ReflectiveAtInjectBinding;

// Referenced classes of package dagger.internal:
//            Loader, Binding, Memoizer, ModuleAdapter

public final class FailoverLoader extends Loader
{

    private final Memoizer a = new Memoizer() {

        final FailoverLoader a;

        protected ModuleAdapter a(Class class1)
        {
            ModuleAdapter moduleadapter = (ModuleAdapter)a.a(class1.getName().concat("$$ModuleAdapter"), class1.getClassLoader());
            if (moduleadapter == null)
            {
                throw new IllegalStateException((new StringBuilder()).append("Module adapter for ").append(class1).append(" could not be loaded. ").append("Please ensure that code generation was run for this module.").toString());
            } else
            {
                return moduleadapter;
            }
        }

        protected volatile Object a(Object obj)
        {
            return a((Class)obj);
        }

            
            {
                a = FailoverLoader.this;
                super();
            }
    };

    public FailoverLoader()
    {
    }

    public Binding a(String s, String s1, ClassLoader classloader, boolean flag)
    {
        Binding binding = (Binding)a(s1.concat("$$InjectAdapter"), classloader);
        if (binding != null)
        {
            return binding;
        }
        Class class1 = a(classloader, s1);
        if (class1.equals(java/lang/Void))
        {
            throw new IllegalStateException(String.format("Could not load class %s needed for binding %s", new Object[] {
                s1, s
            }));
        }
        if (class1.isInterface())
        {
            return null;
        } else
        {
            return ReflectiveAtInjectBinding.a(class1, flag);
        }
    }

    public ModuleAdapter a(Class class1)
    {
        return (ModuleAdapter)a.b(class1);
    }
}
