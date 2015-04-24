// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.model:
//            ReceivedSnap

public class BroadcastSnap extends ReceivedSnap
{

    private String mActionText;
    private String mActionUrl;
    private boolean mHideTimer;
    private String mMediaUrl;

    BroadcastSnap()
    {
    }

    public BroadcastSnap(String s, long l, long l1, int j, boolean flag, 
            Snap.ClientSnapStatus clientsnapstatus, String s1, double d, String s2, long l2, 
            double d1, String s3, String s4, String s5, boolean flag1, String s6)
    {
        super(s, l, l1, l, j, flag, clientsnapstatus, s1, d, s2, false, l2, d1, s6);
        SnapchatApplication.e().a(this);
        mMediaUrl = s3;
        mActionText = s4;
        mActionUrl = s5;
        mHideTimer = flag1;
    }

    protected int a(int j)
    {
        return j;
    }

    public String a()
    {
        if (F() && !TextUtils.isEmpty(mActionText))
        {
            return mActionText;
        } else
        {
            return super.a();
        }
    }

    public String b()
    {
        if (F() && !TextUtils.isEmpty(mActionText))
        {
            return mActionText.toUpperCase(Locale.getDefault());
        } else
        {
            return super.b();
        }
    }

    public boolean c()
    {
        if (F() && !TextUtils.isEmpty(mActionText))
        {
            return true;
        } else
        {
            return super.c();
        }
    }

    public String e()
    {
        return mMediaUrl;
    }

    public String f()
    {
        return mActionUrl;
    }

    public String g()
    {
        return mActionText;
    }

    public boolean h()
    {
        return mHideTimer;
    }

    public boolean i()
    {
        return super.i() || F() && !TextUtils.isEmpty(mActionText);
    }

    public void u_()
    {
        r();
    }
}
