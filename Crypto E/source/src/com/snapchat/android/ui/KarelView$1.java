// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.graphics.Point;
import java.util.Random;
import java.util.Set;

// Referenced classes of package com.snapchat.android.ui:
//            KarelView

class a
    implements Runnable
{

    final KarelView a;

    public void run()
    {
        if (KarelView.a(a).nextInt(4) == 0)
        {
            Point point = new Point();
            point.x = KarelView.a(KarelView.b(a), KarelView.c(a));
            point.y = KarelView.a(KarelView.d(a), 8);
            if (KarelView.e(a).add(point))
            {
                a.invalidate();
                return;
            }
        }
        if (KarelView.a(a).nextInt(3) != 0) goto _L2; else goto _L1
_L1:
        KarelView.f(a);
_L4:
        a.invalidate();
        return;
_L2:
        int i = KarelView.a(KarelView.g(a), 4);
        switch (i)
        {
        default:
            throw new RuntimeException((new StringBuilder()).append("Something is rotten in the state of Denmark: ").append(i).toString());

        case 0: // '\0'
            KarelView.h(a);
            break;

        case 1: // '\001'
            KarelView.i(a);
            break;

        case 2: // '\002'
            KarelView.j(a);
            break;

        case 3: // '\003'
            KarelView.k(a);
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    (KarelView karelview)
    {
        a = karelview;
        super();
    }
}
