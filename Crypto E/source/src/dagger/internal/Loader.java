// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;


// Referenced classes of package dagger.internal:
//            Memoizer, Binding, ModuleAdapter

public abstract class Loader
{

    private final Memoizer a = new Memoizer() {

        final Loader a;

        protected Memoizer a(ClassLoader classloader)
        {
            return new Memoizer(this, classloader) {

                final ClassLoader a;
                final _cls1 b;

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
                b = _pcls1;
                a = classloader;
                super();
            }
            };
        }

        protected volatile Object a(Object obj)
        {
            return a((ClassLoader)obj);
        }

            
            {
                a = Loader.this;
                super();
            }
    };

    public Loader()
    {
    }

    public abstract Binding a(String s, String s1, ClassLoader classloader, boolean flag);

    public abstract ModuleAdapter a(Class class1);

    protected Class a(ClassLoader classloader, String s)
    {
        if (classloader == null)
        {
            classloader = ClassLoader.getSystemClassLoader();
        }
        return (Class)((Memoizer)a.b(classloader)).b(s);
    }

    protected Object a(String s, ClassLoader classloader)
    {
        Class class1;
        Object obj;
        try
        {
            class1 = a(classloader, s);
        }
        catch (InstantiationException instantiationexception)
        {
            throw new RuntimeException((new StringBuilder()).append("Failed to initialize ").append(s).toString(), instantiationexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException((new StringBuilder()).append("Failed to initialize ").append(s).toString(), illegalaccessexception);
        }
        if (class1 == java/lang/Void)
        {
            return null;
        }
        obj = class1.newInstance();
        return obj;
    }
}
