// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class StringToType
{

    public StringToType()
    {
    }

    // Unreferenced inner class org/aspectj/internal/lang/reflect/StringToType$1

/* anonymous class */
    static final class _cls1
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

}
