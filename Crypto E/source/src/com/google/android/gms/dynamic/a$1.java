// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.dynamic;

import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.google.android.gms.dynamic:
//            f, a, LifecycleDelegate

class aaO
    implements f
{

    final a aaO;

    public void a(LifecycleDelegate lifecycledelegate)
    {
        com.google.android.gms.dynamic.a.a(aaO, lifecycledelegate);
        for (Iterator iterator = com.google.android.gms.dynamic.a.a(aaO).iterator(); iterator.hasNext(); ((aaO)iterator.next()).b(com.google.android.gms.dynamic.a.b(aaO))) { }
        com.google.android.gms.dynamic.a.a(aaO).clear();
        com.google.android.gms.dynamic.a.a(aaO, null);
    }

    cycleDelegate(a a1)
    {
        aaO = a1;
        super();
    }
}
