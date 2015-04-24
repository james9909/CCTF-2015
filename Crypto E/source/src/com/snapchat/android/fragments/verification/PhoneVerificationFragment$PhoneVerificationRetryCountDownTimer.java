// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.verification;

import android.os.Handler;
import com.snapchat.android.util.system.time.BlockingCountDownTimer;

// Referenced classes of package com.snapchat.android.fragments.verification:
//            PhoneVerificationFragment

class a extends BlockingCountDownTimer
{

    final PhoneVerificationFragment a;

    public void a()
    {
        if (!a.isAdded())
        {
            return;
        } else
        {
            PhoneVerificationFragment.k(a);
            a.q();
            return;
        }
    }

    public void b()
    {
        if (!a.isAdded())
        {
            return;
        } else
        {
            PhoneVerificationFragment.a(a, null);
            a.q();
            return;
        }
    }

    public (PhoneVerificationFragment phoneverificationfragment, int i, long l, Handler handler)
    {
        a = phoneverificationfragment;
        super(i, l, handler);
        PhoneVerificationFragment.a(phoneverificationfragment, i);
        phoneverificationfragment.q();
    }
}
