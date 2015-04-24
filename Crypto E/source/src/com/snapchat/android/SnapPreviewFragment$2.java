// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.view.gment._cls2
{

    final SnapPreviewFragment a;

    public void onClick(View view)
    {
        ((InputMethodManager)SnapPreviewFragment.a(a, "input_method")).hideSoftInputFromWindow(SnapPreviewFragment.a(a).getApplicationWindowToken(), 0);
        a.getActivity().onBackPressed();
    }

    (SnapPreviewFragment snappreviewfragment)
    {
        a = snappreviewfragment;
        super();
    }
}
