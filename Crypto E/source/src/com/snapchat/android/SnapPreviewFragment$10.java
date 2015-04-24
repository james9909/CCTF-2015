// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.app.AlertDialog;
import android.view.View;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.UserPrefs;
import java.util.List;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.view.ment._cls10
{

    final SnapPreviewFragment a;

    public void onClick(View view)
    {
        if (UserPrefs.y())
        {
            SnapPreviewFragment.l(a).show();
            return;
        }
        if (StoryLibrary.a().d().size() > 1)
        {
            SnapPreviewFragment.m(a);
            return;
        } else
        {
            SnapPreviewFragment.n(a);
            return;
        }
    }

    (SnapPreviewFragment snappreviewfragment)
    {
        a = snappreviewfragment;
        super();
    }
}
