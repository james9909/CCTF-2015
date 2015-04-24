// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.reflect;

import java.lang.reflect.Type;

// Referenced classes of package org.apache.commons.lang3.reflect:
//            Typed, TypeUtils

static final class val.type
    implements Typed
{

    final Type val$type;

    public Type getType()
    {
        return val$type;
    }

    (Type type1)
    {
        val$type = type1;
        super();
    }
}
