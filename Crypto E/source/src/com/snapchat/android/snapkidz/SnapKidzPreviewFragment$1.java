// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.snapkidz;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import com.snapchat.android.ui.dialog.TwoButtonDialog;

// Referenced classes of package com.snapchat.android.snapkidz:
//            SnapKidzPreviewFragment

class a extends TwoButtonDialog
{

    final SnapKidzPreviewFragment a;

    protected void a()
    {
    }

    protected void b()
    {
        SnapKidzPreviewFragment.a(a, true);
        SnapKidzPreviewFragment.a(a);
        a.getActivity().onBackPressed();
    }

    (SnapKidzPreviewFragment snapkidzpreviewfragment, Context context, String s)
    {
        a = snapkidzpreviewfragment;
        super(context, s);
    }
}
