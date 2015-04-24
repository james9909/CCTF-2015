// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.DeclareParents;
import org.aspectj.lang.reflect.TypePattern;

public class DeclareParentsImpl
    implements DeclareParents
{

    private TypePattern a;
    private String b;
    private boolean c;

    public TypePattern a()
    {
        return a;
    }

    public boolean b()
    {
        return c;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("declare parents : ");
        stringbuffer.append(a().a());
        String s;
        if (b())
        {
            s = " extends ";
        } else
        {
            s = " implements ";
        }
        stringbuffer.append(s);
        stringbuffer.append(b);
        return stringbuffer.toString();
    }
}
