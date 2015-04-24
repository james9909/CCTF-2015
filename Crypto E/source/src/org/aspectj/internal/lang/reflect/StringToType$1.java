// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

// Referenced classes of package org.aspectj.internal.lang.reflect:
//            StringToType

static final class 
    implements ParameterizedType
{

    final Type a[];
    final Class b;

    public Type[] getActualTypeArguments()
    {
        return a;
    }

    public Type getOwnerType()
    {
        return b.getEnclosingClass();
    }

    public Type getRawType()
    {
        return b;
    }
}
