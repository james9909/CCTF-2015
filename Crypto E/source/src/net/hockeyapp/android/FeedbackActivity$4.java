// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.widget.ListView;
import android.widget.TextView;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import net.hockeyapp.android.adapters.MessagesAdapter;
import net.hockeyapp.android.objects.Feedback;
import net.hockeyapp.android.objects.FeedbackMessage;
import net.hockeyapp.android.objects.FeedbackResponse;

// Referenced classes of package net.hockeyapp.android:
//            FeedbackActivity

class a
    implements Runnable
{

    final FeedbackResponse a;
    final FeedbackActivity b;

    public void run()
    {
        b.a(true);
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        SimpleDateFormat simpledateformat1 = new SimpleDateFormat("d MMM h:mm a");
        if (a != null && a.b() != null && a.b().a() != null && a.b().a().size() > 0)
        {
            FeedbackActivity.a(b, a.b().a());
            Collections.reverse(FeedbackActivity.d(b));
            try
            {
                java.util.Date date = simpledateformat.parse(((FeedbackMessage)FeedbackActivity.d(b).get(0)).b());
                TextView textview = FeedbackActivity.e(b);
                Object aobj[] = new Object[1];
                aobj[0] = simpledateformat1.format(date);
                textview.setText(String.format("Last Updated: %s", aobj));
            }
            catch (ParseException parseexception)
            {
                parseexception.printStackTrace();
            }
            if (FeedbackActivity.f(b) == null)
            {
                FeedbackActivity.a(b, new MessagesAdapter(FeedbackActivity.c(b), FeedbackActivity.d(b)));
            } else
            {
                FeedbackActivity.f(b).a();
                FeedbackMessage feedbackmessage;
                for (Iterator iterator = FeedbackActivity.d(b).iterator(); iterator.hasNext(); FeedbackActivity.f(b).a(feedbackmessage))
                {
                    feedbackmessage = (FeedbackMessage)iterator.next();
                }

                FeedbackActivity.f(b).notifyDataSetChanged();
            }
            FeedbackActivity.g(b).setAdapter(FeedbackActivity.f(b));
        }
    }

    ponse(FeedbackActivity feedbackactivity, FeedbackResponse feedbackresponse)
    {
        b = feedbackactivity;
        a = feedbackresponse;
        super();
    }
}
