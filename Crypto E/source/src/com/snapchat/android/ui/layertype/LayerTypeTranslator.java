// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.layertype;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.android.ui.layertype:
//            LayerType

public class LayerTypeTranslator
{

    protected static final LayerType a;
    private static final Map b;

    public LayerTypeTranslator()
    {
    }

    public static LayerType a(int i)
    {
        LayerType layertype = (LayerType)b.get(Integer.valueOf(i));
        if (layertype == null)
        {
            layertype = a;
        }
        return layertype;
    }

    static 
    {
        a = LayerType.b;
        b = new HashMap(LayerType.values().length);
        b.put(Integer.valueOf(0), LayerType.a);
        b.put(Integer.valueOf(2), LayerType.b);
        b.put(Integer.valueOf(1), LayerType.c);
    }
}
