// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.facebook.rebound:
//            SpringConfig

public class SpringConfigRegistry
{

    private static SpringConfigRegistry a;
    private final Map b = new HashMap();

    SpringConfigRegistry(boolean flag)
    {
        if (flag)
        {
            a(SpringConfig.c, "default config");
        }
    }

    public static SpringConfigRegistry a()
    {
        if (a == null)
        {
            a = new SpringConfigRegistry(true);
        }
        return a;
    }

    public boolean a(SpringConfig springconfig, String s)
    {
        if (springconfig == null)
        {
            throw new IllegalArgumentException("springConfig is required");
        }
        if (s == null)
        {
            throw new IllegalArgumentException("configName is required");
        }
        if (b.containsKey(springconfig))
        {
            return false;
        } else
        {
            b.put(springconfig, s);
            return true;
        }
    }

    public Map b()
    {
        return Collections.unmodifiableMap(b);
    }
}
