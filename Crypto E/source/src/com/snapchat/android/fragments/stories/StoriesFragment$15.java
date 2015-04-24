// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.content.Context;
import com.snapchat.android.api2.HideSharedStoryTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.ui.dialog.TwoButtonDialog;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

class a extends TwoButtonDialog
{

    final Friend a;
    final StoriesFragment b;

    protected void a()
    {
        (new HideSharedStoryTask(a.a())).g();
        StoriesFragment.a(b, a);
    }

    protected void b()
    {
    }

    (StoriesFragment storiesfragment, Context context, String s, String s1, String s2, Friend friend)
    {
        b = storiesfragment;
        a = friend;
        super(context, s, s1, s2);
    }
}
