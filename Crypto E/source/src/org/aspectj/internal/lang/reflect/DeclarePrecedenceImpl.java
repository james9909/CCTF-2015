// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.DeclarePrecedence;

public class DeclarePrecedenceImpl
    implements DeclarePrecedence
{

    private String a;

    public String toString()
    {
        return (new StringBuilder()).append("declare precedence : ").append(a).toString();
    }
}
