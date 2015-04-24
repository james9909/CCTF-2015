// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class OptionalMethod
{

    private final Class a;
    private final String b;
    private final Class c[];

    public transient OptionalMethod(Class class1, String s, Class aclass[])
    {
        a = class1;
        b = s;
        c = aclass;
    }

    private Method a(Class class1)
    {
        Method method;
label0:
        {
            if (b != null)
            {
                method = a(class1, b, c);
                if (method == null || a == null || a.isAssignableFrom(method.getReturnType()))
                {
                    break label0;
                }
            }
            return null;
        }
        return method;
    }

    private static Method a(Class class1, String s, Class aclass[])
    {
        Method method;
        int i;
        try
        {
            method = class1.getMethod(s, aclass);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
        try
        {
            i = method.getModifiers();
        }
        catch (NoSuchMethodException nosuchmethodexception1)
        {
            return method;
        }
        if ((i & 1) == 0)
        {
            return null;
        } else
        {
            return method;
        }
    }

    public transient Object a(Object obj, Object aobj[])
    {
        Method method = a(obj.getClass());
        if (method == null)
        {
            return null;
        }
        Object obj1;
        try
        {
            obj1 = method.invoke(obj, aobj);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            return null;
        }
        return obj1;
    }

    public boolean a(Object obj)
    {
        return a(obj.getClass()) != null;
    }

    public transient Object b(Object obj, Object aobj[])
    {
        Object obj1;
        try
        {
            obj1 = a(obj, aobj);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            Throwable throwable = invocationtargetexception.getTargetException();
            if (throwable instanceof RuntimeException)
            {
                throw (RuntimeException)throwable;
            } else
            {
                AssertionError assertionerror = new AssertionError("Unexpected exception");
                assertionerror.initCause(throwable);
                throw assertionerror;
            }
        }
        return obj1;
    }

    public transient Object c(Object obj, Object aobj[])
    {
        Method method = a(obj.getClass());
        if (method == null)
        {
            throw new AssertionError((new StringBuilder()).append("Method ").append(b).append(" not supported for object ").append(obj).toString());
        }
        Object obj1;
        try
        {
            obj1 = method.invoke(obj, aobj);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            AssertionError assertionerror = new AssertionError((new StringBuilder()).append("Unexpectedly could not call: ").append(method).toString());
            assertionerror.initCause(illegalaccessexception);
            throw assertionerror;
        }
        return obj1;
    }

    public transient Object d(Object obj, Object aobj[])
    {
        Object obj1;
        try
        {
            obj1 = c(obj, aobj);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            Throwable throwable = invocationtargetexception.getTargetException();
            if (throwable instanceof RuntimeException)
            {
                throw (RuntimeException)throwable;
            } else
            {
                AssertionError assertionerror = new AssertionError("Unexpected exception");
                assertionerror.initCause(throwable);
                throw assertionerror;
            }
        }
        return obj1;
    }
}
