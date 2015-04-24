// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.lang;


public class Aspects14
{

    static Class a;
    static Class b;
    private static final Class c[] = new Class[0];
    private static final Class d[];
    private static final Class e[];
    private static final Object f[] = new Object[0];

    public Aspects14()
    {
    }

    static Class a(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new NoClassDefFoundError(classnotfoundexception.getMessage());
        }
        return class1;
    }

    static 
    {
        Class aclass[] = new Class[1];
        Class class1;
        Class aclass1[];
        Class class2;
        if (a == null)
        {
            class1 = a("java.lang.Object");
            a = class1;
        } else
        {
            class1 = a;
        }
        aclass[0] = class1;
        d = aclass;
        aclass1 = new Class[1];
        if (b == null)
        {
            class2 = a("java.lang.Class");
            b = class2;
        } else
        {
            class2 = b;
        }
        aclass1[0] = class2;
        e = aclass1;
    }
}
