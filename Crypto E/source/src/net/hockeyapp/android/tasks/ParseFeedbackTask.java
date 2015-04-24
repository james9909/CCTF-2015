// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.tasks;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import net.hockeyapp.android.objects.FeedbackResponse;
import net.hockeyapp.android.utils.FeedbackParser;

public class ParseFeedbackTask extends AsyncTask
{

    private Context a;
    private String b;
    private Handler c;

    public ParseFeedbackTask(Context context, String s, Handler handler)
    {
        a = context;
        b = s;
        c = handler;
    }

    protected transient FeedbackResponse a(Void avoid[])
    {
        if (a != null && b != null)
        {
            return FeedbackParser.a().a(b);
        } else
        {
            return null;
        }
    }

    protected void a(FeedbackResponse feedbackresponse)
    {
        if (feedbackresponse != null && c != null)
        {
            Message message = new Message();
            Bundle bundle = new Bundle();
            bundle.putSerializable("parse_feedback_response", feedbackresponse);
            message.setData(bundle);
            c.sendMessage(message);
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((FeedbackResponse)obj);
    }
}
