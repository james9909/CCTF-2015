// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import com.snapchat.android.ui.dialog.TwoButtonDialog;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class log extends TwoButtonDialog
{

    final SnapPreviewFragment a;

    protected void a()
    {
    }

    protected void b()
    {
        SnapPreviewFragment.a(a, true);
        FragmentActivity fragmentactivity = a.getActivity();
        if (fragmentactivity != null)
        {
            fragmentactivity.onBackPressed();
        }
    }

    log(SnapPreviewFragment snappreviewfragment, Context context, String s)
    {
        a = snappreviewfragment;
        super(context, s);
    }
}
