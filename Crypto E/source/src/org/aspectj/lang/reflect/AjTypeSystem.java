// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.lang.reflect;

import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import org.aspectj.internal.lang.reflect.AjTypeImpl;

// Referenced classes of package org.aspectj.lang.reflect:
//            AjType

public class AjTypeSystem
{

    private static Map a = Collections.synchronizedMap(new WeakHashMap());

    public AjTypeSystem()
    {
    }

    public static AjType a(Class class1)
    {
        WeakReference weakreference = (WeakReference)a.get(class1);
        if (weakreference != null)
        {
            AjType ajtype = (AjType)weakreference.get();
            if (ajtype != null)
            {
                return ajtype;
            } else
            {
                AjTypeImpl ajtypeimpl1 = new AjTypeImpl(class1);
                a.put(class1, new WeakReference(ajtypeimpl1));
                return ajtypeimpl1;
            }
        } else
        {
            AjTypeImpl ajtypeimpl = new AjTypeImpl(class1);
            a.put(class1, new WeakReference(ajtypeimpl));
            return ajtypeimpl;
        }
    }

}
