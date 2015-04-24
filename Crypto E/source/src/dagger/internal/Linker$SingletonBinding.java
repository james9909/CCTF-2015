// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import java.util.Set;

// Referenced classes of package dagger.internal:
//            Binding, Linker

static class <init> extends Binding
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

    private (Binding binding)
    {
        super(binding.provideKey, binding.membersKey, true, binding.requiredBy);
        b = Linker.b();
        a = binding;
    }

    a(Binding binding, a a1)
    {
        this(binding);
    }
}
