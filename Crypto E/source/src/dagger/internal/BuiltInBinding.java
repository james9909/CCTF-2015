// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;


// Referenced classes of package dagger.internal:
//            Binding, Linker

final class BuiltInBinding extends Binding
{

    private final String a;
    private final ClassLoader b;
    private Binding c;

    public BuiltInBinding(String s, Object obj, ClassLoader classloader, String s1)
    {
        super(s, null, false, obj);
        b = classloader;
        a = s1;
    }

    public void a(Linker linker)
    {
        c = linker.a(a, requiredBy, b);
    }

    public void a(Object obj)
    {
        throw new UnsupportedOperationException();
    }

    public Object get()
    {
        return c;
    }
}
