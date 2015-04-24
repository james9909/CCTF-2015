// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.animation.Animator;
import android.app.KeyguardManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.MediaViewAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NotificationAnalytics;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.api.SyncAllTask;
import com.snapchat.android.api.chat.LoadFeedPageTask;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.chat.ChatWithFragment;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.ui.UpgradePromptView;
import com.snapchat.android.ui.listeners.FeedSwipeListViewTouchListener;
import com.snapchat.android.ui.ptr.SnapchatPtrFrameLayout;
import com.snapchat.android.util.ActivityLauncher;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ListViewAdapterList;
import com.snapchat.android.util.PreferenceUtils;
import com.snapchat.android.util.SnapListItemHandler;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.AllowAccessToChatFragmentEvent;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.CancelReplyEvent;
import com.snapchat.android.util.eventbus.ChangeWindowMarginEvent;
import com.snapchat.android.util.eventbus.ChatSwipeStartedEvent;
import com.snapchat.android.util.eventbus.ClosePtrEvent;
import com.snapchat.android.util.eventbus.ConversationListUpdatedEvent;
import com.snapchat.android.util.eventbus.DoubleTapToReplyEvent;
import com.snapchat.android.util.eventbus.FeedIconRefreshedEvent;
import com.snapchat.android.util.eventbus.FeedTimerChangeEvent;
import com.snapchat.android.util.eventbus.HideSnapMessageEvent;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent;
import com.snapchat.android.util.eventbus.LockScreenOpenedEvent;
import com.snapchat.android.util.eventbus.NewChatMessageReceivedEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.RetryFailedSnapEvent;
import com.snapchat.android.util.eventbus.ScrollFeedToTopEvent;
import com.snapchat.android.util.eventbus.SendSnapRequestCompleteEvent;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.eventbus.SnapSelectedForReplayEvent;
import com.snapchat.android.util.eventbus.SnapSelectedForRetryEvent;
import com.snapchat.android.util.eventbus.SnapSendInitiatedEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.eventbus.SyncAllCompletedEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.snapchat.android.util.eventbus.UserLoadedEvent;
import com.snapchat.android.util.eventbus.UserSwipedIntoChatEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.listview.ListViewUtils;
import com.snapchat.android.util.system.Clock;
import com.squareup.otto.Bus;
import in.srain.cube.views.ptr.PtrFrameLayout;
import in.srain.cube.views.ptr.PtrHandler;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedAdapter

