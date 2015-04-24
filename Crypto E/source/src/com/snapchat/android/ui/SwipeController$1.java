// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;


// Referenced classes of package com.snapchat.android.ui:
//            SwipeController

class a
    implements Runnable
{

    final int a;
    final SwipeController b;

    public void run()
    {
        b.a(a);
    }

    (SwipeController swipecontroller, int i)
    {
        b = swipecontroller;
        a = i;
        super();
    }
}
