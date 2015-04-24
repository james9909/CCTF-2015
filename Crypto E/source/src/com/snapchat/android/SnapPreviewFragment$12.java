// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.widget.CompoundButton;
import com.snapchat.android.ui.SnapEditorView;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.widget.dChangeListener
{

    final SnapPreviewFragment a;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        SnapEditorView snapeditorview = SnapPreviewFragment.b(a);
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        snapeditorview.a(flag1);
    }

    eListener(SnapPreviewFragment snappreviewfragment)
    {
        a = snappreviewfragment;
        super();
    }
}
