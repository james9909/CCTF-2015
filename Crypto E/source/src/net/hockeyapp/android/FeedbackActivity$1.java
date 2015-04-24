// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import net.hockeyapp.android.utils.PrefsUtil;

// Referenced classes of package net.hockeyapp.android:
//            FeedbackActivity

class a
    implements Runnable
{

    final FeedbackActivity a;

    public void run()
    {
        PrefsUtil.a().a(a, null);
        a.a(false);
    }

    (FeedbackActivity feedbackactivity)
    {
        a = feedbackactivity;
        super();
    }
}
