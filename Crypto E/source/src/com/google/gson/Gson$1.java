// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            JsonDeserializationContext, Gson, JsonElement

class 
    implements JsonDeserializationContext
{

    final Gson a;

    public Object deserialize(JsonElement jsonelement, Type type)
    {
        return a.fromJson(jsonelement, type);
    }

    ment(Gson gson)
    {
        a = gson;
        super();
    }
}
