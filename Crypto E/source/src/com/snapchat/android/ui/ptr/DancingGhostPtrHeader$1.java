// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.ptr;

import android.graphics.drawable.AnimationDrawable;

// Referenced classes of package com.snapchat.android.ui.ptr:
//            DancingGhostPtrHeader

class a
    implements Runnable
{

    final int a;
    final DancingGhostPtrHeader b;

    public void run()
    {
        if (!DancingGhostPtrHeader.a(b).isRunning())
        {
            return;
        }
        switch (a)
        {
        default:
            return;

        case 2130837641: 
            b.a(0x7f0200fc);
            return;

        case 2130838013: 
            b.a(0x7f0201b1);
            return;

        case 2130837937: 
            b.a(0x7f020151);
            return;

        case 2130837841: 
            b.a(0x7f020089);
            return;

        case 2130837756: 
            b.a(0x7f0201fd);
            return;
        }
    }

    _cls9(DancingGhostPtrHeader dancingghostptrheader, int i)
    {
        b = dancingghostptrheader;
        a = i;
        super();
    }
}
