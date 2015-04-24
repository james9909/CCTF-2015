// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.reflect;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Map;
import org.apache.commons.lang3.Validate;

// Referenced classes of package org.apache.commons.lang3.reflect:
//            Typed, TypeUtils

public abstract class TypeLiteral
    implements Typed
{

    private static final TypeVariable T = org/apache/commons/lang3/reflect/TypeLiteral.getTypeParameters()[0];
    private final String toString;
    public final Type value;

    protected TypeLiteral()
    {
        Object obj = TypeUtils.getTypeArguments(getClass(), org/apache/commons/lang3/reflect/TypeLiteral).get(T);
        Object aobj[] = new Object[2];
        aobj[0] = getClass();
        aobj[1] = TypeUtils.toLongString(T);
        value = (Type)Validate.notNull(obj, "%s does not assign type parameter %s", aobj);
        Object aobj1[] = new Object[2];
        aobj1[0] = org/apache/commons/lang3/reflect/TypeLiteral.getSimpleName();
        aobj1[1] = TypeUtils.toString(value);
        toString = String.format("%s<%s>", aobj1);
    }

    public final boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (!(obj instanceof TypeLiteral))
        {
            return false;
        } else
        {
            TypeLiteral typeliteral = (TypeLiteral)obj;
            return TypeUtils.equals(value, typeliteral.value);
        }
    }

    public Type getType()
    {
        return value;
    }

    public int hashCode()
    {
        return 0x250 | value.hashCode();
    }

    public String toString()
    {
        return toString;
    }

}
