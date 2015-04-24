// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.snapkidz;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;

// Referenced classes of package com.snapchat.android.snapkidz:
//            SnapKidzPreviewFragment

class a
    implements android.view.reviewFragment._cls2
{

    final SnapKidzPreviewFragment a;

    public void onClick(View view)
    {
        ((InputMethodManager)SnapKidzPreviewFragment.a(a, "input_method")).hideSoftInputFromWindow(SnapKidzPreviewFragment.b(a).getApplicationWindowToken(), 0);
        SnapKidzPreviewFragment.a(a);
        a.getActivity().onBackPressed();
    }

    (SnapKidzPreviewFragment snapkidzpreviewfragment)
    {
        a = snapkidzpreviewfragment;
        super();
    }
}
