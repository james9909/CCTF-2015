// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal.loaders;

import dagger.internal.Binding;
import dagger.internal.Keys;
import dagger.internal.Linker;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class ReflectiveAtInjectBinding extends Binding
{

    private final Field a[];
    private final ClassLoader b;
    private final Constructor c;
    private final Class d;
    private final String e[];
    private final Binding f[];
    private final Binding g[];
    private Binding h;

    private ReflectiveAtInjectBinding(String s, String s1, boolean flag, Class class1, Field afield[], Constructor constructor, int i, 
            Class class2, String as[])
    {
        super(s, s1, flag, class1);
        c = constructor;
        a = afield;
        d = class2;
        e = as;
        g = new Binding[i];
        f = new Binding[afield.length];
        b = class1.getClassLoader();
    }

    public static Binding a(Class class1, boolean flag)
    {
_L2:
        String s;
        int k;
        if (constructor1 != null)
        {
            NoSuchMethodException nosuchmethodexception;
            if ((2 & constructor1.getModifiers()) != 0)
            {
                throw new IllegalStateException((new StringBuilder()).append("Can't inject private constructor: ").append(constructor1).toString());
            }
            s = Keys.a(class1);
            constructor1.setAccessible(true);
            java.lang.reflect.Type atype[] = constructor1.getGenericParameterTypes();
            k = atype.length;
            if (k != 0)
            {
                java.lang.annotation.Annotation aannotation[][] = constructor1.getParameterAnnotations();
                for (int l = 0; l < atype.length; l++)
                {
                    arraylist.add(Keys.a(atype[l], aannotation[l], constructor1));
                }

            }
        } else
        {
            if (flag1)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("No injectable constructor on @Singleton ").append(class1.getName()).toString());
            }
            s = null;
            k = 0;
        }
        Class class3 = class1.getSuperclass();
        if (class3 != null)
        {
            if (Keys.e(class3.getName()))
            {
                class3 = null;
            } else
            {
                arraylist.add(Keys.a(class3));
            }
        }
        return new ReflectiveAtInjectBinding(s, Keys.a(class1), flag1, class1, (Field[])arraylist1.toArray(new Field[arraylist1.size()]), constructor1, k, class3, (String[])arraylist.toArray(new String[arraylist.size()]));
        boolean flag1 = class1.isAnnotationPresent(javax/inject/Singleton);
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        for (Class class2 = class1; class2 != java/lang/Object; class2 = class2.getSuperclass())
        {
            Field afield[] = class2.getDeclaredFields();
            int i1 = afield.length;
            int j1 = 0;
            while (j1 < i1) 
            {
                Field field = afield[j1];
                if (field.isAnnotationPresent(javax/inject/Inject) && !Modifier.isStatic(field.getModifiers()))
                {
                    if ((2 & field.getModifiers()) != 0)
                    {
                        throw new IllegalStateException((new StringBuilder()).append("Can't inject private field: ").append(field).toString());
                    }
                    field.setAccessible(true);
                    arraylist1.add(field);
                    arraylist.add(Keys.a(field.getGenericType(), field.getAnnotations(), field));
                }
                j1++;
            }
        }

        Constructor aconstructor[] = a(class1);
        int i = aconstructor.length;
        int j = 0;
        Constructor constructor = null;
        while (j < i) 
        {
            Constructor constructor3 = aconstructor[j];
            if (constructor3.isAnnotationPresent(javax/inject/Inject))
            {
                if (constructor != null)
                {
                    throw new dagger.internal.Binding.InvalidBindingException(class1.getName(), "has too many injectable constructors");
                }
                constructor = constructor3;
            }
            j++;
        }
        Constructor constructor1;
        if (constructor == null)
        {
            if (!arraylist1.isEmpty())
            {
                Constructor constructor2;
                try
                {
                    constructor2 = class1.getDeclaredConstructor(new Class[0]);
                }
                // Misplaced declaration of an exception variable
                catch (NoSuchMethodException nosuchmethodexception)
                {
                    constructor1 = constructor;
                    continue; /* Loop/switch isn't completed */
                }
                constructor1 = constructor2;
                break MISSING_BLOCK_LABEL_281;
            }
            if (flag)
            {
                throw new dagger.internal.Binding.InvalidBindingException(class1.getName(), "has no injectable members. Do you want to add an injectable constructor?");
            }
        }
        constructor1 = constructor;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static Constructor[] a(Class class1)
    {
        return (Constructor[])class1.getDeclaredConstructors();
    }

    public void a(Linker linker)
    {
        int i = 0;
        int j = 0;
        for (; i < a.length; i++)
        {
            if (f[i] == null)
            {
                f[i] = linker.a(e[j], a[i], b);
            }
            j++;
        }

        if (c != null)
        {
            for (int k = 0; k < g.length; k++)
            {
                if (g[k] == null)
                {
                    g[k] = linker.a(e[j], c, b);
                }
                j++;
            }

        }
        if (d != null && h == null)
        {
            h = linker.a(e[j], membersKey, b, false, true);
        }
    }

    public void a(Object obj)
    {
        int i = 0;
        do
        {
            try
            {
                if (i >= a.length)
                {
                    break;
                }
                a[i].set(obj, f[i].get());
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                throw new AssertionError(illegalaccessexception);
            }
            i++;
        } while (true);
        if (h != null)
        {
            h.a(obj);
        }
        return;
    }

    public void a(Set set, Set set1)
    {
        if (g != null)
        {
            Collections.addAll(set, g);
        }
        Collections.addAll(set1, f);
        if (h != null)
        {
            set1.add(h);
        }
    }

    public Object get()
    {
        if (c == null)
        {
            throw new UnsupportedOperationException();
        }
        Object aobj[] = new Object[g.length];
        for (int i = 0; i < g.length; i++)
        {
            aobj[i] = g[i].get();
        }

        Object obj;
        try
        {
            obj = c.newInstance(aobj);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            Throwable throwable = invocationtargetexception.getCause();
            RuntimeException runtimeexception;
            if (throwable instanceof RuntimeException)
            {
                runtimeexception = (RuntimeException)throwable;
            } else
            {
                runtimeexception = new RuntimeException(throwable);
            }
            throw runtimeexception;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError(illegalaccessexception);
        }
        catch (InstantiationException instantiationexception)
        {
            throw new RuntimeException(instantiationexception);
        }
        a(obj);
        return obj;
    }

    public String toString()
    {
        if (provideKey != null)
        {
            return provideKey;
        } else
        {
            return membersKey;
        }
    }
}