public class FeedFragment extends SnapchatFragment
    implements android.content.SharedPreferences.OnSharedPreferenceChangeListener, com.snapchat.android.api.chat.LoadFeedPageTask.LoadFeedPageTaskInterface, FeedAdapter.FeedAdapterInterface, com.snapchat.android.ui.listeners.FeedSwipeListViewTouchListener.FeedTouchInterface
{

    private static SnapchatServiceManager b = SnapchatServiceManager.a();
    private View B;
    private View C;
    private TextView D;
    private View E;
    private View F;
    private android.view.ViewTreeObserver.OnGlobalLayoutListener G;
    private ChatConversation H;
    private InputMethodManager I;
    private FeedSwipeListViewTouchListener J;
    private Runnable K = new Runnable() {

        final FeedFragment a;

        public void run()
        {
            if (FeedFragment.g(a) != null)
            {
                FeedFragment.h(a).a("PULL_TO_REFRESH");
                FeedFragment.i(a).b();
                UserPrefs.ak();
                SyncAllTask.a(FeedFragment.g(a), false, false, true);
            }
        }

            
            {
                a = FeedFragment.this;
                super();
            }
    };
    private MotionEvent L;
    protected boolean a;
    private final Bus c;
    private final ChatConversationManager d;
    private final DictionaryEasyMetric e;
    private final MediaViewAnalytics f;
    private final CameraEventAnalytics g;
    private final NetworkAnalytics h;
    private final Clock i;
    private final UserPrefs j;
    private TextView k;
    private TextView l;
    private FeedAdapter m;
    private ListView n;
    private SnapchatPtrFrameLayout o;
    private Handler p;
    private User q;
    private UpgradePromptView r;
    private View s;
    private View t;
    private EditText u;
    private View v;

    public FeedFragment()
    {
        this(BusProvider.a(), ChatConversationManager.a(), DictionaryEasyMetric.a(), CameraEventAnalytics.a(), MediaViewAnalytics.a(), NetworkAnalytics.a(), new Clock(), UserPrefs.a());
    }

    FeedFragment(Bus bus, ChatConversationManager chatconversationmanager, DictionaryEasyMetric dictionaryeasymetric, CameraEventAnalytics cameraeventanalytics, MediaViewAnalytics mediaviewanalytics, NetworkAnalytics networkanalytics, Clock clock, 
            UserPrefs userprefs)
    {
        c = bus;
        d = chatconversationmanager;
        e = dictionaryeasymetric;
        g = cameraeventanalytics;
        f = mediaviewanalytics;
        h = networkanalytics;
        i = clock;
        j = userprefs;
    }

    private void A()
    {
        if (E != null)
        {
            return;
        } else
        {
            E = ((ViewStub)d(0x7f0a01d0)).inflate().findViewById(0x7f0a01dd);
            return;
        }
    }

    private void B()
    {
        if (r != null)
        {
            return;
        } else
        {
            View view = ((ViewStub)d(0x7f0a01d1)).inflate();
            r = (UpgradePromptView)view.findViewById(0x7f0a01e1);
            l = (TextView)view.findViewById(0x7f0a01e4);
            k = (TextView)view.findViewById(0x7f0a01e3);
            return;
        }
    }

    private void C()
    {
        if (!k())
        {
            return;
        }
        B();
        String s1 = j.aB();
        if (!TextUtils.isEmpty(s1))
        {
            l.setText(s1);
        }
        l.setOnClickListener(new android.view.View.OnClickListener() {

            final FeedFragment a;

            public void onClick(View view)
            {
                ActivityLauncher.a(a.getActivity(), FeedFragment.t(a).ay());
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        });
        if (j.az())
        {
            k.setText(Html.fromHtml(j.aA()));
        }
        r.a();
    }

    private void D()
    {
        if (r != null)
        {
            r.b();
        }
    }

    private View E()
    {
        List list = d.d();
        int i1 = 0;
        do
        {
            if (i1 >= list.size() || TextUtils.equals(((ChatConversation)list.get(i1)).c(), "teamsnapchat"))
            {
                return n.getChildAt(i1 + n.getHeaderViewsCount());
            }
            i1++;
        } while (true);
    }

    static CameraEventAnalytics a(FeedFragment feedfragment)
    {
        return feedfragment.g;
    }

    private ChatConversation a(float f1, float f2)
    {
        int i1 = n.pointToPosition(Math.round(f1), Math.round(f2));
        boolean flag;
        if (i1 >= 0 && i1 < m.getCount() + n.getHeaderViewsCount())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return (ChatConversation)n.getItemAtPosition(i1);
        } else
        {
            return null;
        }
    }

    static ChatConversation a(FeedFragment feedfragment, ChatConversation chatconversation)
    {
        feedfragment.H = chatconversation;
        return chatconversation;
    }

    private void a(String s1)
    {
        int i1 = n.getFirstVisiblePosition();
        int j1 = n.getLastVisiblePosition();
        int k1 = i1;
        do
        {
label0:
            {
                if (k1 <= j1)
                {
                    Object obj = n.getItemAtPosition(k1);
                    if (!(obj instanceof ChatConversation) || !((ChatConversation)obj).u().equals(s1))
                    {
                        break label0;
                    }
                    View view = n.getChildAt(k1 - i1);
                    n.getAdapter().getView(k1, view, n);
                }
                return;
            }
            k1++;
        } while (true);
    }

    private boolean a(ChatConversation chatconversation)
    {
        if (chatconversation.equals(H))
        {
            g.a(com.snapchat.android.analytics.CameraEventAnalytics.CameraContext.DOUBLE_TAP);
            c.a(new DoubleTapToReplyEvent(chatconversation.c(), 1));
        } else
        {
            H = chatconversation;
        }
        (new Handler()).postDelayed(new Runnable() {

            final FeedFragment a;

            public void run()
            {
                FeedFragment.a(a, null);
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        }, 450L);
        return false;
    }

    static void b(FeedFragment feedfragment)
    {
        feedfragment.r();
    }

    private void b(ChatConversation chatconversation)
    {
        if (chatconversation == null)
        {
            return;
        } else
        {
            com.snapchat.android.model.Friend friend = FriendUtils.a(chatconversation.a(), q);
            c.a(new ChatSwipeStartedEvent(friend));
            return;
        }
    }

    static TextView c(FeedFragment feedfragment)
    {
        return feedfragment.D;
    }

    static ListView d(FeedFragment feedfragment)
    {
        return feedfragment.n;
    }

    static void e(FeedFragment feedfragment)
    {
        feedfragment.q();
    }

    static void f(FeedFragment feedfragment)
    {
        feedfragment.t();
    }

    static User g(FeedFragment feedfragment)
    {
        return feedfragment.q;
    }

    static DictionaryEasyMetric h(FeedFragment feedfragment)
    {
        return feedfragment.e;
    }

    static MediaViewAnalytics i(FeedFragment feedfragment)
    {
        return feedfragment.f;
    }

    static Runnable j(FeedFragment feedfragment)
    {
        return feedfragment.K;
    }

    static Handler k(FeedFragment feedfragment)
    {
        return feedfragment.p;
    }

    static FeedAdapter l(FeedFragment feedfragment)
    {
        return feedfragment.m;
    }

    private void l()
    {
        q = User.c();
        C = d(0x7f0a01c8);
        C.setOnClickListener(new android.view.View.OnClickListener() {

            final FeedFragment a;

            public void onClick(View view)
            {
                FeedFragment.a(a).a(com.snapchat.android.analytics.CameraEventAnalytics.CameraContext.CAMERA_BUTTON);
                a.getActivity().onBackPressed();
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        });
        C.setOnLongClickListener(new android.view.View.OnLongClickListener() {

            final FeedFragment a;

            public boolean onLongClick(View view)
            {
                FeedFragment.b(a);
                view.setVisibility(8);
                FeedFragment.c(a).setText((new StringBuilder()).append(UserPrefs.e()).append(" | ").append(UserPrefs.d()).toString());
                FeedFragment.c(a).setVisibility(0);
                return true;
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        });
        d(0x7f0a01c7).setOnClickListener(new android.view.View.OnClickListener() {

            final FeedFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        });
        s = d(0x7f0a01cc);
        t = d(0x7f0a01cb);
        G = new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final FeedFragment a;

            public void onGlobalLayout()
            {
                ViewTreeObserver viewtreeobserver = FeedFragment.d(a).getViewTreeObserver();
                if (viewtreeobserver == null)
                {
                    throw new NullPointerException();
                }
                if (android.os.Build.VERSION.SDK_INT >= 16)
                {
                    viewtreeobserver.removeOnGlobalLayoutListener(this);
                } else
                {
                    viewtreeobserver.removeGlobalOnLayoutListener(this);
                }
                FeedFragment.e(a);
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        };
        s.setOnClickListener(new android.view.View.OnClickListener() {

            final FeedFragment a;

            public void onClick(View view)
            {
                BusProvider.a().a(new StartFragmentEvent(new ChatWithFragment()));
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        });
        t.setOnClickListener(new android.view.View.OnClickListener() {

            final FeedFragment a;

            public void onClick(View view)
            {
                FeedFragment.f(a);
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        });
        p();
        n();
    }

    static FeedSwipeListViewTouchListener m(FeedFragment feedfragment)
    {
        return feedfragment.J;
    }

    static Bus n(FeedFragment feedfragment)
    {
        return feedfragment.c;
    }

    private void n()
    {
        if (q != null && q.J() && d.d().isEmpty())
        {
            o();
            F.setVisibility(0);
            return;
        } else
        {
            ViewUtils.c(F, 8);
            return;
        }
    }

    static View o(FeedFragment feedfragment)
    {
        return feedfragment.x;
    }

    private void o()
    {
        if (F != null)
        {
            return;
        } else
        {
            F = ((ViewStub)d(0x7f0a01cf)).inflate().findViewById(0x7f0a01de);
            return;
        }
    }

    static View p(FeedFragment feedfragment)
    {
        return feedfragment.C;
    }

    private void p()
    {
        o = (SnapchatPtrFrameLayout)d(0x7f0a01cd);
        o.setPtrHandler(new PtrHandler() {

            final FeedFragment a;

            public void a(PtrFrameLayout ptrframelayout)
            {
                FeedFragment.k(a).post(FeedFragment.j(a));
            }

            public boolean a(PtrFrameLayout ptrframelayout, View view, View view1)
            {
                return ListViewUtils.a(FeedFragment.d(a));
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        });
        p = new Handler();
        ListViewAdapterList listviewadapterlist = d.e();
        m = FeedAdapter.a(getActivity(), listviewadapterlist, FeedIconManager.a(), this);
        n = (ListView)d(0x7f0a01ce);
        B = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(0x7f04004a, null);
        B.setOnClickListener(new android.view.View.OnClickListener() {

            final FeedFragment a;

            public void onClick(View view)
            {
                if (!FeedFragment.l(a).isEmpty())
                {
                    LoadFeedPageTask.a(a);
                }
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        });
        n.addFooterView(B, null, false);
        n.setAdapter(m);
        n.setTextFilterEnabled(true);
        J = new FeedSwipeListViewTouchListener(n, com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeDirection.b, this, getActivity(), m, FeedIconManager.a());
        J.b(true);
        n.setOnTouchListener(J);
        android.widget.AbsListView.OnScrollListener onscrolllistener = J.a();
        n.setOnScrollListener(new android.widget.AbsListView.OnScrollListener(onscrolllistener) {

            final android.widget.AbsListView.OnScrollListener a;
            final FeedFragment b;
            private int c;

            public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
            {
                a.onScroll(abslistview, i1, j1, k1);
            }

            public void onScrollStateChanged(AbsListView abslistview, int i1)
            {
                a.onScrollStateChanged(abslistview, i1);
                if (i1 == 0)
                {
                    FeedFragment.m(b).c(true);
                } else
                {
                    if (c == 0)
                    {
                        FeedFragment.m(b).c(false);
                        FeedFragment.n(b).a(new AllowAccessToChatFragmentEvent(false));
                    }
                    ViewUtils.a(b.getActivity(), FeedFragment.o(b));
                }
                c = i1;
                FeedFragment.e(b);
            }

            
            {
                b = FeedFragment.this;
                a = onscrolllistener;
                super();
            }
        });
    }

    static android.view.ViewTreeObserver.OnGlobalLayoutListener q(FeedFragment feedfragment)
    {
        return feedfragment.G;
    }

    private void q()
    {
        if (!a && (d.c() != null || !w()))
        {
            int i1 = n.getLastVisiblePosition();
            if (!m.isEmpty() && i1 > -20 + m.getCount())
            {
                LoadFeedPageTask.a(this);
                return;
            }
        }
    }

    static View r(FeedFragment feedfragment)
    {
        return feedfragment.v;
    }

    private void r()
    {
        if (D != null)
        {
            return;
        } else
        {
            D = (TextView)((ViewStub)d(0x7f0a01c9)).inflate().findViewById(0x7f0a01df);
            D.setOnClickListener(new android.view.View.OnClickListener() {

                final FeedFragment a;

                public void onClick(View view)
                {
                    view.setVisibility(8);
                    FeedFragment.p(a).setVisibility(0);
                }

            
            {
                a = FeedFragment.this;
                super();
            }
            });
            return;
        }
    }

    static EditText s(FeedFragment feedfragment)
    {
        return feedfragment.u;
    }

    private void s()
    {
        if (u != null)
        {
            return;
        } else
        {
            View view = ((ViewStub)d(0x7f0a01ca)).inflate();
            u = (EditText)view.findViewById(0x7f0a01e0);
            v = view.findViewById(0x7f0a0034);
            u.addTextChangedListener(new TextWatcher() {

                final FeedFragment a;

                public void afterTextChanged(Editable editable)
                {
                }

                public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
                {
                }

                public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
                {
                    ViewTreeObserver viewtreeobserver = FeedFragment.d(a).getViewTreeObserver();
                    if (viewtreeobserver == null)
                    {
                        throw new NullPointerException();
                    }
                    viewtreeobserver.addOnGlobalLayoutListener(FeedFragment.q(a));
                    FeedFragment.l(a).getFilter().filter(charsequence.toString().trim());
                    if (TextUtils.isEmpty(charsequence))
                    {
                        FeedFragment.r(a).setVisibility(4);
                        return;
                    } else
                    {
                        FeedFragment.r(a).setVisibility(0);
                        return;
                    }
                }

            
            {
                a = FeedFragment.this;
                super();
            }
            });
            v.setOnClickListener(new android.view.View.OnClickListener() {

                final FeedFragment a;

                public void onClick(View view1)
                {
                    FeedFragment.s(a).setText("");
                }

            
            {
                a = FeedFragment.this;
                super();
            }
            });
            return;
        }
    }

    static UserPrefs t(FeedFragment feedfragment)
    {
        return feedfragment.j;
    }

    private void t()
    {
        s();
        t.setVisibility(4);
        C.setVisibility(8);
        s.setVisibility(8);
        ViewUtils.c(D, 8);
        u.setVisibility(0);
        u.requestFocus();
        I.showSoftInput(u, 0);
        a = true;
        h();
        v();
        ViewUtils.c(F, 8);
        m.setNotifyOnChange(false);
        ListViewAdapterList listviewadapterlist = d.e();
        ListViewAdapterList listviewadapterlist1 = ConversationUtils.a();
        listviewadapterlist.a(null);
        listviewadapterlist1.a(null);
        m.clear();
        m.addAll(listviewadapterlist1);
        m.notifyDataSetChanged();
    }

    private void u()
    {
        t.setVisibility(0);
        C.setVisibility(0);
        s.setVisibility(0);
        if (u != null)
        {
            u.setText("");
            u.clearFocus();
            u.setVisibility(4);
        }
        ViewUtils.c(E, 8);
        I.hideSoftInputFromWindow(getView().getWindowToken(), 0);
        a = false;
        h();
        n();
        d.e().a(m);
        d.j();
    }

    private void v()
    {
        android.view.ViewGroup.LayoutParams layoutparams = B.getLayoutParams();
        if (layoutparams == null)
        {
            return;
        } else
        {
            layoutparams.height = 1;
            B.setLayoutParams(layoutparams);
            B.setVisibility(8);
            return;
        }
    }

    private boolean w()
    {
        return B.getVisibility() == 8;
    }

    private void x()
    {
        boolean flag = H().getBooleanExtra("makeSyncRequest", false);
        boolean flag1 = UserPrefs.P();
        Timber.c("FeedFragment", (new StringBuilder()).append("Make Sync syncreq = ").append(flag).append(" ").append(flag1).toString(), new Object[0]);
        if (flag || flag1)
        {
            Timber.c("FeedFragment", "Spinning off Sync request!", new Object[0]);
            if (n != null && q != null)
            {
                SyncAllTask.b(q);
                UserPrefs.c(false);
            }
        }
    }

    private void y()
    {
        if (a)
        {
            ListViewAdapterList listviewadapterlist = ConversationUtils.a();
            m.clear();
            m.addAll(listviewadapterlist);
            m.notifyDataSetChanged();
            return;
        } else
        {
            m.notifyDataSetChanged();
            return;
        }
    }

    public float a(View view)
    {
        View view1;
        if (view != null)
        {
            if ((view1 = view.findViewById(0x7f0a01d7)) != null)
            {
                return view1.getTranslationX();
            }
        }
        return 0.0F;
    }

    public ChatConversation a(MotionEvent motionevent)
    {
        ChatConversation chatconversation = a(motionevent.getX(), motionevent.getY());
        if (motionevent.getAction() == 0)
        {
            L = motionevent;
            if (chatconversation != null)
            {
                SnapListItemHandler.a().a(chatconversation, getActivity());
            }
        }
        return chatconversation;
    }

    public void a(View view, int i1, boolean flag)
    {
    }

    public void a(com.snapchat.android.api.chat.LoadFeedPageTask.TaskStatus taskstatus)
    {
        android.view.ViewGroup.LayoutParams layoutparams = B.getLayoutParams();
        if (layoutparams == null)
        {
            return;
        }
        static class _cls17
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.api.chat.LoadFeedPageTask.TaskStatus.values().length];
                try
                {
                    a[com.snapchat.android.api.chat.LoadFeedPageTask.TaskStatus.RUNNING.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.api.chat.LoadFeedPageTask.TaskStatus.FAILED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.api.chat.LoadFeedPageTask.TaskStatus.EMPTY_RESPONSE_REACHED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls17.a[taskstatus.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            layoutparams.height = -2;
            B.setLayoutParams(layoutparams);
            B.setVisibility(0);
            B.findViewById(0x7f0a0102).setVisibility(0);
            B.findViewById(0x7f0a01d4).setVisibility(4);
            return;

        case 2: // '\002'
            layoutparams.height = -2;
            B.setLayoutParams(layoutparams);
            B.setVisibility(0);
            B.findViewById(0x7f0a0102).setVisibility(4);
            B.findViewById(0x7f0a01d4).setVisibility(0);
            return;

        case 3: // '\003'
            v();
            break;
        }
    }

    public void a(List list)
    {
        if (a && (list == null || list.isEmpty()))
        {
            A();
            E.setVisibility(0);
            return;
        } else
        {
            ViewUtils.c(E, 8);
            return;
        }
    }

    public boolean a(View view, float f1, float f2, float f3, float f4)
    {
        View view1;
        if (view != null)
        {
            if ((view1 = view.findViewById(0x7f0a01d7)) != null)
            {
                if (L != null && f1 > 0.0F)
                {
                    b(a(f3, f4));
                    L = null;
                }
                float f5 = 1.5F * f1;
                int i1 = b(((View) (null)));
                if (Math.abs(f5) < (float)i1 || a(view) < (float)i1)
                {
                    if (Math.abs(f5) >= (float)i1 && a(view) < (float)i1)
                    {
                        view1.setTranslationX(i1);
                    } else
                    {
                        view1.setTranslationX(f5);
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public int b(View view)
    {
        FragmentActivity fragmentactivity = getActivity();
        android.content.res.Resources.Theme theme;
        if (fragmentactivity != null)
        {
            if ((theme = fragmentactivity.getTheme()) != null)
            {
                TypedValue typedvalue = new TypedValue();
                theme.resolveAttribute(0x101004d, typedvalue, true);
                TypedValue.coerceToString(typedvalue.type, typedvalue.data);
                return (int)typedvalue.getDimension(fragmentactivity.getResources().getDisplayMetrics());
            }
        }
        return 0;
    }

    public boolean b()
    {
        return a;
    }

    public boolean b(MotionEvent motionevent)
    {
        int i1 = (int)motionevent.getX();
        int j1 = (int)motionevent.getY();
        int k1 = n.pointToPosition(i1, j1);
        return a((ChatConversation)n.getItemAtPosition(k1));
    }

    public void c(View view)
    {
        c.a(new AllowAccessToChatFragmentEvent(true));
        c.a(new UserSwipedIntoChatEvent(view));
    }

    public boolean c()
    {
        return y;
    }

    protected void d_()
    {
        e.b("FIRST_MEDIA_OPENED");
        f.d("feed");
        if (m != null)
        {
            m.a().clear();
            m.notifyDataSetChanged();
        }
        C.setVisibility(0);
        ViewUtils.c(D, 8);
        if (a)
        {
            u();
        }
        h();
        D();
    }

    public void e(boolean flag)
    {
        c.a(new CameraStateEvent(true));
    }

    public boolean e()
    {
        if (a)
        {
            u();
            return true;
        } else
        {
            return false;
        }
    }

    void h()
    {
        Iterator iterator = ViewUtils.a(n).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            FeedAdapter.FeedViewHolder feedviewholder = (FeedAdapter.FeedViewHolder)((View)iterator.next()).getTag();
            if (feedviewholder != null)
            {
                feedviewholder.e = true;
                if (feedviewholder.d != null)
                {
                    feedviewholder.d.cancel();
                    feedviewholder.d = null;
                }
                feedviewholder.a.clearAnimation();
                feedviewholder.b.clearAnimation();
            }
        } while (true);
    }

    protected void i()
    {
        List list = d.d();
        if (list.size() > 0 && (((ChatConversation)list.get(0)).e() == 0 || ((ChatConversation)list.get(0)).g() != null && ((ChatConversation)list.get(0)).g().U()))
        {
            h.a(com.snapchat.android.analytics.NetworkAnalytics.PageContext.FEED);
        }
    }

    protected boolean k()
    {
        if (ReleaseManager.f() && PreferenceUtils.a(SharedPreferenceKey.ak.a(), false))
        {
            PreferenceUtils.b(SharedPreferenceKey.br.a(), "Upgrade your app");
            PreferenceUtils.b(SharedPreferenceKey.bq.a(), getString(0x7f0c0123));
        } else
        {
            boolean flag;
            if (i.a() - j.aC() >= j.aD())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!j.az() || !j.ax() || !flag)
            {
                return false;
            }
        }
        return true;
    }

    public void onChangeWindowMarginEvent(ChangeWindowMarginEvent changewindowmarginevent)
    {
        if (changewindowmarginevent.a)
        {
            ViewUtils.a(G(), x, getActivity());
            return;
        } else
        {
            ViewUtils.a(x);
            return;
        }
    }

    public void onClosePtrEvent(ClosePtrEvent closeptrevent)
    {
        o.a();
    }

    public void onConversationsUpdatedFromServer(ConversationListUpdatedEvent conversationlistupdatedevent)
    {
        y();
        n();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        TimeLogger.a();
        x = layoutinflater.inflate(0x7f040049, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        I = (InputMethodManager)getActivity().getSystemService("input_method");
        l();
        TimeLogger.b();
        return x;
    }

    public void onFeedIconRefreshedEvent(FeedIconRefreshedEvent feediconrefreshedevent)
    {
        y();
    }

    public void onFeedRefreshedEvent(SnapMessageFeedRefreshedEvent snapmessagefeedrefreshedevent)
    {
        ViewTreeObserver viewtreeobserver = n.getViewTreeObserver();
        if (viewtreeobserver == null)
        {
            return;
        }
        viewtreeobserver.addOnGlobalLayoutListener(G);
        snapmessagefeedrefreshedevent.b();
        y();
        String s1 = snapmessagefeedrefreshedevent.a(getActivity());
        if (!s1.equals(""))
        {
            AlertDialogUtils.a(s1, getActivity());
            if (snapmessagefeedrefreshedevent.a() == com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent.RefreshError.d)
            {
                q.F();
                ActivityLauncher.a(getActivity());
            }
        }
        if (o != null)
        {
            o.e();
            e.c("PULL_TO_REFRESH");
        }
        n();
    }

    public void onFeedTimerChangeEvent(FeedTimerChangeEvent feedtimerchangeevent)
    {
        String s1 = UserPrefs.k();
        if (s1 != null && feedtimerchangeevent.a() != null)
        {
            a(ChatUtils.a(s1, feedtimerchangeevent.a()));
        }
    }

    public void onHideSnapEvent(HideSnapMessageEvent hidesnapmessageevent)
    {
        ViewUtils.a(G(), d(0x7f0a01c5), getActivity());
    }

    public void onLoadSnapMediaEvent(LoadSnapMediaEvent loadsnapmediaevent)
    {
        if (loadsnapmediaevent.a == com.snapchat.android.util.eventbus.LoadSnapMediaEvent.LoadSnapMediaEventType.b)
        {
            i();
        }
        m.notifyDataSetChanged();
    }

    public void onLockScreenOpenedEvent(LockScreenOpenedEvent lockscreenopenedevent)
    {
        onResume();
    }

    public void onNewChatMessageReceived(NewChatMessageReceivedEvent newchatmessagereceivedevent)
    {
        y();
    }

    public void onRefreshOnFriendActionEvent(RefreshOnFriendActionEvent refreshonfriendactionevent)
    {
        y();
    }

    public void onResume()
    {
        TimeLogger.a();
        super.onResume();
        for (q = User.c(); !((PowerManager)b("power")).isScreenOn() || ((KeyguardManager)b("keyguard")).inKeyguardRestrictedInputMode();)
        {
            return;
        }

        b.c(getActivity());
        x();
        m.notifyDataSetChanged();
        TimeLogger.b();
    }

    public void onRetryFailedSnapEvent(RetryFailedSnapEvent retryfailedsnapevent)
    {
        m.notifyDataSetChanged();
    }

    public void onScrollFeedToTopEvent(ScrollFeedToTopEvent scrollfeedtotopevent)
    {
        n.post(new Runnable() {

            final FeedFragment a;

            public void run()
            {
                FeedFragment.d(a).setSelection(0);
                View view = FeedFragment.d(a).getChildAt(0);
                if (view != null)
                {
                    view.requestFocus();
                }
            }

            
            {
                a = FeedFragment.this;
                super();
            }
        });
    }

    public void onSendSnapRequestCompleteEvent(SendSnapRequestCompleteEvent sendsnaprequestcompleteevent)
    {
        m.notifyDataSetChanged();
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s1)
    {
        if (TextUtils.equals(SharedPreferenceKey.bp.a(), s1))
        {
            C();
        }
    }

    public void onSnapSelectedForReplayEvent(SnapSelectedForReplayEvent snapselectedforreplayevent)
    {
        m.notifyDataSetChanged();
    }

    public void onSnapSelectedForRetryEvent(SnapSelectedForRetryEvent snapselectedforretryevent)
    {
        m.notifyDataSetChanged();
    }

    public void onSnapSendInitiated(SnapSendInitiatedEvent snapsendinitiatedevent)
    {
        m.notifyDataSetChanged();
    }

    public void onStart()
    {
        super.onStart();
        UserPrefs.a(this);
    }

    public void onStop()
    {
        super.onStop();
        UserPrefs.b(this);
    }

    public void onSyncAllCompletedEvent(SyncAllCompletedEvent syncallcompletedevent)
    {
        List list = d.d();
        if (syncallcompletedevent.c() && getUserVisibleHint())
        {
            h.a(com.snapchat.android.analytics.NetworkAnalytics.PageContext.FEED, syncallcompletedevent.a());
            if (list.size() == 0 || ((ChatConversation)list.get(0)).e() == 0 || ((ChatConversation)list.get(0)).g().U())
            {
                h.b(com.snapchat.android.analytics.NetworkAnalytics.PageContext.FEED, syncallcompletedevent.a());
            }
        }
    }

    public void onUpdateFeedEvent(UpdateFeedEvent updatefeedevent)
    {
        updatefeedevent.a();
        y();
        q();
        n();
    }

    public void onUserLoadedEvent(UserLoadedEvent userloadedevent)
    {
        if (userloadedevent != null && userloadedevent.a != null && q == null)
        {
            q = userloadedevent.a;
            x();
        }
        v();
        n();
    }

    protected void s_()
    {
        TimeLogger.a();
        f.b("feed");
        super.s_();
        ViewUtils.a(G(), x, getActivity());
        c.a(new CancelReplyEvent());
        getActivity().setVolumeControlStream(3);
        if (getActivity() instanceof LandingPageActivity)
        {
            ((LandingPageActivity)getActivity()).a().a(com.snapchat.android.analytics.NotificationAnalytics.NotificationDestinationType.FEED);
        }
        if (J != null)
        {
            J.c(true);
        }
        if (PreferenceManager.getDefaultSharedPreferences(getActivity()).getBoolean(SharedPreferenceKey.x.a(), false))
        {
            View view = E();
            if (J != null)
            {
                J.a(view, 2);
            }
        }
        d.k();
        if (m != null)
        {
            m.notifyDataSetChanged();
        }
        if (a)
        {
            t();
        } else
        {
            u();
        }
        C();
        TimeLogger.b();
    }

}
