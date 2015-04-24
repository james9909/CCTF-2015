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

class a
    implements Runnable
{

    final Dialog a;

    public void run()
    {
        a.a.showDialog(0);
    }

    nse(nse nse)
    {
        a = nse;
        super();
    }

    // Unreferenced inner class net/hockeyapp/android/FeedbackActivity$3

/* anonymous class */
    class FeedbackActivity._cls3 extends Handler
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
                a.runOnUiThread(new FeedbackActivity._cls3._cls1(this));
            }
            a.b(true);
            return;
_L2:
            flag = false;
            if (true) goto _L5; else goto _L4
_L4:
        }

            
            {
                a = feedbackactivity;
                super();
            }
    }

}
