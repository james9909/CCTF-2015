// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr;

import android.text.TextUtils;

// Referenced classes of package in.srain.cube.views.ptr:
//            PtrClassicDefaultHeader

class <init>
    implements Runnable
{

    final PtrClassicDefaultHeader a;
    private boolean b;

    private void a()
    {
        if (TextUtils.isEmpty(PtrClassicDefaultHeader.a(a)))
        {
            return;
        } else
        {
            b = true;
            run();
            return;
        }
    }

    static void a(run run1)
    {
        run1.a();
    }

    private void b()
    {
        b = false;
        a.removeCallbacks(this);
    }

    static void b(a a1)
    {
        a1.b();
    }

    public void run()
    {
        PtrClassicDefaultHeader.b(a);
        if (b)
        {
            a.postDelayed(this, 1000L);
        }
    }

    private (PtrClassicDefaultHeader ptrclassicdefaultheader)
    {
        a = ptrclassicdefaultheader;
        super();
        b = false;
    }

    b(PtrClassicDefaultHeader ptrclassicdefaultheader, b b1)
    {
        this(ptrclassicdefaultheader);
    }
}
