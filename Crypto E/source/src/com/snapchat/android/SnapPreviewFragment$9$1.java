// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.DialogInterface;
import android.view.View;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.content.istener
{

    final a a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        SnapPreviewFragment.a(a.a, i + 1);
        dialoginterface.dismiss();
    }

    er(er er)
    {
        a = er;
        super();
    }

    // Unreferenced inner class com/snapchat/android/SnapPreviewFragment$9

/* anonymous class */
    class SnapPreviewFragment._cls9
        implements android.view.View.OnClickListener
    {

        final SnapPreviewFragment a;

        public void onClick(View view)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getActivity());
            builder.setSingleChoiceItems(0x7f07000e, -1 + SnapPreviewFragment.k(a), new SnapPreviewFragment._cls9._cls1(this)).setInverseBackgroundForced(true);
            builder.show();
        }

            
            {
                a = snappreviewfragment;
                super();
            }
    }

}
