// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;


// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class <init>
    implements Runnable
{

    final SnapPreviewFragment a;
    private boolean b;

    public void a()
    {
        b = true;
    }

    public void run()
    {
        if (!b)
        {
            SnapPreviewFragment.u(a);
        }
    }

    private A(SnapPreviewFragment snappreviewfragment)
    {
        a = snappreviewfragment;
        super();
        b = false;
    }

    b(SnapPreviewFragment snappreviewfragment, b b1)
    {
        this(snappreviewfragment);
    }
}
