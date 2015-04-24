// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;


// Referenced classes of package dagger.internal:
//            Memoizer, FailoverLoader, ModuleAdapter

class a extends Memoizer
{

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

    (FailoverLoader failoverloader)
    {
        a = failoverloader;
        super();
    }
}
