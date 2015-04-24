// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.sdk:
//            el

public class cz
{

    private static final String a = com/flurry/sdk/cz.getSimpleName();

    public cz()
    {
    }

    public Map a(String s)
    {
        el.a(3, a, "Parsing referrer map");
        if (s == null)
        {
            return Collections.emptyMap();
        }
        HashMap hashmap = new HashMap();
        String as[] = s.split("&");
        int i = as.length;
        int j = 0;
        while (j < i) 
        {
            String as1[] = as[j].split("=");
            if (as1.length != 2)
            {
                el.a(5, a, (new StringBuilder()).append("Invalid referrer Element: ").append(as[j]).append(" in referrer tag ").append(s).toString());
            } else
            {
                String s1 = URLDecoder.decode(as1[0]);
                String s2 = URLDecoder.decode(as1[1]);
                if (hashmap.get(s1) == null)
                {
                    hashmap.put(s1, new ArrayList());
                }
                ((List)hashmap.get(s1)).add(s2);
            }
            j++;
        }
        java.util.Map.Entry entry;
        for (Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); el.a(3, a, (new StringBuilder()).append("entry: ").append((String)entry.getKey()).append("=").append(entry.getValue()).toString()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        StringBuilder stringbuilder = new StringBuilder();
        if (hashmap.get("utm_source") == null)
        {
            stringbuilder.append("Campaign Source is missing.\n");
        }
        if (hashmap.get("utm_medium") == null)
        {
            stringbuilder.append("Campaign Medium is missing.\n");
        }
        if (hashmap.get("utm_campaign") == null)
        {
            stringbuilder.append("Campaign Name is missing.\n");
        }
        if (stringbuilder.length() > 0)
        {
            el.a(5, a, (new StringBuilder()).append("Detected missing referrer keys : ").append(stringbuilder.toString()).toString());
        }
        return hashmap;
    }

}
