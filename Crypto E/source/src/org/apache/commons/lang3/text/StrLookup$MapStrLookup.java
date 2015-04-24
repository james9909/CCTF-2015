// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text;

import java.util.Map;

// Referenced classes of package org.apache.commons.lang3.text:
//            StrLookup

static class map extends StrLookup
{

    private final Map map;

    public String lookup(String s)
    {
        Object obj;
        if (map != null)
        {
            if ((obj = map.get(s)) != null)
            {
                return obj.toString();
            }
        }
        return null;
    }

    (Map map1)
    {
        map = map1;
    }
}
