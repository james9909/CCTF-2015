// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.SourceLocation;

class SourceLocationImpl
    implements SourceLocation
{

    Class a;
    String b;
    int c;

    SourceLocationImpl(Class class1, String s, int i)
    {
        a = class1;
        b = s;
        c = i;
    }

    public String a()
    {
        return b;
    }

    public int b()
    {
        return c;
    }

    public String toString()
    {
        return a() + ":" + b();
    }
}
