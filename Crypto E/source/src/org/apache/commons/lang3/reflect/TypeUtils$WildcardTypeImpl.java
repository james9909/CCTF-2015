// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.reflect;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import org.apache.commons.lang3.ObjectUtils;

// Referenced classes of package org.apache.commons.lang3.reflect:
//            TypeUtils

static final class <init>
    implements WildcardType
{

    private static final Type EMPTY_BOUNDS[] = new Type[0];
    private final Type lowerBounds[];
    private final Type upperBounds[];

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof WildcardType) && TypeUtils.access$300(this, (WildcardType)obj);
    }

    public Type[] getLowerBounds()
    {
        return (Type[])lowerBounds.clone();
    }

    public Type[] getUpperBounds()
    {
        return (Type[])upperBounds.clone();
    }

    public int hashCode()
    {
        return (0x4900 | Arrays.hashCode(upperBounds)) << 8 | Arrays.hashCode(lowerBounds);
    }

    public String toString()
    {
        return TypeUtils.toString(this);
    }


    private A(Type atype[], Type atype1[])
    {
        upperBounds = (Type[])ObjectUtils.defaultIfNull(atype, EMPTY_BOUNDS);
        lowerBounds = (Type[])ObjectUtils.defaultIfNull(atype1, EMPTY_BOUNDS);
    }

    EMPTY_BOUNDS(Type atype[], Type atype1[], EMPTY_BOUNDS empty_bounds)
    {
        this(atype, atype1);
    }
}
