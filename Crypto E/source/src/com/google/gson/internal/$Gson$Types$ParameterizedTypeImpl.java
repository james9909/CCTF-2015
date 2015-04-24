// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

static final class c
    implements Serializable, ParameterizedType
{

    private final Type a;
    private final Type b;
    private final Type c[];

    public boolean equals(Object obj)
    {
        return (obj instanceof ParameterizedType) && c(this, (ParameterizedType)obj);
    }

    public Type[] getActualTypeArguments()
    {
        return (Type[])c.clone();
    }

    public Type getOwnerType()
    {
        return a;
    }

    public Type getRawType()
    {
        return b;
    }

    public int hashCode()
    {
        return Arrays.hashCode(c) ^ b.hashCode() ^ b(a);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(30 * (1 + c.length));
        stringbuilder.append(c(b));
        if (c.length == 0)
        {
            return stringbuilder.toString();
        }
        stringbuilder.append("<").append(c(c[0]));
        for (int i = 1; i < c.length; i++)
        {
            stringbuilder.append(", ").append(c(c[i]));
        }

        return stringbuilder.append(">").toString();
    }

    public transient (Type type, Type type1, Type atype[])
    {
        boolean flag = true;
        int i = 0;
        super();
        Type type2;
        if (type1 instanceof Class)
        {
            Class class1 = (Class)type1;
            boolean flag1;
            if (type != null || class1.getEnclosingClass() == null)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            (flag1);
            if (type != null && class1.getEnclosingClass() == null)
            {
                flag = false;
            }
            (flag);
        }
        if (type == null)
        {
            type2 = null;
        } else
        {
            type2 = (type);
        }
        a = type2;
        b = b(type1);
        for (c = (Type[])atype.clone(); i < c.length; i++)
        {
            c(c[i]);
            c(c[i]);
            c[i] = c(c[i]);
        }

    }
}
