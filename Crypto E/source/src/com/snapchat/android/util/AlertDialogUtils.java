// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.CountDownTimer;
import android.os.Message;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.TextView;
import android.widget.Toast;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.ChronologicalSnapProvider;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.EditTextDialog;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SnapSelectedForReplayEvent;
import com.snapchat.android.util.gl.RawResourceReader;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.snapchat.android.util:
//            ApiHelper, FriendUtils, LocalizationUtils, EditNameDialog, 
//            ScExecutors, SnapUtils

public class AlertDialogUtils
{
    public static interface YesNoAlertListener
    {

        public abstract void a(YesNoOption yesnooption);
    }

    public static final class YesNoOption extends Enum
    {

        public static final YesNoOption a;
        public static final YesNoOption b;
        public static final YesNoOption c;
        private static final YesNoOption d[];

        public static YesNoOption valueOf(String s)
        {
            return (YesNoOption)Enum.valueOf(com/snapchat/android/util/AlertDialogUtils$YesNoOption, s);
        }

        public static YesNoOption[] values()
        {
            return (YesNoOption[])d.clone();
        }

        static 
        {
            a = new YesNoOption("YES", 0);
            b = new YesNoOption("NO", 1);
            c = new YesNoOption("YES_DONT_ASK_AGAIN", 2);
            YesNoOption ayesnooption[] = new YesNoOption[3];
            ayesnooption[0] = a;
            ayesnooption[1] = b;
            ayesnooption[2] = c;
            d = ayesnooption;
        }

        private YesNoOption(String s, int i)
        {
            super(s, i);
        }
    }


    private static Map a;

    public AlertDialogUtils()
    {
    }

    static int a(int i)
    {
        return b(i);
    }

    static Map a()
    {
        return a;
    }

    public static void a(int i, Context context)
    {
        a(i, context, 0);
    }

    public static void a(int i, Context context, int j)
    {
        a(context.getString(i), context, j);
    }

