// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import java.lang.reflect.Modifier;

class StringMaker
{

    static StringMaker j;
    static StringMaker k;
    static StringMaker l;
    boolean a;
    boolean b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    int i;

    StringMaker()
    {
        a = true;
        b = true;
        c = false;
        d = false;
        e = false;
        f = true;
        g = true;
        h = true;
    }

    String a(int i1)
    {
        if (!d)
        {
            return "";
        }
        String s = Modifier.toString(i1);
        if (s.length() == 0)
        {
            return "";
        } else
        {
            return s + " ";
        }
    }

    public String a(Class class1)
    {
        return a(class1, class1.getName(), a);
    }

    public String a(Class class1, String s)
    {
        return a(class1, s, e);
    }

    String a(Class class1, String s, boolean flag)
    {
        if (class1 == null)
        {
            return "ANONYMOUS";
        }
        if (class1.isArray())
        {
            Class class2 = class1.getComponentType();
            return a(class2, class2.getName(), flag) + "[]";
        }
        if (flag)
        {
            return b(s).replace('$', '.');
        } else
        {
            return s.replace('$', '.');
        }
    }

    String a(String s)
    {
        int i1 = s.lastIndexOf('-');
        if (i1 == -1)
        {
            return s;
        } else
        {
            return s.substring(i1 + 1);
        }
    }

    public void a(StringBuffer stringbuffer, Class aclass[])
    {
        for (int i1 = 0; i1 < aclass.length; i1++)
        {
            if (i1 > 0)
            {
                stringbuffer.append(", ");
            }
            stringbuffer.append(a(aclass[i1]));
        }

    }

    String b(String s)
    {
        int i1 = s.lastIndexOf('.');
        if (i1 == -1)
        {
            return s;
        } else
        {
            return s.substring(i1 + 1);
        }
    }

    public void b(StringBuffer stringbuffer, Class aclass[])
    {
        if (aclass == null)
        {
            return;
        }
        if (!b)
        {
            if (aclass.length == 0)
            {
                stringbuffer.append("()");
                return;
            } else
            {
                stringbuffer.append("(..)");
                return;
            }
        } else
        {
            stringbuffer.append("(");
            a(stringbuffer, aclass);
            stringbuffer.append(")");
            return;
        }
    }

    public void c(StringBuffer stringbuffer, Class aclass[])
    {
        if (!c || aclass == null || aclass.length == 0)
        {
            return;
        } else
        {
            stringbuffer.append(" throws ");
            a(stringbuffer, aclass);
            return;
        }
    }

    static 
    {
        j = new StringMaker();
        j.a = true;
        j.b = false;
        j.c = false;
        j.d = false;
        j.e = true;
        j.f = false;
        j.g = false;
        j.i = 0;
        k = new StringMaker();
        k.a = true;
        k.b = true;
        k.c = false;
        k.d = false;
        k.e = false;
        j.i = 1;
        l = new StringMaker();
        l.a = false;
        l.b = true;
        l.c = false;
        l.d = true;
        l.e = false;
        l.h = false;
        l.i = 2;
    }
}
