// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import com.snapchat.android.database.HasSeenPostToOurStoryDialogLog;
import com.snapchat.android.model.PostToStory;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToFragment

class a
    implements com.snapchat.android.ui.dialog.log.PostToStoryDialogCallback
{

    final PostToStory a;
    final SendToFragment b;

    public void a(boolean flag)
    {
        if (flag)
        {
            b.a.a(a.c());
        }
    }

    ogLog(SendToFragment sendtofragment, PostToStory posttostory)
    {
        b = sendtofragment;
        a = posttostory;
        super();
    }
}
