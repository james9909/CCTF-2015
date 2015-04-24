// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import net.hockeyapp.android.adapters.MessagesAdapter;
import net.hockeyapp.android.objects.ErrorObject;
import net.hockeyapp.android.objects.Feedback;
import net.hockeyapp.android.objects.FeedbackMessage;
import net.hockeyapp.android.objects.FeedbackResponse;
import net.hockeyapp.android.tasks.ParseFeedbackTask;
import net.hockeyapp.android.tasks.SendFeedbackTask;
import net.hockeyapp.android.utils.PrefsUtil;
import net.hockeyapp.android.views.FeedbackView;

// Referenced classes of package net.hockeyapp.android:
//            FeedbackActivityInterface

public class FeedbackActivity extends Activity
    implements android.view.View.OnClickListener, FeedbackActivityInterface
{

    private final int a = 0;
    private Context b;
    private TextView c;
    private EditText d;
    private EditText e;
    private EditText f;
    private EditText g;
    private Button h;
    private Button i;
    private Button j;
    private ScrollView k;
    private LinearLayout l;
    private ListView m;
    private SendFeedbackTask n;
    private Handler o;
    private ParseFeedbackTask p;
    private Handler q;
    private String r;
    private ErrorObject s;
    private MessagesAdapter t;
    private ArrayList u;
    private boolean v;
    private String w;

    public FeedbackActivity()
    {
    }

    static ArrayList a(FeedbackActivity feedbackactivity, ArrayList arraylist)
    {
        feedbackactivity.u = arraylist;
        return arraylist;
    }

    static MessagesAdapter a(FeedbackActivity feedbackactivity, MessagesAdapter messagesadapter)
    {
        feedbackactivity.t = messagesadapter;
        return messagesadapter;
    }

    static ErrorObject a(FeedbackActivity feedbackactivity)
    {
        return feedbackactivity.s;
    }

    static ErrorObject a(FeedbackActivity feedbackactivity, ErrorObject errorobject)
    {
        feedbackactivity.s = errorobject;
        return errorobject;
    }

    private void a(String s1)
    {
        b(s1);
        p.execute(new Void[0]);
    }

    private void a(String s1, String s2, String s3, String s4, String s5, String s6, Handler handler, 
            boolean flag)
    {
        n = new SendFeedbackTask(b, s1, s2, s3, s4, s5, s6, handler, flag);
        n.execute(new Void[0]);
    }

    static void a(FeedbackActivity feedbackactivity, String s1)
    {
        feedbackactivity.a(s1);
    }

    static void a(FeedbackActivity feedbackactivity, FeedbackResponse feedbackresponse)
    {
        feedbackactivity.a(feedbackresponse);
    }

    private void a(FeedbackResponse feedbackresponse)
    {
        runOnUiThread(new Runnable(feedbackresponse) {

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

            
            {
                b = FeedbackActivity.this;
                a = feedbackresponse;
                super();
            }
        });
    }

    static boolean a(FeedbackActivity feedbackactivity, boolean flag)
    {
        feedbackactivity.v = flag;
        return flag;
    }

    private void b()
    {
        w = PrefsUtil.a().a(this);
        if (w == null)
        {
            a(false);
            return;
        } else
        {
            a(true);
            a(r, null, null, null, null, w, o, true);
            return;
        }
    }

    private void b(String s1)
    {
        p = new ParseFeedbackTask(this, s1, q);
    }

    static void b(FeedbackActivity feedbackactivity)
    {
        feedbackactivity.c();
    }

    static Context c(FeedbackActivity feedbackactivity)
    {
        return feedbackactivity.b;
    }

    private void c()
    {
        runOnUiThread(new Runnable() {

            final FeedbackActivity a;

            public void run()
            {
                PrefsUtil.a().a(a, null);
                a.a(false);
            }

            
            {
                a = FeedbackActivity.this;
                super();
            }
        });
    }

    static ArrayList d(FeedbackActivity feedbackactivity)
    {
        return feedbackactivity.u;
    }

    private void d()
    {
        o = new Handler() {

            final FeedbackActivity a;

            public void handleMessage(Message message)
            {
                boolean flag = false;
                FeedbackActivity.a(a, new ErrorObject());
                if (message != null && message.getData() != null)
                {
                    Bundle bundle = message.getData();
                    String s1 = bundle.getString("feedback_response");
                    String s2 = bundle.getString("feedback_status");
                    String s3 = bundle.getString("request_type");
                    if (s3.equals("send") && (s1 == null || Integer.parseInt(s2) != 201))
                    {
                        FeedbackActivity.a(a).a("Message couldn't be posted. Please check your input values and your connection, then try again.");
                    } else
                    if (s3.equals("fetch") && s2 != null && (Integer.parseInt(s2) == 404 || Integer.parseInt(s2) == 422))
                    {
                        FeedbackActivity.b(a);
                        flag = true;
                    } else
                    if (s1 != null)
                    {
                        FeedbackActivity.a(a, s1);
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
                    a.runOnUiThread(new Runnable(this) {

                        final _cls2 a;

                        public void run()
                        {
                            a.a.b(true);
                            a.a.showDialog(0);
                        }

            
            {
                a = _pcls2;
                super();
            }
                    });
                }
            }

            
            {
                a = FeedbackActivity.this;
                super();
            }
        };
    }

    static TextView e(FeedbackActivity feedbackactivity)
    {
        return feedbackactivity.c;
    }

    private void e()
    {
        q = new Handler() {

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
                    a.runOnUiThread(new Runnable(this) {

                        final _cls3 a;

                        public void run()
                        {
                            a.a.showDialog(0);
                        }

            
            {
                a = _pcls3;
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

            
            {
                a = FeedbackActivity.this;
                super();
            }
        };
    }

    static MessagesAdapter f(FeedbackActivity feedbackactivity)
    {
        return feedbackactivity.t;
    }

    private void f()
    {
        b(false);
        if (d.getText().toString().trim().length() <= 0 || e.getText().toString().trim().length() <= 0 || f.getText().toString().trim().length() <= 0 || g.getText().toString().trim().length() <= 0)
        {
            s = new ErrorObject();
            s.a("Please provide all details");
            showDialog(0);
            b(true);
            return;
        } else
        {
            PrefsUtil.a().a(b, d.getText().toString(), e.getText().toString(), f.getText().toString());
            a(r, d.getText().toString(), e.getText().toString(), f.getText().toString(), g.getText().toString(), PrefsUtil.a().a(b), o, false);
            return;
        }
    }

    static ListView g(FeedbackActivity feedbackactivity)
    {
        return feedbackactivity.m;
    }

    public ViewGroup a()
    {
        return new FeedbackView(this);
    }

    protected void a(boolean flag)
    {
        k = (ScrollView)findViewById(0x20017);
        l = (LinearLayout)findViewById(0x20015);
        m = (ListView)findViewById(0x20016);
        if (flag)
        {
            l.setVisibility(0);
            k.setVisibility(8);
            c = (TextView)findViewById(8192);
            i = (Button)findViewById(0x20010);
            i.setOnClickListener(this);
            j = (Button)findViewById(0x20011);
            j.setOnClickListener(this);
            return;
        }
        l.setVisibility(8);
        k.setVisibility(0);
        d = (EditText)findViewById(8194);
        e = (EditText)findViewById(8196);
        f = (EditText)findViewById(8198);
        g = (EditText)findViewById(8200);
        String s1 = PrefsUtil.a().b(b);
        if (s1 != null)
        {
            String as[] = s1.split("\\|");
            if (as != null && as.length == 3)
            {
                d.setText(as[0]);
                e.setText(as[1]);
                f.setText(as[2]);
            }
        } else
        {
            d.setText("");
            e.setText("");
            f.setText("");
        }
        g.setText("");
        if (PrefsUtil.a().a(b) != null)
        {
            f.setVisibility(8);
        } else
        {
            f.setVisibility(0);
        }
        h = (Button)findViewById(8201);
        h.setOnClickListener(this);
    }

    public void b(boolean flag)
    {
        if (h != null)
        {
            h.setEnabled(flag);
        }
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 8201: 
            f();
            return;

        case 131088: 
            a(false);
            v = true;
            return;

        case 131089: 
            a(r, null, null, null, null, PrefsUtil.a().a(b), o, true);
            break;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(a());
        setTitle("Feedback");
        b = this;
        v = false;
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            r = bundle1.getString("url");
        }
        d();
        e();
        b();
    }

    protected Dialog onCreateDialog(int i1)
    {
        switch (i1)
        {
        default:
            return null;

        case 0: // '\0'
            return (new android.app.AlertDialog.Builder(this)).setMessage("An error has occured").setCancelable(false).setTitle("Error").setIcon(0x1080027).setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                final FeedbackActivity a;

                public void onClick(DialogInterface dialoginterface, int j1)
                {
                    FeedbackActivity.a(a, null);
                    dialoginterface.cancel();
                }

            
            {
                a = FeedbackActivity.this;
                super();
            }
            }).create();
        }
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (i1 == 4)
        {
            if (v)
            {
                v = false;
                b();
            } else
            {
                finish();
            }
            return true;
        } else
        {
            return super.onKeyDown(i1, keyevent);
        }
    }

    protected void onPrepareDialog(int i1, Dialog dialog)
    {
        AlertDialog alertdialog;
        switch (i1)
        {
        default:
            return;

        case 0: // '\0'
            alertdialog = (AlertDialog)dialog;
            break;
        }
        if (s != null)
        {
            alertdialog.setMessage(s.a());
            return;
        } else
        {
            alertdialog.setMessage("An error has occured");
            return;
        }
    }

    public Object onRetainNonConfigurationInstance()
    {
        if (n != null)
        {
            n.a();
        }
        return n;
    }
}
