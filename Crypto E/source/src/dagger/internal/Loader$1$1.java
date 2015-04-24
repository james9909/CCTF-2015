// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;


// Referenced classes of package dagger.internal:
//            Memoizer, Loader

class nit> extends Memoizer
{

    final ClassLoader a;
    final a b;

    protected Class a(String s)
    {
        Class class1;
        try
        {
            class1 = a.loadClass(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return java/lang/Void;
        }
        return class1;
    }

    protected volatile Object a(Object obj)
    {
        return a((String)obj);
    }

    nit>(nit> nit>, ClassLoader classloader)
    {
        b = nit>;
        a = classloader;
        super();
    }

    // Unreferenced inner class dagger/internal/Loader$1

/* anonymous class */
    class Loader._cls1 extends Memoizer
    {

        final Loader a;

        protected Memoizer a(ClassLoader classloader)
        {
            return new Loader._cls1._cls1(this, classloader);
        }

        protected volatile Object a(Object obj)
        {
            return a((ClassLoader)obj);
        }

            
            {
                a = loader;
                super();
            }
    }

}
