// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.DialogInterface;
import android.view.View;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.view.gment._cls9
{

    final SnapPreviewFragment a;

    public void onClick(View view)
    {
        android.app.ClickListener clicklistener = new android.app.nit>(a.getActivity());
        clicklistener.tSingleChoiceItems(0x7f07000e, -1 + SnapPreviewFragment.k(a), new android.content.DialogInterface.OnClickListener() {

            final SnapPreviewFragment._cls9 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                SnapPreviewFragment.a(a.a, i + 1);
                dialoginterface.dismiss();
            }

            
            {
                a = SnapPreviewFragment._cls9.this;
                super();
            }
        }).tInverseBackgroundForced(true);
        clicklistener.ow();
    }

    _cls1.a(SnapPreviewFragment snappreviewfragment)
    {
        a = snappreviewfragment;
        super();
    }
}
