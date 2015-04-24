// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.view.View;
import android.widget.CheckBox;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewPostToStoryAdapter

class a
    implements android.view.apter._cls2
{

    final CheckBox a;
    final SnapPreviewPostToStoryAdapter b;

    public void onClick(View view)
    {
        CheckBox checkbox = a;
        boolean flag;
        if (!a.isChecked())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        checkbox.setChecked(flag);
    }

    (SnapPreviewPostToStoryAdapter snappreviewposttostoryadapter, CheckBox checkbox)
    {
        b = snappreviewposttostoryadapter;
        a = checkbox;
        super();
    }
}
