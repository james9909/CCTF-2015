// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.MediaViewAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.api.LoadSnapMediaTask;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.database.HasSeenOurCampusStoryDialogLog;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.stories.StoriesListItem;
import com.snapchat.android.fragments.stories.StoryGroupStoriesListItem;
import com.snapchat.android.model.BroadcastSnap;
import com.snapchat.android.model.ChronologicalSnapProvider;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.RecentStoryCollection;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.SponsoredStoryCollection;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.User;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.SnapView;
import com.snapchat.android.ui.dialog.OneButtonDialog;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.ClosePtrEvent;
import com.snapchat.android.util.eventbus.HideSnapMessageEvent;
import com.snapchat.android.util.eventbus.HideSnapStoryEvent;
import com.snapchat.android.util.eventbus.RetryFailedSnapEvent;
import com.snapchat.android.util.eventbus.SnapMessageViewingEvent;
import com.snapchat.android.util.eventbus.TimerFinishEvent;
import com.squareup.otto.Bus;
import java.util.List;

// Referenced classes of package com.snapchat.android.util:
//            ScExecutors, SnapUtils, LocalizationUtils, FriendUtils, 
//            AlertDialogUtils

public class SnapListItemHandler
{
    class DelayedFutureTaskRunnable
        implements Runnable
    {

        final SnapListItemHandler a;
        private ReceivedSnap b;

        public ReceivedSnap a()
        {
            return b;
        }

        public void run()
        {
            b.ah();
        }

        public DelayedFutureTaskRunnable(ReceivedSnap receivedsnap)
        {
            a = SnapListItemHandler.this;
            super();
            b = receivedsnap;
        }
    }

    class OpenBroadcastSnapUrlRunnable
        implements Runnable
    {

        final SnapListItemHandler a;
        private String b;

        public void run()
        {
            AnalyticsEvents.d(b);
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(b));
            intent.setFlags(0x10000000);
            SnapchatApplication.e().startActivity(intent);
        }

