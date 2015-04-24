// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import dagger.Lazy;

// Referenced classes of package dagger.internal:
//            Binding, Linker

final class LazyBinding extends Binding
{

    private static final Object a = new Object();
    private final String b;
    private final ClassLoader c;
    private Binding d;

    public LazyBinding(String s, Object obj, ClassLoader classloader, String s1)
    {
        super(s, null, false, obj);
        c = classloader;
        b = s1;
    }

    static Object i()
    {
        return a;
    }

    public Lazy a()
    {
        return new Lazy() {

            final LazyBinding a;
            private volatile Object b;

            
            {
                a = LazyBinding.this;
                super();
                b = LazyBinding.i();
            }
        };
    }

    public void a(Lazy lazy)
    {
        throw new UnsupportedOperationException();
    }

    public void a(Linker linker)
    {
        d = linker.a(b, requiredBy, c);
    }

    public volatile void a(Object obj)
    {
        a((Lazy)obj);
    }

    public Object get()
    {
        return a();
    }

}
