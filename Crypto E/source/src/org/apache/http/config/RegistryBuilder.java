// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.config;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.config:
//            Registry

public final class RegistryBuilder
{

    private final Map items = new HashMap();

    RegistryBuilder()
    {
    }

    public static RegistryBuilder create()
    {
        return new RegistryBuilder();
    }

    public Registry build()
    {
        return new Registry(items);
    }

    public RegistryBuilder register(String s, Object obj)
    {
        Args.notEmpty(s, "ID");
        Args.notNull(obj, "Item");
        items.put(s.toLowerCase(Locale.US), obj);
        return this;
    }

    public String toString()
    {
        return items.toString();
    }
}
