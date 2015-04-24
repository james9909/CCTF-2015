// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.snapchat.android.database.HasSeenPostToOurStoryDialogLog;
import com.snapchat.android.model.MyPostToStory;
import com.snapchat.android.model.PostToStory;
import com.snapchat.android.ui.dialog.PostToOurStoryDialog;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewPostToStoryAdapter

class c
    implements android.widget.stener
{

    final PostToStory a;
    final CheckBox b;
    final View c;
    final SnapPreviewPostToStoryAdapter d;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (flag && !(a instanceof MyPostToStory) && !d.a.a(a.c()))
        {
            (new PostToOurStoryDialog(SnapPreviewPostToStoryAdapter.a(d), a, new com.snapchat.android.ui.dialog.PostToOurStoryDialog.PostToStoryDialogCallback() {

                final SnapPreviewPostToStoryAdapter._cls1 a;

                public void a(boolean flag1)
                {
                    a.b.setChecked(flag1);
                    if (flag1)
                    {
                        a.d.a.b(a.a.c());
                    }
                }

            
            {
                a = SnapPreviewPostToStoryAdapter._cls1.this;
                super();
            }
            })).show();
        }
        SnapPreviewPostToStoryAdapter.b(d).a(a, flag);
        SnapPreviewPostToStoryAdapter.a(d, c, a);
    }

    _cls1.a(SnapPreviewPostToStoryAdapter snappreviewposttostoryadapter, PostToStory posttostory, CheckBox checkbox, View view)
    {
        d = snappreviewposttostoryadapter;
        a = posttostory;
        b = checkbox;
        c = view;
        super();
    }
}
