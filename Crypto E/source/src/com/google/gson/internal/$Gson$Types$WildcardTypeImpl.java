// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

static final class a
    implements Serializable, WildcardType
{

    private final Type a;
    private final Type b;

    public boolean equals(Object obj)
    {
        return (obj instanceof WildcardType) && a(this, (WildcardType)obj);
    }

    public Type[] getLowerBounds()
    {
        if (b != null)
        {
            Type atype[] = new Type[1];
            atype[0] = b;
            return atype;
        } else
        {
            return b;
        }
    }

    public Type[] getUpperBounds()
    {
        Type atype[] = new Type[1];
        atype[0] = a;
        return atype;
    }

    public int hashCode()
    {
        int i;
        if (b != null)
        {
            i = 31 + b.hashCode();
        } else
        {
            i = 1;
        }
        return i ^ 31 + a.hashCode();
    }

    public String toString()
    {
        if (b != null)
        {
            return (new StringBuilder()).append("? super ").append(b(b)).toString();
        }
        if (a == java/lang/Object)
        {
            return "?";
        } else
        {
            return (new StringBuilder()).append("? extends ").append(a(a)).toString();
        }
    }

    public (Type atype[], Type atype1[])
    {
        boolean flag = true;
        super();
        boolean flag1;
        boolean flag2;
        if (atype1.length <= flag)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        ment(flag1);
        if (atype.length == flag)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        ment(flag2);
        if (atype1.length == flag)
        {
            ull(atype1[0]);
            ull(atype1[0]);
            if (atype[0] != java/lang/Object)
            {
                flag = false;
            }
            ment(flag);
            b = b(atype1[0]);
            a = java/lang/Object;
            return;
        } else
        {
            ull(atype[0]);
            ull(atype[0]);
            b = null;
            a = a(atype[0]);
            return;
        }
    }
}
