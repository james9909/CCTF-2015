// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import net.hockeyapp.android.objects.FeedbackMessage;
import net.hockeyapp.android.views.FeedbackMessageView;

public class MessagesAdapter extends BaseAdapter
{

    private Context a;
    private ArrayList b;
    private SimpleDateFormat c;
    private SimpleDateFormat d;
    private Date e;
    private TextView f;
    private TextView g;
    private TextView h;

    public MessagesAdapter(Context context, ArrayList arraylist)
    {
        a = context;
        b = arraylist;
        c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        d = new SimpleDateFormat("d MMM h:mm a");
    }

    public void a()
    {
        if (b != null)
        {
            b.clear();
        }
    }

    public void a(FeedbackMessage feedbackmessage)
    {
        if (feedbackmessage != null && b != null)
        {
            b.add(feedbackmessage);
        }
    }

    public int getCount()
    {
        return b.size();
    }

    public Object getItem(int i)
    {
        return b.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        FeedbackMessage feedbackmessage = (FeedbackMessage)b.get(i);
        FeedbackMessageView feedbackmessageview;
        int j;
        if (view == null)
        {
            feedbackmessageview = new FeedbackMessageView(a);
        } else
        {
            feedbackmessageview = (FeedbackMessageView)view;
        }
        if (feedbackmessage != null)
        {
            f = (TextView)feedbackmessageview.findViewById(12289);
            g = (TextView)feedbackmessageview.findViewById(12290);
            h = (TextView)feedbackmessageview.findViewById(12291);
            try
            {
                e = c.parse(feedbackmessage.b());
                g.setText(d.format(e));
            }
            catch (ParseException parseexception)
            {
                parseexception.printStackTrace();
            }
            f.setText(feedbackmessage.c());
            h.setText(feedbackmessage.a());
        }
        if (i % 2 == 0)
        {
            j = 0;
        } else
        {
            j = 1;
        }
        feedbackmessageview.setFeedbackMessageViewBgAndTextColor(j);
        return feedbackmessageview;
    }
}