        public OpenBroadcastSnapUrlRunnable(String s1)
        {
            a = SnapListItemHandler.this;
            super();
            b = s1;
        }
    }

    class OpenSnapRunnable
        implements Runnable
    {

        ReceivedSnap a;
        ChronologicalSnapProvider b;
        final SnapListItemHandler c;

        public void run()
        {
            SnapListItemHandler.a(c).b();
            SnapListItemHandler.b(c).c("feed");
            if (a.F())
            {
                return;
            } else
            {
                SnapUtils.a(a);
                BusProvider.a().a(new SnapMessageViewingEvent(true));
                SnapListItemHandler.a(c, true);
                SnapListItemHandler.c(c).a(a, b);
                return;
            }
        }

        public OpenSnapRunnable(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider)
        {
            c = SnapListItemHandler.this;
            super();
            a = receivedsnap;
            b = chronologicalsnapprovider;
        }
    }

    class OpenStoryRunnable
        implements Runnable
    {

        StoriesListItem a;
        Context b;
        final SnapListItemHandler c;

        private StorySnap a()
        {
            if (a instanceof StorySnapLogbook)
            {
                StorySnap storysnap = ((StorySnapLogbook)a).e();
                if (storysnap.U())
                {
                    return storysnap;
                }
            } else
            if (a instanceof RecentStoryCollection)
            {
                RecentStoryCollection recentstorycollection = (RecentStoryCollection)a;
                if (recentstorycollection.o())
                {
                    return recentstorycollection.G();
                }
            } else
            {
                if (a instanceof StoryGroupStoriesListItem)
                {
                    return a(((StoryGroupStoriesListItem)a).e());
                }
                StoryCollection storycollection = StoryLibrary.a().c(a.a());
                if (storycollection == null)
                {
                    return null;
                }
                if (storycollection.o())
                {
                    return storycollection.D();
                }
            }
            return null;
        }

        private StorySnap a(StoryGroup storygroup)
        {
            StoryCollection storycollection;
            for (storycollection = StoryLibrary.a().b(storygroup.c()); storycollection == null || !storycollection.o();)
            {
                return null;
            }

            return storycollection.D();
        }

        private void a(Friend friend, StorySnap storysnap)
        {
            String s1 = friend.l();
            if (s1 == null)
            {
                s1 = LocalizationUtils.a(0x7f0c0147, new Object[0]);
            }
            String s2 = friend.m();
            if (s2 == null)
            {
                s2 = LocalizationUtils.a(0x7f0c0146, new Object[0]);
            }
            OneButtonDialog onebuttondialog = new OneButtonDialog(b, s2);
            onebuttondialog.setTitle(s1);
            onebuttondialog.show();
            c.c.b(storysnap.aB());
        }

        private void a(StorySnap storysnap)
        {
            Object obj;
            if (a instanceof RecentStoryCollection)
            {
                obj = (RecentStoryCollection)a;
            } else
            {
                obj = StoryLibrary.a().c(a.a());
            }
            if (obj == null)
            {
                return;
            } else
            {
                ((StoryCollection) (obj)).a(7, storysnap, false, com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext.LOAD_STORY_SNAP_BY_TAP);
                return;
            }
        }

        public void run()
        {
            SnapListItemHandler.a(c).b();
            SnapListItemHandler.b(c).c("story");
            StorySnap storysnap = a();
            if (storysnap == null)
            {
                return;
            }
            Friend friend = FriendUtils.a(storysnap.aB(), User.c());
            if (friend.J() && !c.c.a(storysnap.aB()))
            {
                a(friend, storysnap);
                return;
            } else
            {
                a(storysnap);
                StoryCollection storycollection = SnapUtils.a(a);
                SnapListItemHandler.a(c, true);
                SnapListItemHandler.a(c, storysnap, storycollection, a instanceof RecentStoryCollection, a instanceof StorySnapLogbook);
                return;
            }
        }

        public OpenStoryRunnable(StoriesListItem storieslistitem, Context context)
        {
            c = SnapListItemHandler.this;
            super();
            b = context;
            a = storieslistitem;
            StoryCollection storycollection = SnapUtils.a(a);
            StorySnap storysnap = a();
            if (storysnap != null)
            {
                SnapListItemHandler.a(SnapListItemHandler.this, storysnap, storycollection, a instanceof StorySnapLogbook);
            }
        }
    }

    class ReplaySnapRunnable
        implements Runnable
    {

        final SnapListItemHandler a;
        private ReceivedSnap b;
        private Context c;
        private ChronologicalSnapProvider d;

        public void run()
        {
            User user = User.c();
            if (user.D())
            {
                AlertDialogUtils.a(c, b, d);
                AnalyticsEvents.b(b, user);
            }
        }

        public ReplaySnapRunnable(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, Context context)
        {
            a = SnapListItemHandler.this;
            super();
            b = receivedsnap;
            c = context;
            d = chronologicalsnapprovider;
        }
    }


    private static SnapListItemHandler g;
    protected boolean a;
    protected boolean b;
    protected HasSeenOurCampusStoryDialogLog c;
    private SnapView d;
    private Handler e;
    private boolean f;
    private final SharedPreferences h;
    private int i;
    private int j;
    private boolean k;
    private final SendingMailman l;
    private final FeedIconManager m;
    private SnapViewEventAnalytics n;
    private MediaViewAnalytics o;
    private DictionaryEasyMetric p;
    private boolean q;
    private DelayedFutureTaskRunnable r;
    private OpenSnapRunnable s;
    private ReplaySnapRunnable t;
    private OpenStoryRunnable u;
    private OpenBroadcastSnapUrlRunnable v;

    SnapListItemHandler(SendingMailman sendingmailman, FeedIconManager feediconmanager, SnapViewEventAnalytics snapvieweventanalytics, MediaViewAnalytics mediaviewanalytics, DictionaryEasyMetric dictionaryeasymetric, SharedPreferences sharedpreferences)
    {
        e = new Handler();
        q = false;
        SnapchatApplication.e().a(this);
        BusProvider.a().c(this);
        l = sendingmailman;
        m = feediconmanager;
        n = snapvieweventanalytics;
        o = mediaviewanalytics;
        p = dictionaryeasymetric;
        h = sharedpreferences;
        i = h.getInt(SharedPreferenceKey.D.a(), 0);
        j = h.getInt(SharedPreferenceKey.E.a(), 0);
        a = h.getBoolean(SharedPreferenceKey.F.a(), false);
        k = false;
        b = c();
    }

    static SnapViewEventAnalytics a(SnapListItemHandler snaplistitemhandler)
    {
        return snaplistitemhandler.n;
    }

    public static SnapListItemHandler a()
    {
        com/snapchat/android/util/SnapListItemHandler;
        JVM INSTR monitorenter ;
        SnapListItemHandler snaplistitemhandler;
        if (g == null)
        {
            g = new SnapListItemHandler(SendingMailman.a(), FeedIconManager.a(), SnapViewEventAnalytics.a(), MediaViewAnalytics.a(), DictionaryEasyMetric.a(), PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()));
        }
        snaplistitemhandler = g;
        com/snapchat/android/util/SnapListItemHandler;
        JVM INSTR monitorexit ;
        return snaplistitemhandler;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(Context context, Snap snap, ChronologicalSnapProvider chronologicalsnapprovider)
    {
        if (snap.au())
        {
            t = new ReplaySnapRunnable((ReceivedSnap)snap, chronologicalsnapprovider, context);
            e.postDelayed(t, 190L);
            f = true;
        }
    }

    private void a(BroadcastSnap broadcastsnap)
    {
        String s1 = broadcastsnap.f();
        if (TextUtils.isEmpty(s1))
        {
            return;
        } else
        {
            v = new OpenBroadcastSnapUrlRunnable(s1);
            e.postDelayed(v, 190L);
            f = true;
            return;
        }
    }

    private void a(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider)
    {
        if ((receivedsnap instanceof BroadcastSnap) && receivedsnap.F() && receivedsnap.i())
        {
            a((BroadcastSnap)receivedsnap);
        } else
        {
            if (receivedsnap.U())
            {
                Timber.b("SnapListItemHandler", "Snap is loaded", new Object[0]);
                s = new OpenSnapRunnable(receivedsnap, chronologicalsnapprovider);
                r = new DelayedFutureTaskRunnable(receivedsnap);
                e.postDelayed(s, 190L);
                e.postDelayed(r, 140L);
                f = true;
                return;
            }
            if (!receivedsnap.Z())
            {
                Timber.b("SnapListItemHandler", "Snap is not loaded. Calling LoadSnapMediaTask", new Object[0]);
                o.a("feed");
                (new LoadSnapMediaTask(receivedsnap)).executeOnExecutor(ScExecutors.b, new Void[0]);
                return;
            }
        }
    }

    private void a(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, boolean flag)
    {
        d.a(receivedsnap, chronologicalsnapprovider, flag);
    }

    private void a(StorySnap storysnap, StoryCollection storycollection, boolean flag, boolean flag1)
    {
        AnalyticsEvents.a(storysnap, flag, User.c());
        boolean flag2 = a(storysnap, storycollection);
        if (flag2)
        {
            storycollection.b(flag2);
        }
        d.a(storysnap, storycollection, flag1, flag2);
    }

    static void a(SnapListItemHandler snaplistitemhandler, ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, boolean flag)
    {
        snaplistitemhandler.a(receivedsnap, chronologicalsnapprovider, flag);
    }

    static void a(SnapListItemHandler snaplistitemhandler, StorySnap storysnap, StoryCollection storycollection, boolean flag, boolean flag1)
    {
        snaplistitemhandler.a(storysnap, storycollection, flag, flag1);
    }

    static boolean a(SnapListItemHandler snaplistitemhandler, boolean flag)
    {
        snaplistitemhandler.q = flag;
        return flag;
    }

    static MediaViewAnalytics b(SnapListItemHandler snaplistitemhandler)
    {
        return snaplistitemhandler.o;
    }

    public static void b()
    {
        com/snapchat/android/util/SnapListItemHandler;
        JVM INSTR monitorenter ;
        g = null;
        com/snapchat/android/util/SnapListItemHandler;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static SnapView c(SnapListItemHandler snaplistitemhandler)
    {
        return snaplistitemhandler.d;
    }

    public void a(StoriesListItem storieslistitem, Context context)
    {
        if (d == null || q)
        {
            return;
        } else
        {
            n.a(com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType.STORY);
            u = new OpenStoryRunnable(storieslistitem, context);
            e.postDelayed(u, 190L);
            f = true;
            return;
        }
    }

    public void a(Snap snap, ChatConversation chatconversation, Context context)
    {
        n.a(com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType.CHAT);
        if (!snap.i())
        {
            a(context, snap, ((ChronologicalSnapProvider) (null)));
        } else
        {
            if (snap instanceof ReceivedSnap)
            {
                a((ReceivedSnap)snap, ((ChronologicalSnapProvider) (null)));
                return;
            }
            if (snap instanceof SentSnap)
            {
                l.a((SentSnap)snap);
                BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u(), snap.d()));
                BusProvider.a().a(new RetryFailedSnapEvent());
                return;
            }
        }
    }

    public void a(ChatConversation chatconversation, Context context)
    {
        if (d != null && !q)
        {
            n.a(com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType.FEED);
            ReceivedSnap receivedsnap = chatconversation.g();
            if (receivedsnap == null)
            {
                ReceivedSnap receivedsnap1 = chatconversation.q();
                if (receivedsnap1 != null)
                {
                    a(context, ((Snap) (receivedsnap1)), ((ChronologicalSnapProvider) (chatconversation)));
                    return;
                }
                com.snapchat.android.model.chat.ChatFeedItem chatfeeditem = chatconversation.aw();
                if (chatfeeditem == null)
                {
                    m.a(chatconversation, true);
                    chatfeeditem = chatconversation.aw();
                }
                if (chatfeeditem instanceof BroadcastSnap)
                {
                    a((BroadcastSnap)chatfeeditem);
                    return;
                }
            } else
            {
                a(receivedsnap, ((ChronologicalSnapProvider) (chatconversation)));
                return;
            }
        }
    }

    public void a(SnapView snapview)
    {
        d = snapview;
        if (c())
        {
            d.a();
        }
    }

    public boolean a(MotionEvent motionevent, float f1, float f2, int i1)
    {
        boolean flag = true;
        motionevent.getActionMasked();
        JVM INSTR tableswitch 1 6: default 44
    //                   1 50
    //                   2 140
    //                   3 44
    //                   4 44
    //                   5 203
    //                   6 47;
           goto _L1 _L2 _L3 _L1 _L1 _L4 _L5
_L1:
        flag = false;
_L5:
        return flag;
_L2:
        if (q)
        {
            q = false;
            if (d.b())
            {
                BusProvider.a().a(new HideSnapMessageEvent());
            }
            BusProvider.a().a(new SnapMessageViewingEvent(false));
            BusProvider.a().a(new ClosePtrEvent());
            d.d();
            f();
            return flag;
        }
        if (f)
        {
            e();
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (d.b() || q) goto _L5; else goto _L6
_L6:
        if (f && (Math.abs(motionevent.getRawY() - f2) > (float)i1 || Math.abs(motionevent.getRawX() - f1) > (float)i1))
        {
            e();
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (d.b())
        {
            d();
            return flag;
        }
        if (true) goto _L1; else goto _L7
_L7:
    }

    protected boolean a(StorySnap storysnap, StoryCollection storycollection)
    {
        boolean flag;
        for (flag = true; storysnap == null || storycollection == null || (!a || i >= 2) && (a || i != 0 || j < 30);)
        {
            return false;
        }

        List list = storycollection.m();
        boolean flag1;
        if (!list.isEmpty() && TextUtils.equals(((StorySnap)list.get(-1 + list.size())).d(), storysnap.d()))
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (storycollection.C() < 3 || storycollection.w() || storysnap.M() < 5D || storysnap.am() || (storycollection instanceof SponsoredStoryCollection) || flag1)
        {
            flag = false;
        }
        return flag;
    }

    public boolean b(MotionEvent motionevent, float f1, float f2, int i1)
    {
        if (motionevent.getActionMasked() != 5 || !d.b()) goto _L2; else goto _L1
_L1:
        d();
_L4:
        return true;
_L2:
        if (motionevent.getActionMasked() == 1)
        {
            q = false;
            if (d.b())
            {
                g();
                f();
                BusProvider.a().a(new HideSnapStoryEvent());
                return true;
            }
            if (f)
            {
                e();
            }
        }
        if (motionevent.getActionMasked() != 2)
        {
            break; /* Loop/switch isn't completed */
        }
        if (Math.abs(motionevent.getRawY() - f2) > (float)i1 || Math.abs(motionevent.getRawX() - f1) > (float)i1)
        {
            e();
        }
        if (d.b() || q) goto _L4; else goto _L3
_L3:
        if (motionevent.getActionMasked() == 6) goto _L4; else goto _L5
_L5:
        return false;
    }

    protected boolean c()
    {
        return a && i < 2 || !a && i == 0;
    }

    public void d()
    {
        d.e();
        i = 1 + i;
        k = true;
    }

    public void e()
    {
        e.removeCallbacks(s);
        e.removeCallbacks(t);
        e.removeCallbacks(u);
        e.removeCallbacks(v);
        e.removeCallbacks(r);
        if (r != null && r.a().ai())
        {
            r.a().d(false);
            SnapViewEventAnalytics.c(false);
        }
        d.c();
        f = false;
    }

    public void f()
    {
        if (k && b)
        {
            android.content.SharedPreferences.Editor editor = h.edit();
            editor.putInt(SharedPreferenceKey.D.a(), i);
            editor.putInt(SharedPreferenceKey.E.a(), j);
            editor.apply();
            k = false;
            b = c();
        }
    }

    public void g()
    {
        d.d();
    }

    public boolean h()
    {
        return q;
    }

    public void onTimerFinishEvent(TimerFinishEvent timerfinishevent)
    {
        if (timerfinishevent.a())
        {
            j = 1 + j;
            k = true;
        }
    }
}
