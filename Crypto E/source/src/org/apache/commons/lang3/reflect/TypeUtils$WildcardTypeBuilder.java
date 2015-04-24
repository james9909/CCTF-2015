// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.reflect;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import org.apache.commons.lang3.builder.Builder;

// Referenced classes of package org.apache.commons.lang3.reflect:
//            TypeUtils

public static class <init>
    implements Builder
{

    private Type lowerBounds[];
    private Type upperBounds[];

    public volatile Object build()
    {
        return build();
    }

    public WildcardType build()
    {
        return new it>(upperBounds, lowerBounds, null);
    }

    public transient lowerBounds withLowerBounds(Type atype[])
    {
        lowerBounds = atype;
        return this;
    }

    public transient lowerBounds withUpperBounds(Type atype[])
    {
        upperBounds = atype;
        return this;
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
