// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import net.hockeyapp.android.objects.ErrorObject;

// Referenced classes of package net.hockeyapp.android:
//            FeedbackActivity

class a extends Handler
{

    final FeedbackActivity a;

    public void handleMessage(Message message)
    {
        boolean flag = false;
        FeedbackActivity.a(a, new ErrorObject());
        if (message != null && message.getData() != null)
        {
            Bundle bundle = message.getData();
            String s = bundle.getString("feedback_response");
            String s1 = bundle.getString("feedback_status");
            String s2 = bundle.getString("request_type");
            if (s2.equals("send") && (s == null || Integer.parseInt(s1) != 201))
            {
                FeedbackActivity.a(a).a("Message couldn't be posted. Please check your input values and your connection, then try again.");
            } else
            if (s2.equals("fetch") && s1 != null && (Integer.parseInt(s1) == 404 || Integer.parseInt(s1) == 422))
            {
                FeedbackActivity.b(a);
                flag = true;
            } else
            if (s != null)
            {
                FeedbackActivity.a(a, s);
                flag = true;
            } else
            {
                FeedbackActivity.a(a).a("No response from server. Please check your connection, then try again.");
                flag = false;
            }
        } else
        {
            FeedbackActivity.a(a).a("Message couldn't be posted. Please check your input values and your connection, then try again.");
            flag = false;
        }
        if (!flag)
        {
            a.runOnUiThread(new Runnable() {

                final FeedbackActivity._cls2 a;

                public void run()
                {
                    a.a.b(true);
                    a.a.showDialog(0);
                }

            
            {
                a = FeedbackActivity._cls2.this;
                super();
            }
            });
        }
    }

    _cls1.a(FeedbackActivity feedbackactivity)
    {
        a = feedbackactivity;
        super();
    }
}
