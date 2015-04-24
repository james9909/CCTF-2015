// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import net.hockeyapp.android.objects.ErrorObject;
import net.hockeyapp.android.objects.FeedbackResponse;
import net.hockeyapp.android.utils.PrefsUtil;

// Referenced classes of package net.hockeyapp.android:
//            FeedbackActivity

class a extends Handler
{

    final FeedbackActivity a;

    public void handleMessage(Message message)
    {
        FeedbackActivity.a(a, new ErrorObject());
        if (message == null || message.getData() == null) goto _L2; else goto _L1
_L1:
        FeedbackResponse feedbackresponse = (FeedbackResponse)message.getData().getSerializable("parse_feedback_response");
        if (feedbackresponse == null) goto _L2; else goto _L3
_L3:
        boolean flag;
        if (feedbackresponse.a().equalsIgnoreCase("success"))
        {
            if (feedbackresponse.c() != null)
            {
                PrefsUtil.a().a(FeedbackActivity.c(a), feedbackresponse.c());
                FeedbackActivity.a(a, feedbackresponse);
                FeedbackActivity.a(a, false);
                flag = true;
            } else
            {
                flag = true;
            }
        } else
        {
            flag = false;
        }
_L5:
        if (!flag)
        {
            a.runOnUiThread(new Runnable() {

                final FeedbackActivity._cls3 a;

                public void run()
                {
                    a.a.showDialog(0);
                }

            
            {
                a = FeedbackActivity._cls3.this;
                super();
            }
            });
        }
        a.b(true);
        return;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
    }

    _cls1.a(FeedbackActivity feedbackactivity)
    {
        a = feedbackactivity;
        super();
    }
}