    public static void a(Context context)
    {
        SharedPreferences sharedpreferences;
        if (ApiHelper.f && android.os.Build.VERSION.SDK_INT >= 18)
        {
            if (!(sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context)).getBoolean("hasSeenNexus4RestartMessage", false))
            {
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putBoolean("hasSeenNexus4RestartMessage", true);
                editor.apply();
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
                builder.setTitle("Nexus 4 Restarts");
                builder.setMessage(RawResourceReader.a(context, 0x7f060003));
                builder.setPositiveButton("Support", new android.content.DialogInterface.OnClickListener(context) {

                    final Context a;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://productforums.google.com/forum/#!topic/mobile/gsBvuZzG_xc/discussion"));
                        intent.setFlags(32768);
                        try
                        {
                            a.startActivity(intent);
                            return;
                        }
                        catch (ActivityNotFoundException activitynotfoundexception)
                        {
                            AlertDialogUtils.a("Could not start browser", a);
                        }
                    }

            
            {
                a = context;
                super();
            }
                });
                builder.setNegativeButton(0x7f0c0142, null);
                builder.create().show();
                return;
            }
        }
    }

    static void a(Context context, Friend friend, Message message, com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext analyticscontext)
    {
        b(context, friend, message, analyticscontext);
    }

    public static void a(Context context, Friend friend, Message message, com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext analyticscontext, boolean flag)
    {
        User user = User.c();
        if (user == null)
        {
            return;
        }
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        String s = friend.a();
        if (friend.r_())
        {
            s = (new StringBuilder()).append(friend.b()).append(" (").append(friend.a()).append(")").toString();
        }
        builder.setTitle(s);
        if (FriendUtils.e(friend.a(), user))
        {
            if (friend.x())
            {
                builder.setItems(0x7f070001, new android.content.DialogInterface.OnClickListener(context, friend, message, analyticscontext) {

                    final Context a;
                    final Friend b;
                    final Message c;
                    final com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext d;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        switch (i)
                        {
                        default:
                            return;

                        case 0: // '\0'
                            AlertDialogUtils.a(a, b, c, d);
                            return;

                        case 1: // '\001'
                            (new FriendActionTask(b, FriendAction.DELETE)).a(c).a(d).executeOnExecutor(ScExecutors.b, new String[0]);
                            return;

                        case 2: // '\002'
                            (new FriendActionTask(b, FriendAction.UNBLOCK)).a(c).a(d).executeOnExecutor(ScExecutors.b, new String[0]);
                            break;
                        }
                    }

            
            {
                a = context;
                b = friend;
                c = message;
                d = analyticscontext;
                super();
            }
                });
            } else
            {
                builder.setItems(0x7f070003, new android.content.DialogInterface.OnClickListener(context, friend, message, analyticscontext) {

                    final Context a;
                    final Friend b;
                    final Message c;
                    final com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext d;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        switch (i)
                        {
                        default:
                            return;

                        case 0: // '\0'
                            AlertDialogUtils.a(a, b, c, d);
                            return;

                        case 1: // '\001'
                            (new FriendActionTask(b, FriendAction.DELETE)).a(c).a(d).executeOnExecutor(ScExecutors.b, new String[0]);
                            return;

                        case 2: // '\002'
                            (new FriendActionTask(b, FriendAction.BLOCK)).a(d).a(c).executeOnExecutor(ScExecutors.b, new String[0]);
                            break;
                        }
                    }

            
            {
                a = context;
                b = friend;
                c = message;
                d = analyticscontext;
                super();
            }
                });
            }
        } else
        if (friend.x())
        {
            builder.setItems(0x7f070002, new android.content.DialogInterface.OnClickListener(friend, message, analyticscontext) {

                final Friend a;
                final Message b;
                final com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext c;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    (new FriendActionTask(a, FriendAction.UNBLOCK)).a(b).a(c).executeOnExecutor(ScExecutors.b, new String[0]);
                }

            
            {
                a = friend;
                b = message;
                c = analyticscontext;
                super();
            }
            });
        } else
        if (!flag)
        {
            builder.setItems(0x7f070005, new android.content.DialogInterface.OnClickListener(context, friend, message, analyticscontext) {

                final Context a;
                final Friend b;
                final Message c;
                final com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext d;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    switch (i)
                    {
                    default:
                        return;

                    case 0: // '\0'
                        AlertDialogUtils.a(a, b, c, d);
                        return;

                    case 1: // '\001'
                        (new FriendActionTask(b, FriendAction.BLOCK)).a(c).a(d).executeOnExecutor(ScExecutors.b, new String[0]);
                        break;
                    }
                }

            
            {
                a = context;
                b = friend;
                c = message;
                d = analyticscontext;
                super();
            }
            });
        } else
        {
            builder.setItems(0x7f070004, new android.content.DialogInterface.OnClickListener(context, friend, message, analyticscontext) {

                final Context a;
                final Friend b;
                final Message c;
                final com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext d;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    switch (i)
                    {
                    default:
                        return;

                    case 0: // '\0'
                        AlertDialogUtils.a(a, b, c, d);
                        return;

                    case 1: // '\001'
                        (new FriendActionTask(b, FriendAction.IGNORE)).a(c).a(d).executeOnExecutor(ScExecutors.b, new String[0]);
                        return;

                    case 2: // '\002'
                        (new FriendActionTask(b, FriendAction.BLOCK)).a(c).a(d).executeOnExecutor(ScExecutors.b, new String[0]);
                        break;
                    }
                }

            
            {
                a = context;
                b = friend;
                c = message;
                d = analyticscontext;
                super();
            }
            });
        }
        builder.create().show();
    }

    public static void a(Context context, ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider)
    {
        User user = User.a(context);
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        builder.setTitle(0x7f0c0182);
        String s = receivedsnap.l();
        Friend friend = FriendUtils.a(receivedsnap.l(), user);
        if (friend != null && friend.r_())
        {
            s = friend.b();
        }
        builder.setMessage(LocalizationUtils.a(0x7f0c0181, new Object[] {
            s
        }));
        builder.setPositiveButton(0x7f0c0180, new android.content.DialogInterface.OnClickListener(receivedsnap, user, chronologicalsnapprovider) {

            final ReceivedSnap a;
            final User b;
            final ChronologicalSnapProvider c;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.x();
                b.C();
                if (c != null && (c instanceof ChatConversation))
                {
                    ((ChatConversation)c).r();
                }
                SnapUtils.b();
                BusProvider.a().a(new SnapSelectedForReplayEvent());
                AnalyticsEvents.a(true, a, b);
            }

            
            {
                a = receivedsnap;
                b = user;
                c = chronologicalsnapprovider;
                super();
            }
        });
        builder.setNegativeButton(0x7f0c003d, new android.content.DialogInterface.OnClickListener(receivedsnap, user) {

            final ReceivedSnap a;
            final User b;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                AnalyticsEvents.a(false, a, b);
            }

            
            {
                a = receivedsnap;
                b = user;
                super();
            }
        });
        builder.create().show();
    }

    public static void a(Context context, String s)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        builder.setMessage(s);
        builder.setCancelable(false);
        builder.setNegativeButton(0x7f0c0142, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
            }

        });
        builder.show();
    }

    public static void a(Context context, String s, String s1)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        builder.setMessage(s1);
        builder.setTitle(s);
        builder.setCancelable(false);
        builder.setNegativeButton(0x7f0c0142, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
            }

        });
        builder.show();
    }

    public static void a(Context context, String s, String s1, YesNoAlertListener yesnoalertlistener)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        builder.setTitle(s).setMessage(s1).setPositiveButton(0x7f0c022a, new android.content.DialogInterface.OnClickListener(yesnoalertlistener) {

            final YesNoAlertListener a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.a(YesNoOption.a);
            }

            
            {
                a = yesnoalertlistener;
                super();
            }
        }).setNegativeButton(0x7f0c0130, new android.content.DialogInterface.OnClickListener(yesnoalertlistener) {

            final YesNoAlertListener a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.a(YesNoOption.b);
            }

            
            {
                a = yesnoalertlistener;
                super();
            }
        });
        builder.create().show();
    }

    public static void a(String s, Context context)
    {
        a(s, context, 0);
    }

    public static void a(String s, Context context, int i)
    {
        ThreadUtils.a(new Runnable(i, s, context) {

            final int a;
            final String b;
            final Context c;

            public void run()
            {
                int j = AlertDialogUtils.a(a);
                try
                {
                    if (AlertDialogUtils.a(b))
                    {
                        Toast.makeText(c, b, j).show();
                        return;
                    }
                }
                catch (IllegalStateException illegalstateexception)
                {
                    Timber.c("AlertDialogUtils", "Well, this is awkward.", new Object[0]);
                    Timber.a("AlertDialogUtils", illegalstateexception);
                    return;
                }
                Timber.d("AlertDialogUtils", (new StringBuilder()).append("Toasting wayyy too many times ").append(b).toString(), new Object[0]);
                return;
            }

            
            {
                a = i;
                b = s;
                c = context;
                super();
            }
        });
    }

    static boolean a(String s)
    {
        return b(s);
    }

    private static int b(int i)
    {
        if (i != 0 && i != 1)
        {
            if (ReleaseManager.e())
            {
                throw new RuntimeException((new StringBuilder()).append("Invalid parameter for length").append(i).toString());
            }
            i = 0;
        }
        return i;
    }

    public static void b(Context context)
    {
        SharedPreferences sharedpreferences;
        if (ReleaseManager.g() && !ReleaseManager.f())
        {
            if ((sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context)).getBoolean("firstTimeUsingBeta", true))
            {
                AlertDialog alertdialog = new AlertDialog(context) {

                };
                alertdialog.setTitle(0x7f0c01e6);
                alertdialog.setMessage(context.getString(0x7f0c0030));
                alertdialog.setCancelable(false);
                alertdialog.setButton(-1, context.getString(0x7f0c0142), new android.content.DialogInterface.OnClickListener(sharedpreferences) {

                    final SharedPreferences a;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        android.content.SharedPreferences.Editor editor = a.edit();
                        editor.putBoolean("firstTimeUsingBeta", false);
                        editor.apply();
                    }

            
            {
                a = sharedpreferences;
                super();
            }
                });
                alertdialog.show();
                return;
            }
        }
    }

    private static void b(Context context, Friend friend, Message message, com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext analyticscontext)
    {
        EditNameDialog editnamedialog = EditNameDialog.a(context, friend, message).a(analyticscontext);
        editnamedialog.show();
        editnamedialog.getWindow().setSoftInputMode(32);
    }

    public static void b(Context context, String s, String s1, YesNoAlertListener yesnoalertlistener)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        View view = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040096, null);
        if (view == null)
        {
            throw new NullPointerException();
        } else
        {
            CheckBox checkbox = (CheckBox)view.findViewById(0x7f0a0128);
            checkbox.setText(0x7f0c022b);
            ((TextView)view.findViewById(0x7f0a0127)).setText(s1);
            builder.setTitle(s).setView(view).setPositiveButton(0x7f0c022a, new android.content.DialogInterface.OnClickListener(checkbox, yesnoalertlistener) {

                final CheckBox a;
                final YesNoAlertListener b;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if (a.isChecked())
                    {
                        b.a(YesNoOption.c);
                        return;
                    } else
                    {
                        b.a(YesNoOption.a);
                        return;
                    }
                }

            
            {
                a = checkbox;
                b = yesnoalertlistener;
                super();
            }
            }).setNegativeButton(0x7f0c0130, new android.content.DialogInterface.OnClickListener(yesnoalertlistener) {

                final YesNoAlertListener a;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    a.a(YesNoOption.b);
                }

            
            {
                a = yesnoalertlistener;
                super();
            }
            });
            builder.create().show();
            return;
        }
    }

    private static boolean b(String s)
    {
        if (a == null)
        {
            a = new ConcurrentHashMap();
        }
        if (a.containsKey(s))
        {
            return false;
        } else
        {
            c(s);
            return true;
        }
    }

    private static void c(String s)
    {
        CountDownTimer countdowntimer = new CountDownTimer(2000L, 1L, s) {

            final String a;

            public void onFinish()
            {
                AlertDialogUtils.a().remove(a);
            }

            public void onTick(long l)
            {
            }

            
            {
                a = s;
                super(l, l1);
            }
        };
        a.put(s, countdowntimer);
        countdowntimer.start();
    }
}
