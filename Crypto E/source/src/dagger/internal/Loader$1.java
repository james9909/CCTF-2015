// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;


// Referenced classes of package dagger.internal:
//            Memoizer, Loader

class <init> extends Memoizer
{

    final Loader a;

    protected Memoizer a(ClassLoader classloader)
    {
        return new Memoizer(classloader) {

            final ClassLoader a;
            final Loader._cls1 b;

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

            
            {
                b = Loader._cls1.this;
                a = classloader;
                super();
            }
        };
    }

    protected volatile Object a(Object obj)
    {
        return a((ClassLoader)obj);
    }

    <init>(Loader loader)
    {
        a = loader;
        super();
    }
}
