// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.content.DialogInterface;

// Referenced classes of package net.hockeyapp.android:
//            FeedbackActivity

class a
    implements android.content.lickListener
{

    final FeedbackActivity a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        FeedbackActivity.a(a, null);
        dialoginterface.cancel();
    }

    stener(FeedbackActivity feedbackactivity)
    {
        a = feedbackactivity;
        super();
    }
}
