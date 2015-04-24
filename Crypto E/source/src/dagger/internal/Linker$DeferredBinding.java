// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import java.util.Set;

// Referenced classes of package dagger.internal:
//            Binding, Linker

static class <init> extends Binding
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

    private (String s, ClassLoader classloader, Object obj, boolean flag)
    {
        super(null, null, false, obj);
        b = s;
        a = classloader;
        c = flag;
    }

    c(String s, ClassLoader classloader, Object obj, boolean flag, c c1)
    {
        this(s, classloader, obj, flag);
    }
}
