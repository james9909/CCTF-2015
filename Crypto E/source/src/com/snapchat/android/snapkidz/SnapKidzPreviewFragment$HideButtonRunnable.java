// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.snapkidz;


// Referenced classes of package com.snapchat.android.snapkidz:
//            SnapKidzPreviewFragment

class <init>
    implements Runnable
{

    final SnapKidzPreviewFragment a;
    private boolean b;

    public void a()
    {
        b = true;
    }

    public void run()
    {
        if (!b)
        {
            SnapKidzPreviewFragment.h(a);
        }
    }

    private (SnapKidzPreviewFragment snapkidzpreviewfragment)
    {
        a = snapkidzpreviewfragment;
        super();
        b = false;
    }

    b(SnapKidzPreviewFragment snapkidzpreviewfragment, b b1)
    {
        this(snapkidzpreviewfragment);
    }
}
