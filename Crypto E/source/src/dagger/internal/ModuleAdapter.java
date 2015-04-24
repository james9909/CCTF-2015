// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;


// Referenced classes of package dagger.internal:
//            BindingsGroup

public abstract class ModuleAdapter
{

    public final Class a;
    public final String b[];
    public final Class c[];
    public final boolean d;
    public final Class e[];
    public final boolean f;
    public final boolean g;

    public ModuleAdapter(Class class1, String as[], Class aclass[], boolean flag, Class aclass1[], boolean flag1, boolean flag2)
    {
        a = class1;
        b = as;
        c = aclass;
        d = flag;
        e = aclass1;
        f = flag1;
        g = flag2;
    }

    public void a(BindingsGroup bindingsgroup, Object obj)
    {
    }

    public Object b()
    {
        throw new UnsupportedOperationException((new StringBuilder()).append("No no-args constructor on ").append(getClass().getName()).toString());
    }

    public final boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (obj instanceof ModuleAdapter)
        {
            ModuleAdapter moduleadapter = (ModuleAdapter)obj;
            return a.equals(moduleadapter.a);
        } else
        {
            return false;
        }
    }

    public final int hashCode()
    {
        return a.hashCode();
    }
}
