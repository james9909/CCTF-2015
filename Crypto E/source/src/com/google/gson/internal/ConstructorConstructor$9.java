// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal;

import java.util.TreeMap;

// Referenced classes of package com.google.gson.internal:
//            ObjectConstructor, ConstructorConstructor

class a
    implements ObjectConstructor
{

    final ConstructorConstructor a;

    public Object construct()
    {
        return new TreeMap();
    }

    (ConstructorConstructor constructorconstructor)
    {
        a = constructorconstructor;
        super();
    }
}
