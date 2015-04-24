// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import java.util.Hashtable;
import java.util.StringTokenizer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.reflect.MethodSignature;
import org.aspectj.lang.reflect.SourceLocation;

// Referenced classes of package org.aspectj.runtime.reflect:
//            JoinPointImpl, MethodSignatureImpl, SourceLocationImpl

public final class Factory
{

    static Hashtable e;
    static Class f;
    private static Object g[] = new Object[0];
    Class a;
    ClassLoader b;
    String c;
    int d;

    public Factory(String s, Class class1)
    {
        c = s;
        a = class1;
        d = 0;
        b = class1.getClassLoader();
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

    static Class a(String s, ClassLoader classloader)
    {
        if (!s.equals("*")) goto _L2; else goto _L1
_L1:
        Class class1 = null;
_L4:
        return class1;
_L2:
        class1 = (Class)e.get(s);
        if (class1 != null) goto _L4; else goto _L3
_L3:
        if (classloader != null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        return Class.forName(s);
        Class class3 = Class.forName(s, false, classloader);
        return class3;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        if (f == null)
        {
            Class class2 = a("java.lang.ClassNotFoundException");
            f = class2;
            return class2;
        } else
        {
            return f;
        }
    }

    public static JoinPoint a(org.aspectj.lang.JoinPoint.StaticPart staticpart, Object obj, Object obj1)
    {
        return new JoinPointImpl(staticpart, obj, obj1, g);
    }

    public static JoinPoint a(org.aspectj.lang.JoinPoint.StaticPart staticpart, Object obj, Object obj1, Object obj2)
    {
        return new JoinPointImpl(staticpart, obj, obj1, new Object[] {
            obj2
        });
    }

    public org.aspectj.lang.JoinPoint.StaticPart a(String s, Signature signature, int i)
    {
        int j = d;
        d = j + 1;
        return new JoinPointImpl.StaticPartImpl(j, s, signature, a(i, -1));
    }

    public MethodSignature a(String s, String s1, String s2, String s3, String s4, String s5, String s6)
    {
        int i = Integer.parseInt(s, 16);
        Class class1 = a(s2, b);
        StringTokenizer stringtokenizer = new StringTokenizer(s3, ":");
        int j = stringtokenizer.countTokens();
        Class aclass[] = new Class[j];
        for (int k = 0; k < j; k++)
        {
            aclass[k] = a(stringtokenizer.nextToken(), b);
        }

        StringTokenizer stringtokenizer1 = new StringTokenizer(s4, ":");
        int l = stringtokenizer1.countTokens();
        String as[] = new String[l];
        for (int i1 = 0; i1 < l; i1++)
        {
            as[i1] = stringtokenizer1.nextToken();
        }

        StringTokenizer stringtokenizer2 = new StringTokenizer(s5, ":");
        int j1 = stringtokenizer2.countTokens();
        Class aclass1[] = new Class[j1];
        for (int k1 = 0; k1 < j1; k1++)
        {
            aclass1[k1] = a(stringtokenizer2.nextToken(), b);
        }

        return new MethodSignatureImpl(i, s1, class1, aclass, as, aclass1, a(s6, b));
    }

    public SourceLocation a(int i, int j)
    {
        return new SourceLocationImpl(a, c, i);
    }

    static 
    {
        e = new Hashtable();
        e.put("void", Void.TYPE);
        e.put("boolean", Boolean.TYPE);
        e.put("byte", Byte.TYPE);
        e.put("char", Character.TYPE);
        e.put("short", Short.TYPE);
        e.put("int", Integer.TYPE);
        e.put("long", Long.TYPE);
        e.put("float", Float.TYPE);
        e.put("double", Double.TYPE);
    }
}
