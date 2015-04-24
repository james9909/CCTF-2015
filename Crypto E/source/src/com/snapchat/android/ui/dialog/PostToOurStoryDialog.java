// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.dialog;

import android.content.Context;
import com.snapchat.android.model.PostToStory;
import com.snapchat.android.util.LocalizationUtils;

// Referenced classes of package com.snapchat.android.ui.dialog:
//            TwoButtonDialog

public class PostToOurStoryDialog extends TwoButtonDialog
{
    public static interface PostToStoryDialogCallback
    {

        public abstract void a(boolean flag);
    }


    private final PostToStoryDialogCallback a;

    public PostToOurStoryDialog(Context context, PostToStory posttostory, PostToStoryDialogCallback posttostorydialogcallback)
    {
        super(context, null, context.getString(0x7f0c0142), context.getString(0x7f0c003d));
        a = posttostorydialogcallback;
        String s = posttostory.d();
        String s1 = posttostory.h();
        String s2 = posttostory.g();
        String s3 = posttostory.k();
        if (s3 == null)
        {
            s3 = LocalizationUtils.a(0x7f0c0168, new Object[] {
                s
            });
        }
        String s4 = posttostory.l();
        if (s4 == null)
        {
            s4 = LocalizationUtils.a(0x7f0c0167, new Object[] {
                s2, s, s, s1, s, s1
            });
        }
        setTitle(s3);
        setMessage(s4);
    }

    protected void a()
    {
        a.a(false);
    }

    protected void b()
    {
        a.a(true);
    }
}
