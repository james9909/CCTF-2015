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

class a
    implements com.snapchat.android.ui.dialog.alogCallback
{

    final a a;

    public void a(boolean flag)
    {
        a.a.setChecked(flag);
        if (flag)
        {
            a.a.a.b(a.a.c());
        }
    }

    ToStoryCheckedCallback(ToStoryCheckedCallback tostorycheckedcallback)
    {
        a = tostorycheckedcallback;
        super();
    }

    // Unreferenced inner class com/snapchat/android/SnapPreviewPostToStoryAdapter$1

/* anonymous class */
    class SnapPreviewPostToStoryAdapter._cls1
        implements android.widget.CompoundButton.OnCheckedChangeListener
    {

        final PostToStory a;
        final CheckBox b;
        final View c;
        final SnapPreviewPostToStoryAdapter d;

        public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            if (flag && !(a instanceof MyPostToStory) && !d.a.a(a.c()))
            {
                (new PostToOurStoryDialog(SnapPreviewPostToStoryAdapter.a(d), a, new SnapPreviewPostToStoryAdapter._cls1._cls1(this))).show();
            }
            SnapPreviewPostToStoryAdapter.b(d).a(a, flag);
            SnapPreviewPostToStoryAdapter.a(d, c, a);
        }

            
            {
                d = snappreviewposttostoryadapter;
                a = posttostory;
                b = checkbox;
                c = view;
                super();
            }
    }

}
