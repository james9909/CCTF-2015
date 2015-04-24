// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

// Referenced classes of package dagger.internal:
//            Loader, ModuleAdapter

public final class Modules
{

    private Modules()
    {
    }

    public static Map a(Loader loader, Object aobj[])
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap(aobj.length);
        int i = 0;
        while (i < aobj.length) 
        {
            if (aobj[i] instanceof Class)
            {
                ModuleAdapter moduleadapter1 = loader.a((Class)aobj[i]);
                linkedhashmap.put(moduleadapter1, moduleadapter1.b());
            } else
            {
                linkedhashmap.put(loader.a(aobj[i].getClass()), aobj[i]);
            }
            i++;
        }
        LinkedHashMap linkedhashmap1 = new LinkedHashMap(linkedhashmap);
        LinkedHashMap linkedhashmap2 = new LinkedHashMap();
        for (Iterator iterator = linkedhashmap.keySet().iterator(); iterator.hasNext(); a(loader, (ModuleAdapter)iterator.next(), ((Map) (linkedhashmap2)))) { }
        Iterator iterator1 = linkedhashmap2.values().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            ModuleAdapter moduleadapter = (ModuleAdapter)iterator1.next();
            if (!linkedhashmap1.containsKey(moduleadapter))
            {
                linkedhashmap1.put(moduleadapter, moduleadapter.b());
            }
        } while (true);
        return linkedhashmap1;
    }

    private static void a(Loader loader, ModuleAdapter moduleadapter, Map map)
    {
        Class aclass[] = moduleadapter.e;
        int i = aclass.length;
        for (int j = 0; j < i; j++)
        {
            Class class1 = aclass[j];
            if (!map.containsKey(class1))
            {
                ModuleAdapter moduleadapter1 = loader.a(class1);
                map.put(class1, moduleadapter1);
                a(loader, moduleadapter1, map);
            }
        }

    }
}
