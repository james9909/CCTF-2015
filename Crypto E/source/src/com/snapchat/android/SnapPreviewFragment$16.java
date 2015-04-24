// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.DialogInterface;
import android.view.View;
import android.widget.CheckBox;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.UserPrefs;
import java.util.List;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.content.Listener
{

    final View a;
    final SnapPreviewFragment b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        boolean flag;
        if (!((CheckBox)a.findViewById(0x7f0a0250)).isChecked())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        UserPrefs.d(flag);
        if (StoryLibrary.a().d().size() > 1)
        {
            SnapPreviewFragment.m(b);
            return;
        } else
        {
            SnapPreviewFragment.n(b);
            return;
        }
    }

    ner(SnapPreviewFragment snappreviewfragment, View view)
    {
        b = snappreviewfragment;
        a = view;
        super();
    }
}
