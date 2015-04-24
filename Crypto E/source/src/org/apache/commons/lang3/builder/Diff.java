// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.builder;

import java.lang.reflect.Type;
import java.util.Map;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.reflect.TypeUtils;
import org.apache.commons.lang3.tuple.Pair;

public abstract class Diff extends Pair
{

    private static final long serialVersionUID = 1L;
    private final String fieldName;
    private final Type type = (Type)ObjectUtils.defaultIfNull(TypeUtils.getTypeArguments(getClass(), org/apache/commons/lang3/builder/Diff).get(org/apache/commons/lang3/builder/Diff.getTypeParameters()[0]), java/lang/Object);

    protected Diff(String s)
    {
        fieldName = s;
    }

    public final String getFieldName()
    {
        return fieldName;
    }

    public final Type getType()
    {
        return type;
    }

    public final Object setValue(Object obj)
    {
        throw new UnsupportedOperationException("Cannot alter Diff object.");
    }

    public final String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = fieldName;
        aobj[1] = getLeft();
        aobj[2] = getRight();
        return String.format("[%s: %s, %s]", aobj);
    }
}
