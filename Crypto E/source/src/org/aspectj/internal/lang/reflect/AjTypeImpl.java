// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import java.lang.annotation.Annotation;
import org.aspectj.lang.reflect.Advice;
import org.aspectj.lang.reflect.AjType;
import org.aspectj.lang.reflect.InterTypeConstructorDeclaration;
import org.aspectj.lang.reflect.InterTypeFieldDeclaration;
import org.aspectj.lang.reflect.InterTypeMethodDeclaration;
import org.aspectj.lang.reflect.Pointcut;

public class AjTypeImpl
    implements AjType
{

    private Class a;
    private Pointcut b[];
    private Pointcut c[];
    private Advice d[];
    private Advice e[];
    private InterTypeMethodDeclaration f[];
    private InterTypeMethodDeclaration g[];
    private InterTypeFieldDeclaration h[];
    private InterTypeFieldDeclaration i[];
    private InterTypeConstructorDeclaration j[];
    private InterTypeConstructorDeclaration k[];

    public AjTypeImpl(Class class1)
    {
        b = null;
        c = null;
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        j = null;
        k = null;
        a = class1;
    }

    public String a()
    {
        return a.getName();
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof AjTypeImpl))
        {
            return false;
        } else
        {
            return ((AjTypeImpl)obj).a.equals(a);
        }
    }

    public Annotation getAnnotation(Class class1)
    {
        return a.getAnnotation(class1);
    }

    public Annotation[] getAnnotations()
    {
        return a.getAnnotations();
    }

    public Annotation[] getDeclaredAnnotations()
    {
        return a.getDeclaredAnnotations();
    }

    public int hashCode()
    {
        return a.hashCode();
    }

    public boolean isAnnotationPresent(Class class1)
    {
        return a.isAnnotationPresent(class1);
    }

    public String toString()
    {
        return a();
    }
}
