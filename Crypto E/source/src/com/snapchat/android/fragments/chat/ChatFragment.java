// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.GestureDetectorCompat;
import android.text.Editable;
import android.text.Layout;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.format.DateUtils;
import android.text.style.ImageSpan;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.NotificationAnalytics;
import com.snapchat.android.analytics.RecentStoryReplyAnalyticsManager;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.api2.cash.GetCashEligibilityTask;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.cash.CashtagParser;
import com.snapchat.android.cash.ReceivingCashManager;
import com.snapchat.android.cash.SendingCashManager;
import com.snapchat.android.chat.ChatMediaExpander;
import com.snapchat.android.chat.ChatMessageReleaser;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.database.table.NotificationTable;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.chat.ChatDateHeader;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatHeader;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatScreenshot;
import com.snapchat.android.model.chat.ChatUnknown;
import com.snapchat.android.model.chat.ISavableChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.screenshotdetection.ChatScreenshotWatcher;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.ui.CashReceiverView;
import com.snapchat.android.ui.CashSwiperView;
import com.snapchat.android.ui.ChatCameraButton;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.snapchat.android.ui.ImageResource;
import com.snapchat.android.ui.ImageResourceView;
import com.snapchat.android.ui.ObservableAboveTheFoldListView;
import com.snapchat.android.ui.SpyRelativeLayout;
import com.snapchat.android.ui.cash.CashTooltip;
import com.snapchat.android.ui.here.DisconnectReason;
import com.snapchat.android.ui.here.DummyStreamView;
import com.snapchat.android.ui.here.HereTooltip;
import com.snapchat.android.ui.here.HoldToStreamView;
import com.snapchat.android.ui.here.StreamView;
import com.snapchat.android.ui.listeners.AdapterOnGetViewListener;
import com.snapchat.android.ui.listeners.MultipleAbsListViewOnScrollListeners;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener;
import com.snapchat.android.util.ActivityLauncher;
import com.snapchat.android.util.ApiHelper;
import com.snapchat.android.util.CashUtils;
import com.snapchat.android.util.DateTimeUtils;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.SnapListItemHandler;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.animation.AnimatorEndListener;
import com.snapchat.android.util.chat.ChatMessagePaginator;
import com.snapchat.android.util.chat.EmojiDetector;
import com.snapchat.android.util.chat.SnapchatUrlSpan;
import com.snapchat.android.util.chat.UrlType;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.AdjustForQuickSnapEvent;
import com.snapchat.android.util.eventbus.AllowAccessToChatFragmentEvent;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.CancelInChatSnapEvent;
import com.snapchat.android.util.eventbus.CancelQuickSnapEvent;
import com.snapchat.android.util.eventbus.CashRainEvent;
import com.snapchat.android.util.eventbus.ChangePreviewQualityEvent;
import com.snapchat.android.util.eventbus.ChangeWindowMarginEvent;
import com.snapchat.android.util.eventbus.ChatLinkClickedEvent;
import com.snapchat.android.util.eventbus.ChatSwipeStartedEvent;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.ClearChatTextEvent;
import com.snapchat.android.util.eventbus.FeedTimerChangeEvent;
import com.snapchat.android.util.eventbus.HideSnapMessageEvent;
import com.snapchat.android.util.eventbus.InChatSnapEvent;
import com.snapchat.android.util.eventbus.LoadConversationPageTaskEvent;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent;
import com.snapchat.android.util.eventbus.PresenceUpdatedEvent;
import com.snapchat.android.util.eventbus.QuickSnapEvent;
import com.snapchat.android.util.eventbus.ScrollFeedToTopEvent;
import com.snapchat.android.util.eventbus.SecureChatSessionConnectedEvent;
import com.snapchat.android.util.eventbus.SetPagingEnabledEvent;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.eventbus.SnapMessageViewingEvent;
import com.snapchat.android.util.eventbus.SnapSelectedForReplayEvent;
import com.snapchat.android.util.eventbus.SwitchToInChatCameraEvent;
import com.snapchat.android.util.eventbus.SwitchToQuickSnapCameraEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.listview.ListViewUtils;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFeedItemViewingSessionFactory, ChatMediaExpansionCalculator, ChatConversationAdapter, ChatFeedItemViewingSession

public class ChatFragment extends SnapchatFragment
    implements ObservableScrollViewCallbacks, ChatConversationAdapter.AdapterUiVisibilityListener, com.snapchat.android.ui.CashSwiperView.CashSwiperListener, com.snapchat.android.ui.ObservableAboveTheFoldListView.ObservableAboveTheFoldListViewInterface, com.snapchat.android.ui.here.StreamView.StreamViewCallback, AdapterOnGetViewListener, com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeableListItemInterface
{
    class BottomScrollingGestureDetector extends android.view.GestureDetector.SimpleOnGestureListener
    {

        final ChatFragment a;

        public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
        {
            return false;
        }

        private BottomScrollingGestureDetector()
        {
            a = ChatFragment.this;
            super();
        }

    }

    class ExpandChatFeedItemOnScrollListener
        implements android.widget.AbsListView.OnScrollListener
    {

        final ChatFragment a;
        private boolean b;
        private View c;
        private ChatFeedItem d;

        public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
        {
            if (b)
            {
                ChatFeedItem chatfeeditem = (ChatFeedItem)abslistview.getItemAtPosition(i1);
                if (chatfeeditem != null)
                {
                    if (c == null)
                    {
                        View view = abslistview.getChildAt(0);
                        if (Math.abs(view.getTop()) <= 100 && chatfeeditem.ar())
                        {
                            c = view;
                            d = chatfeeditem;
                            ChatFragment.a(a, ChatFragment.T(a).a(d, c));
                            if (ChatFragment.U(a) != null)
                            {
                                ChatFragment.U(a).a();
                            }
                        }
                    } else
                    if (Math.abs(c.getTop()) > 100)
                    {
                        if (ChatFragment.U(a) != null)
                        {
                            ChatFragment.U(a).b();
                        }
                        c = null;
                        return;
                    }
                }
            }
        }

        public void onScrollStateChanged(AbsListView abslistview, int i1)
        {
            int l1;
            boolean flag;
            int j1;
            int k1;
            ChatFeedItem chatfeeditem;
            ChatFeedItem chatfeeditem1;
            if (i1 == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            b = flag;
            if (i1 != 0)
            {
                break MISSING_BLOCK_LABEL_431;
            }
            ChatFragment.g(a).setIsActive(true);
            j1 = ChatFragment.g(a).getFirstVisiblePosition();
            k1 = ChatFragment.g(a).getLastVisiblePosition();
            chatfeeditem = (ChatFeedItem)ChatFragment.g(a).getItemAtPosition(j1);
            if (j1 != k1)
            {
                chatfeeditem1 = (ChatFeedItem)ChatFragment.g(a).getItemAtPosition(k1);
            } else
            {
                chatfeeditem1 = null;
            }
            if (!ChatFragment.q(a).a(chatfeeditem, chatfeeditem1) || ListViewUtils.a(ChatFragment.g(a)))
            {
                ChatFragment.N(a);
                ChatFragment.q(a).a();
            }
            l1 = (int)ViewUtils.a(25F, a.getActivity());
            if (!ChatFragment.q(a).b()) goto _L2; else goto _L1
_L1:
            if (ChatFragment.O(a))
            {
                ViewUtils.a(ChatFragment.P(a));
                BusProvider.a().a(new TitleBarEvent(false));
                ChatFragment.g(a).scrollBy(0, -l1);
                ChatFragment.f(a, false);
            }
_L4:
            return;
_L2:
            if (ChatFragment.O(a)) goto _L4; else goto _L3
_L3:
            BusProvider.a().a(new TitleBarEvent(true));
            ChatFragment.f(a, true);
            AnimatorSet animatorset = new AnimatorSet();
            View view = ChatFragment.Q(a);
            float af1[] = new float[2];
            af1[0] = ChatFragment.Q(a).getTranslationY();
            af1[1] = ChatFragment.Q(a).getTranslationY() + (float)l1;
            android.animation.AnimatorSet.Builder builder = animatorset.play(ObjectAnimator.ofFloat(view, "translationY", af1));
            View view1 = ChatFragment.C(a);
            float af2[] = new float[2];
            af2[0] = ChatFragment.C(a).getTranslationY();
            af2[1] = ChatFragment.C(a).getTranslationY() + (float)l1;
            builder.with(ObjectAnimator.ofFloat(view1, "translationY", af2));
            animatorset.addListener(new AnimatorEndListener(this, l1) {

                final int a;
                final ExpandChatFeedItemOnScrollListener b;

                public void onAnimationEnd(Animator animator)
                {
                    ViewUtils.a(ChatFragment.R(b.a), ChatFragment.S(b.a), b.a.getActivity());
                    ChatFragment.Q(b.a).setTranslationY(0.0F);
                    ChatFragment.C(b.a).setTranslationY(0.0F);
                    ChatFragment.g(b.a).scrollBy(0, a);
                }

            
            {
                b = expandchatfeeditemonscrolllistener;
                a = i1;
                super();
            }
            });
            animatorset.setDuration(200L);
            animatorset.start();
            return;
            ChatFragment.g(a).setIsActive(false);
            return;
        }
    }

    class LoadConversationOnScrollListener
        implements android.widget.AbsListView.OnScrollListener
    {

        final ChatFragment a;

        public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
        {
        }

        public void onScrollStateChanged(AbsListView abslistview, int i1)
        {
label0:
            {
                if (i1 == 0)
                {
                    ChatFragment.d(a, 0.0F);
                }
                if (!ChatFragment.w(a).isEmpty() && abslistview.getFirstVisiblePosition() < 20 && !ChatFragment.x(a).isEmpty() && ChatFragment.h(a) != null)
                {
                    if (!ChatFragment.V(a).d())
                    {
                        break label0;
                    }
                    ChatFragment.g(a, false);
                }
                return;
            }
            com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus taskstatus = ChatFragment.y(a).a(ChatFragment.h(a).u(), true);
            a.a(taskstatus);
        }

        private LoadConversationOnScrollListener()
        {
            a = ChatFragment.this;
            super();
        }

    }


    public static PendingIntent a;
    private static boolean ap;
    public static String b;
    public static String c;
    private static String h;
    private ChatConversationAdapter B;
    private boolean C;
    private boolean D;
    private com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod E;
    private ChatConversation F;
    private boolean G;
    private List H;
    private int I;
    private boolean J;
    private View K;
    private View L;
    private View M;
    private long N;
    private CashSwiperView O;
    private boolean P;
    private boolean Q;
    private CashReceiverView R;
    private boolean S;
    private Handler T;
    private Handler U;
    private DictionaryEasyMetric V;
    private ChatMessagePaginator W;
    private ChatMessageReleaser X;
    private ChatConversationManager Y;
    private Handler Z;
    private boolean aa;
    private ChatMediaExpander ab;
    private View ac;
    private ChatMediaExpansionCalculator ad;
    private float ae;
    private int af;
    private int ag;
    private int ah;
    private boolean ai;
    private float aj;
    private GestureDetectorCompat ak;
    private Friend al;
    private final HashMap am;
    private final HashMap an;
    private boolean ao;
    private HereTooltip aq;
    private CashTooltip ar;
    private CashFeedItem as;
    private boolean at;
    private ChatFeedItemViewingSessionFactory au;
    private ChatFeedItemViewingSession av;
    private boolean aw;
    protected StreamView d;
    protected CashtagParser e;
    protected SendingCashManager f;
    protected ReceivingCashManager g;
    private final SendingMailman i;
    private final SnapchatServiceManager j;
    private final RecentStoryReplyAnalyticsManager k;
    private final LoadConversationPageTaskExecutor l;
    private View m;
    private View n;
    private View o;
    private View p;
    private TextView q;
    private CursorCallbackEditText r;
    private float s;
    private float t;
    private ChatCameraButton u;
    private ObservableAboveTheFoldListView v;

    public ChatFragment()
    {
        this(ChatConversationManager.a(), SendingMailman.a(), new ChatFeedItemViewingSessionFactory(), new ChatMessageReleaser(), new ChatMediaExpansionCalculator(), SnapchatServiceManager.a(), RecentStoryReplyAnalyticsManager.a(), LoadConversationPageTaskExecutor.a());
    }

    public ChatFragment(ChatConversationManager chatconversationmanager, SendingMailman sendingmailman, ChatFeedItemViewingSessionFactory chatfeeditemviewingsessionfactory, ChatMessageReleaser chatmessagereleaser, ChatMediaExpansionCalculator chatmediaexpansioncalculator, SnapchatServiceManager snapchatservicemanager, RecentStoryReplyAnalyticsManager recentstoryreplyanalyticsmanager, 
            LoadConversationPageTaskExecutor loadconversationpagetaskexecutor)
    {
        J = false;
        N = -1L;
        P = true;
        aa = true;
        ai = false;
        aj = 0.0F;
        am = new HashMap();
        an = new HashMap();
        aw = false;
        SnapchatApplication.e().a(this);
        Y = chatconversationmanager;
        i = sendingmailman;
        au = chatfeeditemviewingsessionfactory;
        X = chatmessagereleaser;
        ad = chatmediaexpansioncalculator;
        j = snapchatservicemanager;
        k = recentstoryreplyanalyticsmanager;
        l = loadconversationpagetaskexecutor;
    }

    static GestureDetectorCompat A(ChatFragment chatfragment)
    {
        return chatfragment.ak;
    }

    private void A()
    {
        if (N > 0L)
        {
            AnalyticsEvents.a(SystemClock.elapsedRealtime() - N);
            N = -1L;
        }
    }

    static View B(ChatFragment chatfragment)
    {
        return chatfragment.o;
    }

    private boolean B()
    {
        return e.a(r.getEditableText()) > 0;
    }

    static View C(ChatFragment chatfragment)
    {
        return chatfragment.n;
    }

    private void C()
    {
        if (O != null)
        {
            return;
        } else
        {
            O = (CashSwiperView)((ViewStub)d(0x7f0a0100)).inflate().findViewById(0x7f0a0101);
            O.setListener(this);
            return;
        }
    }

    static View D(ChatFragment chatfragment)
    {
        return chatfragment.p;
    }

    private void D()
    {
        aq = (HereTooltip)d(0x7f0a00fd);
        ar = (CashTooltip)d(0x7f0a00fe);
        Z = new Handler(Looper.getMainLooper());
        T = new Handler(Looper.getMainLooper());
        R = (CashReceiverView)x.findViewById(0x7f0a00ff);
        U = new Handler(Looper.getMainLooper());
        ak = new GestureDetectorCompat(getActivity(), new BottomScrollingGestureDetector());
        ((SpyRelativeLayout)x.findViewById(0x7f0a00f0)).a(new com.snapchat.android.ui.SpyRelativeLayout.SpyListener() {

            final ChatFragment a;

            public void a(MotionEvent motionevent)
            {
                if (CashUtils.a(ChatFragment.b(a)) && !a.d.e())
                {
                    if (!ChatFragment.c(a).hasMessages(5) && motionevent.getPointerCount() >= 2 && !ChatFragment.d(a))
                    {
                        ChatFragment.e(a);
                        ChatFragment.c(a).postDelayed(new Runnable(this) {

                            final _cls2 a;

                            public void run()
                            {
                                ChatFragment.a(a.a, com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod.b);
                            }

            
            {
                a = _pcls2;
                super();
            }
                        }, 300L);
                        ChatFragment.c(a).sendEmptyMessage(5);
                        return;
                    }
                    if (motionevent.getAction() == 1 || motionevent.getAction() == 3)
                    {
                        ChatFragment.c(a).removeCallbacksAndMessages(null);
                        return;
                    }
                }
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        d(0x7f0a00f4).setOnClickListener(new android.view.View.OnClickListener() {

            final ChatFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        LayoutInflater layoutinflater;
        SwipeableListItemTouchListener swipeablelistitemtouchlistener;
        ArrayList arraylist;
        if (ApiHelper.b)
        {
            d = (HoldToStreamView)d(0x7f0a00f7);
            d(0x7f0a00f8).setVisibility(8);
        } else
        {
            d = (DummyStreamView)d(0x7f0a00f8);
            d(0x7f0a00f7).setVisibility(8);
        }
        m = d(0x7f0a002e);
        n = d(0x7f0a00f6);
        o = d(0x7f0a00f9);
        p = d(0x7f0a00fc);
        H = new ArrayList();
        q = (TextView)d(0x7f0a00f5);
        r = (CursorCallbackEditText)d(0x7f0a00fa);
        s = 1.401298E-45F;
        t = 1.401298E-45F;
        r.setInputType(49153);
        r.setHorizontallyScrolling(false);
        r.setMaxLines(8);
        r.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final ChatFragment a;

            public boolean onEditorAction(TextView textview, int i1, KeyEvent keyevent)
            {
                if (i1 == 4 || keyevent != null && keyevent.getKeyCode() == 66)
                {
                    ChatFragment.f(a);
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        r.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final ChatFragment a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    ChatFragment.g(a).setIsActive(true);
                }
                if (ChatFragment.h(a) != null)
                {
                    ChatFragment.h(a).k(false);
                }
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        r.addTextChangedListener(new TextWatcher() {

            final ChatFragment a;
            private boolean b;
            private boolean c;

            public void afterTextChanged(Editable editable)
            {
                if (!c)
                {
                    if (b)
                    {
                        int i1 = Selection.getSelectionStart(editable);
                        int j1 = Selection.getSelectionEnd(editable);
                        if (i1 == j1 && ChatFragment.j(a))
                        {
                            ImageSpan aimagespan[] = (ImageSpan[])editable.getSpans(i1, j1, android/text/style/ImageSpan);
                            if (aimagespan.length > 0)
                            {
                                c = true;
                                editable.replace(editable.getSpanStart(aimagespan[0]), editable.getSpanEnd(aimagespan[0]), "");
                                editable.removeSpan(aimagespan[0]);
                                c = false;
                                if (!ChatFragment.j(a))
                                {
                                    ChatFragment.a(a, null);
                                }
                            }
                        }
                    }
                    boolean flag = ChatFragment.a(a);
                    Layout layout = ChatFragment.k(a).getLayout();
                    boolean flag1;
                    byte byte0;
                    if (layout != null)
                    {
                        if (ChatFragment.l(a) == 1.401298E-45F)
                        {
                            ChatFragment.a(a, ChatFragment.i(a).getLeft());
                        }
                        if (ChatFragment.m(a) == 1.401298E-45F)
                        {
                            ChatFragment.b(a, ChatFragment.k(a).getPaddingLeft());
                        }
                        float f1 = ChatFragment.m(a) + layout.getLineWidth(0);
                        ChatCameraButton chatcamerabutton;
                        HereTooltip heretooltip;
                        ChatConversation chatconversation;
                        boolean flag3;
                        if (layout.getLineCount() > 1)
                        {
                            flag3 = true;
                        } else
                        {
                            flag3 = false;
                        }
                        if (flag3 || f1 >= ChatFragment.l(a))
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                    } else
                    {
                        flag1 = false;
                    }
                    chatcamerabutton = ChatFragment.i(a);
                    if (flag1)
                    {
                        byte0 = 8;
                    } else
                    {
                        byte0 = 0;
                    }
                    chatcamerabutton.setVisibility(byte0);
                    if (ChatFragment.h(a) != null)
                    {
                        heretooltip = ChatFragment.n(a);
                        chatconversation = ChatFragment.h(a);
                        boolean flag2;
                        if (!flag1 && !flag)
                        {
                            flag2 = true;
                        } else
                        {
                            flag2 = false;
                        }
                        heretooltip.a(chatconversation, flag2);
                    }
                    if (ChatFragment.h(a) != null && ChatFragment.h(a).az())
                    {
                        if (editable.length() == 0)
                        {
                            ChatFragment.h(a).k(false);
                            return;
                        } else
                        {
                            ChatFragment.h(a).k(true);
                            return;
                        }
                    }
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
                boolean flag;
                if (k1 <= 2)
                {
                    String s1 = charsequence.subSequence(i1, i1 + k1).toString();
                    ChatFragment.i(a).setIsEmoji(EmojiDetector.a(s1, false));
                } else
                {
                    ChatFragment.i(a).setIsEmoji(false);
                }
                flag = false;
                if (k1 < j1)
                {
                    flag = true;
                }
                b = flag;
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        r.a(new com.snapchat.android.ui.CursorCallbackEditText.SelectionChangedListener() {

            final ChatFragment a;

            public void a(int i1, int j1)
            {
                ChatFragment.a(a);
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        r.setOnTouchListener(new android.view.View.OnTouchListener() {

            final ChatFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0)
                {
                    ChatFragment.o(a).clearFlags(512);
                    ViewUtils.a(ChatFragment.p(a));
                    ChatFragment.g(a).d();
                    (new Handler()).post(new Runnable(this) {

                        final _cls8 a;

                        public void run()
                        {
                            ChatFragment.c(a.a, 0.0F);
                            ChatFragment.q(a.a).a();
                        }

            
            {
                a = _pcls8;
                super();
            }
                    });
                }
                return false;
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        u = (ChatCameraButton)d(0x7f0a00fb);
        u.setOnClickListener(new android.view.View.OnClickListener() {

            final ChatFragment a;

            public void onClick(View view)
            {
                if (ChatFragment.i(a).getIsEmoji())
                {
                    ChatFragment.f(a);
                } else
                {
                    if (ChatFragment.i(a).getCashSwipeDetected())
                    {
                        AnalyticsEvents.P();
                        ChatFragment.e(a);
                        ChatFragment.a(a, com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod.a);
                        return;
                    }
                    if (ChatFragment.i(a).getCashtagDetected())
                    {
                        if (ChatFragment.h(a) != null)
                        {
                            AnalyticsEvents.P();
                            ChatFragment.r(a);
                            ChatFragment.a(a, ChatFragment.k(a).hasFocus());
                            ChatFragment.s(a).b();
                            int i1 = a.e.b(ChatFragment.k(a));
                            int j1 = i1 + a.e.a(ChatFragment.k(a).getEditableText());
                            int k1 = ChatFragment.k(a).getSelectionEnd();
                            CashFeedItem cashfeeditem = a.f.a(ChatFragment.h(a), j1);
                            a.f.a(cashfeeditem, new com.snapchat.android.cash.SendingCashManager.ConfirmingCashCallback(this, cashfeeditem, k1, i1) {

                                final CashFeedItem a;
                                final int b;
                                final int c;
                                final _cls9 d;

                                public void a()
                                {
                                    ChatFragment.a(d.a, a);
                                    ThreadUtils.a(new Runnable(this) {

                                        final _cls1 a;

                                        public void run()
                                        {
                                            a.d.a.e.a(ChatFragment.k(a.d.a), a.b);
                                            ChatFragment.t(a.d.a);
                                            AnalyticsEvents.x(CashUtils.a(a.c));
                                        }

            
            {
                a = _pcls1;
                super();
            }
                                    });
                                }

                                public void b()
                                {
                                    ChatFragment.t(d.a);
                                }

            
            {
                d = _pcls9;
                a = cashfeeditem;
                b = i1;
                c = j1;
                super();
            }
                            });
                            return;
                        }
                    } else
                    {
                        ChatFragment.u(a);
                        return;
                    }
                }
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        u.setOnLongClickListener(new android.view.View.OnLongClickListener() {

            final ChatFragment a;

            public boolean onLongClick(View view)
            {
                ChatFragment.v(a);
                return true;
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        u.setTouchSubscriber(d);
        W = new ChatMessagePaginator();
        v = (ObservableAboveTheFoldListView)d(0x7f0a00f3);
        v.setInterface(this);
        v.setTranscriptMode(1);
        v.setDivider(null);
        v.setDividerHeight(0);
        v.setRecyclerListener(new android.widget.AbsListView.RecyclerListener() {

            final ChatFragment a;

            public void onMovedToScrapHeap(View view)
            {
                ViewUtils.d(view);
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        v.setScrollViewCallbacks(this);
        ab = new ChatMediaExpander(v);
        layoutinflater = (LayoutInflater)getActivity().getSystemService("layout_inflater");
        ac = layoutinflater.inflate(0x7f040024, null);
        v.addHeaderView(ac, null, false);
        K = layoutinflater.inflate(0x7f040025, null);
        K.setOnClickListener(new android.view.View.OnClickListener() {

            final ChatFragment a;

            public void onClick(View view)
            {
                if (!ChatFragment.w(a).isEmpty() && !ChatFragment.x(a).isEmpty() && ChatFragment.h(a) != null)
                {
                    com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus taskstatus = ChatFragment.y(a).a(ChatFragment.h(a).u(), true);
                    a.a(taskstatus);
                }
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        L = K.findViewById(0x7f0a0102);
        M = K.findViewById(0x7f0a0103);
        v.addHeaderView(K, null, false);
        B = new ChatConversationAdapter(getActivity(), H, this, this);
        v.setAdapter(B);
        v.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ChatFragment a;

            public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
            {
                if (ChatFragment.h(a) != null) goto _L2; else goto _L1
_L1:
                int j1;
                return;
_L2:
                ChatFeedItem chatfeeditem;
                if ((j1 = i1 - ChatFragment.g(a).getHeaderViewsCount()) >= ChatFragment.x(a).size() || ((chatfeeditem = (ChatFeedItem)ChatFragment.x(a).get(j1)).d() == null || (chatfeeditem instanceof Snap) || (chatfeeditem instanceof ChatScreenshot)))
                {
                    continue; /* Loop/switch isn't completed */
                }
                if (!chatfeeditem.W() || !chatfeeditem.Y())
                {
                    break; /* Loop/switch isn't completed */
                }
                if (chatfeeditem instanceof Chat)
                {
                    ChatFragment.z(a).a(ChatFragment.h(a), (Chat)chatfeeditem, true, true);
                    return;
                }
                if (chatfeeditem instanceof CashFeedItem)
                {
                    CashFeedItem cashfeeditem = (CashFeedItem)chatfeeditem;
                    AnalyticsEvents.r(cashfeeditem.h().j());
                    ChatFragment.r(a);
                    a.f.a(ChatFragment.h(a), cashfeeditem, new com.snapchat.android.cash.SendingCashManager.SendingCashCallback(this) {

                        final _cls13 a;

                        public void a()
                        {
                            ChatFragment.t(a.a);
                        }

                        public void b()
                        {
                            ChatFragment.t(a.a);
                        }

            
            {
                a = _pcls13;
                super();
            }
                    });
                    return;
                }
                if (true) goto _L1; else goto _L3
_L3:
                if ((chatfeeditem instanceof ChatMedia) && view != null)
                {
                    View view1 = view.findViewById(0x7f0a0116);
                    if (view1 instanceof ImageResourceView)
                    {
                        ImageResourceView imageresourceview = (ImageResourceView)view1;
                        if (imageresourceview.b())
                        {
                            imageresourceview.a();
                            return;
                        }
                    }
                }
                if (!(chatfeeditem instanceof ISavableChatFeedItem) || !((ISavableChatFeedItem)chatfeeditem).j()) goto _L1; else goto _L4
_L4:
                ISavableChatFeedItem isavablechatfeeditem;
                android.widget.LinearLayout.LayoutParams layoutparams;
                android.widget.FrameLayout.LayoutParams layoutparams1;
                isavablechatfeeditem = (ISavableChatFeedItem)chatfeeditem;
                if (!chatfeeditem.ar() || view == null)
                {
                    break; /* Loop/switch isn't completed */
                }
                ChatConversationAdapter.MessageViewHolder messageviewholder = (ChatConversationAdapter.MessageViewHolder)view.getTag();
                layoutparams = (android.widget.LinearLayout.LayoutParams)messageviewholder.z.getLayoutParams();
                layoutparams1 = (android.widget.FrameLayout.LayoutParams)messageviewholder.y.getLayoutParams();
                if (layoutparams.leftMargin <= -layoutparams1.leftMargin) goto _L1; else goto _L5
_L5:
                if (!isavablechatfeeditem.n()) goto _L7; else goto _L6
_L6:
                int i2 = isavablechatfeeditem.C();
                if (chatfeeditem instanceof Chat)
                {
                    ChatFragment.z(a).a(ChatFragment.h(a), (Chat)isavablechatfeeditem, i2, false);
                }
_L9:
                ChatFragment.a(a, chatfeeditem.d());
                return;
_L7:
                int k1 = isavablechatfeeditem.B();
                if (chatfeeditem instanceof Chat)
                {
                    ChatFragment.z(a).a(ChatFragment.h(a), (Chat)isavablechatfeeditem, k1, true);
                }
                if (true) goto _L9; else goto _L8
_L8:
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
        swipeablelistitemtouchlistener = new SwipeableListItemTouchListener(v, com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeDirection.b, this) {

            final ChatFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (SnapListItemHandler.a().h())
                {
                    return true;
                }
                motionevent.getAction();
                JVM INSTR tableswitch 0 0: default 32
            //                           0 51;
                   goto _L1 _L2
_L1:
                ChatFragment.A(a).onTouchEvent(motionevent);
                return super.onTouch(view, motionevent);
_L2:
                a.a(motionevent);
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                a = ChatFragment.this;
                super(listview, swipedirection, swipeablelistiteminterface);
            }
        };
        v.setOnTouchListener(swipeablelistitemtouchlistener);
        arraylist = new ArrayList(3);
        arraylist.add(swipeablelistitemtouchlistener.a());
        arraylist.add(new LoadConversationOnScrollListener());
        v.setOnScrollListener(new MultipleAbsListViewOnScrollListeners(arraylist));
    }

    static float E(ChatFragment chatfragment)
    {
        return chatfragment.ae;
    }

    private void E()
    {
        if (ag == 0 || af == 0 || ah == 0)
        {
            Timber.f("ChatFragment", "ChatFragment getAndSetTopPanelAndMessageInputViewHeights heights are 0, getting and setting heights", new Object[0]);
            x.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                final ChatFragment a;

                public void onGlobalLayout()
                {
                    ChatFragment.a(a, ChatFragment.B(a).getHeight());
                    ChatFragment.b(a, ChatFragment.C(a).getHeight());
                    ChatFragment.c(a, ChatFragment.D(a).getHeight());
                    Object aobj[] = new Object[2];
                    aobj[0] = Float.valueOf(ChatFragment.E(a));
                    aobj[1] = Integer.valueOf(ChatFragment.F(a));
                    Timber.f("ChatFragment", "CHAT-LOG: ChatFragment getting top panel and message input view heights andsetting margins (top: %d bottom: %d)", aobj);
                    ChatFragment.g(a).setMinimumFooterHeight(ChatFragment.F(a));
                    ViewTreeObserver viewtreeobserver = ChatFragment.G(a).getViewTreeObserver();
                    if (android.os.Build.VERSION.SDK_INT >= 16)
                    {
                        viewtreeobserver.removeOnGlobalLayoutListener(this);
                        return;
                    } else
                    {
                        viewtreeobserver.removeGlobalOnLayoutListener(this);
                        return;
                    }
                }

            
            {
                a = ChatFragment.this;
                super();
            }
            });
            return;
        } else
        {
            Timber.f("ChatFragment", "ChatFragment getAndSetTopPanelAndMessageInputViewHeights heights are already set", new Object[0]);
            return;
        }
    }

    static int F(ChatFragment chatfragment)
    {
        return chatfragment.af;
    }

    private void F()
    {
        Editable editable = r.getEditableText();
        if (B())
        {
            if (F == null)
            {
                return;
            }
            R();
            ChatConversation chatconversation = F;
            String s1 = editable.toString();
            int i1 = e.a(r.getText());
            if (as == null)
            {
                Object aobj[] = new Object[2];
                aobj[0] = chatconversation.c();
                aobj[1] = CashUtils.a(i1);
                Timber.c("ChatFragment", "CASH-LOG: Confirmed CashFeedItem is null--RECONFIRMING recipient[%s] amount[%s]", aobj);
                CashFeedItem cashfeeditem = f.a(chatconversation, i1);
                f.a(cashfeeditem, new com.snapchat.android.cash.SendingCashManager.ConfirmingCashCallback(chatconversation, i1, cashfeeditem, s1, editable) {

                    final ChatConversation a;
                    final int b;
                    final CashFeedItem c;
                    final String d;
                    final Editable e;
                    final ChatFragment f;

                    public void a()
                    {
                        Object aobj1[] = new Object[2];
                        aobj1[0] = a.c();
                        aobj1[1] = CashUtils.a(b);
                        Timber.c("ChatFragment", "CASH-LOG: RECONFIRMED transaction recipient[%s] amount[%s]", aobj1);
                        ChatFragment.a(f, c);
                        ChatFragment.a(f, a, c, d);
                    }

                    public void b()
                    {
                        Object aobj1[] = new Object[2];
                        aobj1[0] = a.c();
                        aobj1[1] = CashUtils.a(b);
                        Timber.c("ChatFragment", "CASH-LOG: RECONFIRM CANCELED recipient[%s] amount[%s]", aobj1);
                        e.clearSpans();
                        ChatFragment.k(f).setText(e);
                        ChatFragment.t(f);
                    }

            
            {
                f = ChatFragment.this;
                a = chatconversation;
                b = i1;
                c = cashfeeditem;
                d = s1;
                e = editable;
                super();
            }
                });
                return;
            }
            if (as.f() != i1)
            {
                as.h().a(i1);
            }
            a(chatconversation, as, s1);
            return;
        } else
        {
            N();
            return;
        }
    }

    static View G(ChatFragment chatfragment)
    {
        return chatfragment.x;
    }

    static HashMap H(ChatFragment chatfragment)
    {
        return chatfragment.an;
    }

    static CashSwiperView I(ChatFragment chatfragment)
    {
        return chatfragment.O;
    }

    static void J(ChatFragment chatfragment)
    {
        chatfragment.V();
    }

    private boolean K()
    {
        if (!CashUtils.a(al))
        {
            ar.a(false);
            u.setCashtagDetected(false);
            u.setCashSwipeDetected(false);
        } else
        {
            boolean flag = e.a(r);
            if (flag)
            {
                int i1 = e.b(r);
                int j1 = e.a(r.getEditableText());
                if (j1 == -1)
                {
                    j1 = 0;
                }
                if (i1 == -1 || j1 + i1 >= 0xf4240)
                {
                    flag = false;
                }
            }
            boolean flag1 = r.getEditableText().toString().matches("^\\${3,}$");
            ar.a(flag);
            u.setCashtagDetected(flag);
            u.setCashSwipeDetected(flag1);
            if (flag || flag1)
            {
                return true;
            }
        }
        return false;
    }

    static boolean K(ChatFragment chatfragment)
    {
        return chatfragment.G;
    }

    static CashReceiverView L(ChatFragment chatfragment)
    {
        return chatfragment.R;
    }

    private String L()
    {
        Editable editable = r.getText();
        if (editable == null)
        {
            return null;
        } else
        {
            return editable.toString();
        }
    }

    static ChatMessageReleaser M(ChatFragment chatfragment)
    {
        return chatfragment.X;
    }

    private void M()
    {
        if (F == null)
        {
            return;
        }
        P = true;
        ViewUtils.a(getActivity(), r);
        ao = true;
        String s1 = "";
        if (!B())
        {
            s1 = L();
        }
        CameraEventAnalytics.a().a(com.snapchat.android.analytics.CameraEventAnalytics.CameraContext.SNAP_BUTTON);
        BusProvider.a().a(new SwitchToInChatCameraEvent(0, s1));
        BusProvider.a().a(new InChatSnapEvent(F.c(), s1, 0));
    }

    private void N()
    {
        String s1 = r.getText().toString();
        if (F != null)
        {
            i.a(F, s1);
            F.k(false);
        }
        r.setText("");
    }

    static void N(ChatFragment chatfragment)
    {
        chatfragment.W();
    }

    private void O()
    {
        if (F == null)
        {
            return;
        }
        P = true;
        ViewUtils.a(getActivity(), r);
        ao = true;
        String s1 = "";
        if (!B())
        {
            s1 = L();
        }
        BusProvider.a().a(new SwitchToQuickSnapCameraEvent(s1));
        BusProvider.a().a(new QuickSnapEvent(F.c(), s1, 0));
    }

    static boolean O(ChatFragment chatfragment)
    {
        return chatfragment.aa;
    }

    static View P(ChatFragment chatfragment)
    {
        return chatfragment.x;
    }

    private void P()
    {
        if (Q && !D && r.requestFocus())
        {
            ViewUtils.f(getActivity());
            G().clearFlags(512);
            ViewUtils.a(x);
            (new Handler()).post(new Runnable() {

                final ChatFragment a;

                public void run()
                {
                    ChatFragment.c(a, 0.0F);
                    ChatFragment.q(a).a();
                }

            
            {
                a = ChatFragment.this;
                super();
            }
            });
        }
        Q = false;
    }

    static View Q(ChatFragment chatfragment)
    {
        return chatfragment.m;
    }

    private void Q()
    {
        v.setIsActive(false);
        F = null;
        al = null;
        as = null;
        C = false;
    }

    static Window R(ChatFragment chatfragment)
    {
        return chatfragment.G();
    }

    private void R()
    {
        ap = true;
        P = false;
        BusProvider.a().a(new SetPagingEnabledEvent(false));
    }

    static View S(ChatFragment chatfragment)
    {
        return chatfragment.x;
    }

    private void S()
    {
        ap = false;
        P = true;
        BusProvider.a().a(new SetPagingEnabledEvent(true));
    }

    static ChatFeedItemViewingSessionFactory T(ChatFragment chatfragment)
    {
        return chatfragment.au;
    }

    private void T()
    {
        if (O.getDollarsSwiped() == 0 || F == null)
        {
            return;
        }
        if (E == com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod.a)
        {
            r.setText("");
        }
        R();
        (new AsyncTask(F, 100 * O.getDollarsSwiped()) {

            final ChatConversation a;
            final int b;
            final ChatFragment c;

            protected transient Void a(Void avoid[])
            {
                CashFeedItem cashfeeditem = c.f.a(a, b, true);
                c.f.a(cashfeeditem, new com.snapchat.android.cash.SendingCashManager.ConfirmingCashCallback(this, cashfeeditem) {

                    final CashFeedItem a;
                    final _cls23 b;

                    public void a()
                    {
                        ChatFragment.b(b.c, a);
                        b.c.f.a(b.a, a, "", new com.snapchat.android.cash.SendingCashManager.SendingCashCallback(this) {

                            final _cls1 a;

                            public void a()
                            {
                                AnalyticsEvents.b(a.a.h().j(), a.a.h().w());
                                ChatFragment.t(a.b.c);
                            }

                            public void b()
                            {
                                ChatFragment.t(a.b.c);
                            }

            
            {
                a = _pcls1;
                super();
            }
                        });
                    }

                    public void b()
                    {
                        ChatFragment.t(b.c);
                    }

            
            {
                b = _pcls23;
                a = cashfeeditem;
                super();
            }
                });
                return null;
            }

            protected Object doInBackground(Object aobj[])
            {
                return a((Void[])aobj);
            }

            
            {
                c = ChatFragment.this;
                a = chatconversation;
                b = i1;
                super();
            }
        }).execute(new Void[0]);
    }

    static ChatFeedItemViewingSession U(ChatFragment chatfragment)
    {
        return chatfragment.av;
    }

    private void U()
    {
        if (y && F.aG() > 0)
        {
            if (!aw)
            {
                a(F.aG(), F.aH());
            } else
            {
                aw = false;
            }
            F.aI();
        }
    }

    static ChatMessagePaginator V(ChatFragment chatfragment)
    {
        return chatfragment.W;
    }

    private void V()
    {
        G = false;
        S = false;
        R.animate().alpha(0.0F).setDuration(500L).setListener(new android.animation.Animator.AnimatorListener() {

            final ChatFragment a;

            public void onAnimationCancel(Animator animator)
            {
                ChatFragment.e(a, true);
            }

            public void onAnimationEnd(Animator animator)
            {
                if (!ChatFragment.K(a))
                {
                    ChatFragment.L(a).a();
                }
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        });
    }

    private void W()
    {
    }

    static float a(ChatFragment chatfragment, float f1)
    {
        chatfragment.s = f1;
        return f1;
    }

    static int a(ChatFragment chatfragment, int i1)
    {
        chatfragment.af = i1;
        return i1;
    }

    static ChatFeedItemViewingSession a(ChatFragment chatfragment, ChatFeedItemViewingSession chatfeeditemviewingsession)
    {
        chatfragment.av = chatfeeditemviewingsession;
        return chatfeeditemviewingsession;
    }

    static CashFeedItem a(ChatFragment chatfragment, CashFeedItem cashfeeditem)
    {
        chatfragment.as = cashfeeditem;
        return cashfeeditem;
    }

    private void a(float f1)
    {
        int i1 = 0;
        while (i1 <= v.getLastVisiblePosition()) 
        {
            View view = v.getChildAt(i1);
            if (view != null)
            {
                Object obj = view.getTag();
                if (obj instanceof ChatConversationAdapter.MessageViewHolder)
                {
                    ((ChatConversationAdapter.MessageViewHolder)obj).a(f1);
                }
            }
            i1++;
        }
    }

    private void a(int i1)
    {
        int j1 = v.getFirstVisiblePosition();
        do
        {
label0:
            {
                if (i1 >= j1)
                {
                    View view = v.getChildAt(i1 - j1);
                    ChatConversationAdapter.MessageViewHolder messageviewholder = (ChatConversationAdapter.MessageViewHolder)view.getTag();
                    if (messageviewholder == null)
                    {
                        break label0;
                    }
                    ChatFeedItem chatfeeditem = messageviewholder.a;
                    if (chatfeeditem == null || !(chatfeeditem instanceof ChatHeader))
                    {
                        break label0;
                    }
                    v.getAdapter().getView(i1, view, v);
                }
                return;
            }
            i1--;
        } while (true);
    }

    private void a(int i1, long l1)
    {
        if (!S)
        {
            S = true;
            long l2 = (long)(500F * (1.0F - R.getAlpha()));
            R.animate().alpha(1.0F).setListener(null).setDuration(l2);
        }
        R.a(i1, l1);
        T.removeCallbacksAndMessages(null);
        T.postDelayed(new Runnable() {

            final ChatFragment a;

            public void run()
            {
                ChatFragment.J(a);
            }

            
            {
                a = ChatFragment.this;
                super();
            }
        }, 3000L);
    }

    private void a(Context context, long l1)
    {
        AlarmManager alarmmanager = (AlarmManager)context.getSystemService("alarm");
        a = j.a(context, F.u(), l1);
        b = F.u();
        alarmmanager.cancel(a);
        alarmmanager.set(0, 60000L + System.currentTimeMillis(), a);
    }

    static void a(ChatFragment chatfragment, ChatConversation chatconversation, CashFeedItem cashfeeditem, String s1)
    {
        chatfragment.a(chatconversation, cashfeeditem, s1);
    }

    static void a(ChatFragment chatfragment, com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod swipeactivationmethod)
    {
        chatfragment.a(swipeactivationmethod);
    }

    static void a(ChatFragment chatfragment, String s1)
    {
        chatfragment.d(s1);
    }

    private void a(Friend friend)
    {
        if (CashUtils.b(friend.M()))
        {
            return;
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = friend.a();
            Timber.b("ChatFragment", "CASH-LOG: Refreshing CASH ELIGIBILITY for %s", aobj);
            GetCashEligibilityTask getcasheligibilitytask = new GetCashEligibilityTask(friend.a());
            getcasheligibilitytask.a(com/snapchat/android/api2/cash/ScCashResponsePayload, new com.snapchat.android.api2.framework.HyperRequest.JsonCallback(friend) {

                final Friend a;
                final ChatFragment b;

                public void a(ScCashResponsePayload sccashresponsepayload, NetworkResult networkresult)
                {
                    if (sccashresponsepayload != null)
                    {
                        Object aobj2[] = new Object[2];
                        aobj2[0] = a.a();
                        aobj2[1] = sccashresponsepayload.a().name();
                        Timber.b("ChatFragment", "CASH-LOG: Got CASH ELIGIBILITY for %s: %s", aobj2);
                        a.a(sccashresponsepayload.a());
                        ThreadUtils.a(new Runnable(this) {

                            final _cls1 a;

                            public void run()
                            {
                                ChatFragment.a(a.b);
                            }

            
            {
                a = _pcls1;
                super();
            }
                        });
                        return;
                    } else
                    {
                        Object aobj1[] = new Object[2];
                        aobj1[0] = a.a();
                        aobj1[1] = Integer.valueOf(networkresult.j());
                        Timber.b("ChatFragment", "CASH-LOG: FAILED to get CASH ELIGIBILITY for %s status code %d", aobj1);
                        return;
                    }
                }

                public volatile void a(Object obj, NetworkResult networkresult)
                {
                    a((ScCashResponsePayload)obj, networkresult);
                }

            
            {
                b = ChatFragment.this;
                a = friend;
                super();
            }
            });
            getcasheligibilitytask.g();
            return;
        }
    }

    private void a(CashFeedItem cashfeeditem)
    {
        CashTransaction cashtransaction = cashfeeditem.h();
        Object aobj[] = new Object[1];
        aobj[0] = StringUtils.substring(cashtransaction.f(), 0, 7);
        cashtransaction.h(getString(0x7f0c014a, aobj));
        Object aobj1[] = new Object[1];
        aobj1[0] = StringUtils.substring(cashtransaction.d(), 0, 7);
        cashtransaction.i(getString(0x7f0c014a, aobj1));
    }

    private void a(ChatConversation chatconversation, CashFeedItem cashfeeditem, String s1)
    {
        Object aobj[] = new Object[3];
        aobj[0] = cashfeeditem.d();
        aobj[1] = chatconversation.c();
        aobj[2] = cashfeeditem.h().j();
        Timber.c("ChatFragment", "CASH-LOG: SEND transaction id[%s] recipient[%s] amount[%s]", aobj);
        R();
        a(cashfeeditem);
        f.a(chatconversation, cashfeeditem, s1, new com.snapchat.android.cash.SendingCashManager.SendingCashCallback(cashfeeditem, chatconversation) {

            final CashFeedItem a;
            final ChatConversation b;
            final ChatFragment c;

            public void a()
            {
                Object aobj1[] = new Object[3];
                aobj1[0] = a.d();
                aobj1[1] = b.c();
                aobj1[2] = a.h().j();
                Timber.c("ChatFragment", "CASH-LOG: SENDING transaction id[%s] recipient[%s] amount[%s]", aobj1);
                ThreadUtils.a(new Runnable(this) {

                    final _cls21 a;

                    public void run()
                    {
                        ChatFragment.k(a.c).setText("");
                    }

            
            {
                a = _pcls21;
                super();
            }
                });
                ChatFragment.a(c, null);
                ChatFragment.H(c).remove(b.c());
                ChatFragment.t(c);
                BusProvider.a().a(new ScrollFeedToTopEvent());
                AnalyticsEvents.b(a.h().j(), a.h().w());
            }

            public void b()
            {
                ChatFragment.t(c);
            }

            
            {
                c = ChatFragment.this;
                a = cashfeeditem;
                b = chatconversation;
                super();
            }
        });
    }

    private void a(com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod swipeactivationmethod)
    {
        if (F == null || D)
        {
            return;
        } else
        {
            O.a(5000);
            E = swipeactivationmethod;
            D = true;
            Q = r.hasFocus();
            ar.b();
            CashFeedItem cashfeeditem = f.a(F, 1);
            R();
            f.a(cashfeeditem, new com.snapchat.android.cash.SendingCashManager.ConfirmingCashCallback(swipeactivationmethod) {

                final com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod a;
                final ChatFragment b;

                public void a()
                {
                    ViewUtils.a(b.getActivity(), ChatFragment.k(b));
                    ThreadUtils.a(new Runnable(this) {

                        final _cls22 a;

                        public void run()
                        {
                            AnalyticsEvents.a(a.a);
                            ChatFragment.I(a.b).b();
                        }

            
            {
                a = _pcls22;
                super();
            }
                    });
                    ChatFragment.f(false);
                    ChatFragment.c(b, true);
                    BusProvider.a().a(new SetPagingEnabledEvent(false));
                }

                public void b()
                {
                    ChatFragment.t(b);
                    ChatFragment.d(b, false);
                }

            
            {
                b = ChatFragment.this;
                a = swipeactivationmethod;
                super();
            }
            });
            return;
        }
    }

    private void a(List list, ChatFeedItem chatfeeditem)
    {
        if (I == -1 && c(chatfeeditem))
        {
            I = list.size();
        }
        list.add(chatfeeditem);
    }

    static boolean a(ChatFragment chatfragment)
    {
        return chatfragment.K();
    }

    static boolean a(ChatFragment chatfragment, boolean flag)
    {
        chatfragment.Q = flag;
        return flag;
    }

    private static boolean a(ChatFeedItem chatfeeditem, ChatFeedItem chatfeeditem1)
    {
        while (DateTimeUtils.a(chatfeeditem.ae(), chatfeeditem1.ae()) || (chatfeeditem1 instanceof ChatUnknown) && !(chatfeeditem instanceof ChatUnknown) || (chatfeeditem instanceof ChatUnknown) && !(chatfeeditem1 instanceof ChatUnknown) || !TextUtils.equals(chatfeeditem.l(), chatfeeditem1.l())) 
        {
            return true;
        }
        return false;
    }

    private boolean a(ChatFeedItem chatfeeditem, HashSet hashset, Calendar calendar)
    {
        calendar.setTimeInMillis(Long.valueOf(chatfeeditem.ae()).longValue());
        DateTimeUtils.a(calendar);
        if (hashset.add(Long.valueOf(calendar.getTimeInMillis())))
        {
            ChatDateHeader chatdateheader = new ChatDateHeader(chatfeeditem);
            a(H, ((ChatFeedItem) (chatdateheader)));
            return true;
        } else
        {
            return false;
        }
    }

    public static boolean a(String s1)
    {
        boolean flag;
        if (!TextUtils.equals(c, s1))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = s1;
        return flag;
    }

    static float b(ChatFragment chatfragment, float f1)
    {
        chatfragment.t = f1;
        return f1;
    }

    static int b(ChatFragment chatfragment, int i1)
    {
        chatfragment.ag = i1;
        return i1;
    }

    static Friend b(ChatFragment chatfragment)
    {
        return chatfragment.al;
    }

    private ChatFeedItem b(MotionEvent motionevent)
    {
        int i1 = (int)motionevent.getX();
        int j1 = (int)motionevent.getY();
        int k1 = v.pointToPosition(i1, j1);
        if (k1 >= B.getCount() + v.getHeaderViewsCount())
        {
            return null;
        } else
        {
            return (ChatFeedItem)v.getItemAtPosition(k1);
        }
    }

    public static String b(ChatFeedItem chatfeeditem)
    {
        if (!(chatfeeditem instanceof SentSnap)) goto _L2; else goto _L1
_L1:
        String s1;
        String s2 = ((SentSnap)chatfeeditem).x();
        s1 = s2.substring(0, Math.min(s2.length(), 30));
_L4:
        return s1;
_L2:
        if (!(chatfeeditem instanceof CashFeedItem))
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = ((CashFeedItem)chatfeeditem).e();
        if (s1 != null) goto _L4; else goto _L3
_L3:
        return chatfeeditem.d();
    }

    private void b(float f1)
    {
    }

    static void b(ChatFragment chatfragment, CashFeedItem cashfeeditem)
    {
        chatfragment.a(cashfeeditem);
    }

    private void b(Friend friend, boolean flag)
    {
        q.setText(friend.q());
        String s1 = friend.a();
        String s2 = (String)am.get(s1);
        r.setText(s2);
        CursorCallbackEditText cursorcallbackedittext = r;
        int i1;
        if (s2 == null)
        {
            i1 = 0;
        } else
        {
            i1 = s2.length();
        }
        cursorcallbackedittext.setSelection(i1);
        if (flag)
        {
            List list = (List)an.get(s1);
            if (list != null)
            {
                if (CashUtils.a(UserPrefs.Z()) && CashUtils.a(friend.M()))
                {
                    Integer integer;
                    for (Iterator iterator = list.iterator(); iterator.hasNext(); e.a(r, integer.intValue()))
                    {
                        integer = (Integer)iterator.next();
                    }

                }
                an.remove(s1);
            }
        }
    }

    static boolean b(ChatFragment chatfragment, boolean flag)
    {
        chatfragment.C = flag;
        return flag;
    }

    static int c(ChatFragment chatfragment, int i1)
    {
        chatfragment.ah = i1;
        return i1;
    }

    static Handler c(ChatFragment chatfragment)
    {
        return chatfragment.U;
    }

    static void c(ChatFragment chatfragment, float f1)
    {
        chatfragment.b(f1);
    }

    static boolean c(ChatFragment chatfragment, boolean flag)
    {
        chatfragment.P = flag;
        return flag;
    }

    private static boolean c(ChatFeedItem chatfeeditem)
    {
        if (chatfeeditem instanceof StatefulChatFeedItem)
        {
            boolean flag;
            if (!TextUtils.equals(chatfeeditem.l(), UserPrefs.k()))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag && !chatfeeditem.at())
            {
                return true;
            }
        } else
        if ((chatfeeditem instanceof ReceivedSnap) && !((ReceivedSnap)chatfeeditem).F())
        {
            return true;
        }
        return DateUtils.isToday(chatfeeditem.ae());
    }

    static void d(ChatFragment chatfragment, float f1)
    {
        chatfragment.a(f1);
    }

    private void d(ChatFeedItem chatfeeditem)
    {
        String s1 = chatfeeditem.l();
        if (!(chatfeeditem instanceof ChatUnknown)) goto _L2; else goto _L1
_L1:
        s1 = getResources().getString(0x7f0c006d);
_L4:
        ChatHeader chatheader = new ChatHeader(s1, chatfeeditem);
        a(H, chatheader);
        return;
_L2:
        if (TextUtils.isEmpty(s1))
        {
            s1 = "";
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void d(String s1)
    {
        if (C)
        {
            int i1 = v.getFirstVisiblePosition();
            int j1 = v.getLastVisiblePosition();
            int k1 = i1;
            while (k1 <= j1) 
            {
                View view = v.getChildAt(k1 - i1);
                ChatConversationAdapter.MessageViewHolder messageviewholder = (ChatConversationAdapter.MessageViewHolder)view.getTag();
                if (messageviewholder != null)
                {
                    ChatFeedItem chatfeeditem = messageviewholder.a;
                    if (chatfeeditem != null && TextUtils.equals(chatfeeditem.d(), s1))
                    {
                        String s2 = chatfeeditem.ap();
                        Object aobj[] = new Object[4];
                        aobj[0] = chatfeeditem.d();
                        aobj[1] = F.u();
                        long l1;
                        if (!TextUtils.isEmpty(s2))
                        {
                            s2 = s2.substring(0, Math.min(3, s2.length()));
                        }
                        aobj[2] = s2;
                        if (chatfeeditem instanceof Chat)
                        {
                            l1 = ((Chat)chatfeeditem).i();
                        } else
                        {
                            l1 = -1L;
                        }
                        aobj[3] = Long.valueOf(l1);
                        Timber.f("ChatFragment", "CHAT-LOG: Refreshing Chat View with message id[%s] conv[%s] text[%s] seq_num[%d]", aobj);
                        v.getAdapter().getView(k1, view, v);
                        a(k1);
                        return;
                    }
                }
                k1++;
            }
        }
    }

    static boolean d(ChatFragment chatfragment)
    {
        return chatfragment.D;
    }

    static boolean d(ChatFragment chatfragment, boolean flag)
    {
        chatfragment.D = flag;
        return flag;
    }

    static void e(ChatFragment chatfragment)
    {
        chatfragment.C();
    }

    static boolean e(ChatFragment chatfragment, boolean flag)
    {
        chatfragment.G = flag;
        return flag;
    }

    static void f(ChatFragment chatfragment)
    {
        chatfragment.F();
    }

    static boolean f(ChatFragment chatfragment, boolean flag)
    {
        chatfragment.aa = flag;
        return flag;
    }

    static boolean f(boolean flag)
    {
        ap = flag;
        return flag;
    }

    static ObservableAboveTheFoldListView g(ChatFragment chatfragment)
    {
        return chatfragment.v;
    }

    static void g(ChatFragment chatfragment, boolean flag)
    {
        chatfragment.h(flag);
    }

    static ChatConversation h(ChatFragment chatfragment)
    {
        return chatfragment.F;
    }

    private void h(boolean flag)
    {
        ArrayList arraylist = new ArrayList(F.s());
        H.clear();
        I = -1;
        int i1 = arraylist.size();
        if (i1 == 0)
        {
            a(H, new ChatDateHeader(null));
            return;
        }
        W.a(i1);
        if (!B.isEmpty() && v.getFirstVisiblePosition() < 20)
        {
            Object aobj4[] = new Object[1];
            aobj4[0] = Integer.valueOf(W.c());
            Timber.f("ChatFragment", "CHAT-LOG: Incrementing paginator render size (old size: %d)", aobj4);
            W.b();
        }
        int j1 = W.c();
        Object obj;
        Object aobj[];
        Calendar calendar;
        HashSet hashset;
        ChatFeedItem chatfeeditem;
        String s1;
        Object aobj1[];
        long l1;
        int k1;
        int i2;
        Object aobj2[];
        int j2;
        ChatFeedItem chatfeeditem1;
        int k2;
        String s2;
        View view;
        int l2;
        Iterator iterator;
        int i3;
        if (j1 < i1)
        {
            obj = arraylist.subList(i1 - j1, i1);
        } else
        {
            obj = arraylist;
        }
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(j1);
        Timber.f("ChatFragment", "CHAT-LOG: ChatMessagePaginator has render size of %d messages", aobj);
        calendar = Calendar.getInstance();
        hashset = new HashSet();
        chatfeeditem = (ChatFeedItem)((List) (obj)).get(0);
        a(chatfeeditem, hashset, calendar);
        s1 = chatfeeditem.ap();
        aobj1 = new Object[4];
        aobj1[0] = chatfeeditem.d();
        aobj1[1] = F.u();
        if (!TextUtils.isEmpty(s1))
        {
            s1 = s1.substring(0, Math.min(3, s1.length()));
        }
        aobj1[2] = s1;
        if (chatfeeditem instanceof Chat)
        {
            l1 = ((Chat)chatfeeditem).i();
        } else
        {
            l1 = -1L;
        }
        aobj1[3] = Long.valueOf(l1);
        Timber.f("ChatFragment", "CHAT-LOG: Populating Chat View with message id[%s] conv[%s] text[%s] seq_num[%d]", aobj1);
        d(chatfeeditem);
        a(H, chatfeeditem);
        k1 = 1;
        i2 = 0;
        while (k1 < ((List) (obj)).size()) 
        {
            ChatFeedItem chatfeeditem2 = (ChatFeedItem)((List) (obj)).get(k1 - 1);
            ChatFeedItem chatfeeditem3 = (ChatFeedItem)((List) (obj)).get(k1);
            if (chatfeeditem3 == null)
            {
                throw new NullPointerException();
            }
            if (a(chatfeeditem2, chatfeeditem3))
            {
                if (a(chatfeeditem3, hashset, calendar))
                {
                    i2 = H.size();
                }
                d(chatfeeditem3);
            }
            a(H, chatfeeditem3);
            String s3 = chatfeeditem3.ap();
            Object aobj3[] = new Object[4];
            aobj3[0] = chatfeeditem3.d();
            aobj3[1] = F.u();
            long l3;
            if (!TextUtils.isEmpty(s3))
            {
                s3 = s3.substring(0, Math.min(3, s3.length()));
            }
            aobj3[2] = s3;
            if (chatfeeditem3 instanceof Chat)
            {
                l3 = ((Chat)chatfeeditem3).i();
            } else
            {
                l3 = -1L;
            }
            aobj3[3] = Long.valueOf(l3);
            Timber.f("ChatFragment", "CHAT-LOG: Populating Chat View with message id[%s] conv[%s] text[%s] seq_num[%d]", aobj3);
            k1++;
        }
        if (!DateUtils.isToday(((ChatFeedItem)H.get(i2)).ae()))
        {
            a(H, new ChatDateHeader(null));
        }
        aobj2 = new Object[1];
        aobj2[0] = Integer.valueOf(H.size());
        Timber.f("ChatFragment", "CHAT-LOG: Repopulated chat messages should have %d items", aobj2);
        if (!C)
        {
            Timber.f("ChatFragment", "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged message view hasn't been loaded yet", new Object[0]);
            B.notifyDataSetChanged();
            (new Handler()).post(new Runnable() {

                final ChatFragment a;

                public void run()
                {
                    ChatFragment.b(a, true);
                }

            
            {
                a = ChatFragment.this;
                super();
            }
            });
            return;
        }
        if (flag)
        {
            Timber.f("ChatFragment", "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged and scrolling to bottom", new Object[0]);
            B.notifyDataSetChanged();
            v.d();
            W();
            ab.a();
            return;
        }
        j2 = v.getFirstVisiblePosition();
        chatfeeditem1 = null;
        k2 = j2;
        if (k2 > v.getLastVisiblePosition())
        {
            break MISSING_BLOCK_LABEL_958;
        }
        chatfeeditem1 = B.a(k2);
        if (chatfeeditem1 == null || (chatfeeditem1 instanceof ChatHeader)) goto _L2; else goto _L1
_L1:
        if (chatfeeditem1 == null) goto _L4; else goto _L3
_L3:
        s2 = chatfeeditem1.d();
        view = v.getChildAt(k2 - j2);
        if (view == null)
        {
            l2 = 0;
        } else
        {
            l2 = view.getTop();
        }
        Timber.f("ChatFragment", "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged while maintaining scroll position", new Object[0]);
        B.notifyDataSetChanged();
        iterator = H.iterator();
        i3 = 0;
_L5:
        if (!iterator.hasNext() || TextUtils.equals(((ChatFeedItem)iterator.next()).d(), s2))
        {
            v.setSelectionFromTop(i3, l2);
            return;
        }
        i3++;
        continue; /* Loop/switch isn't completed */
_L2:
        k2++;
        break MISSING_BLOCK_LABEL_764;
        if (true) goto _L5; else goto _L4
_L4:
        Timber.f("ChatFragment", "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged while maintaining scroll position but no saved item", new Object[0]);
        B.notifyDataSetChanged();
        return;
        break MISSING_BLOCK_LABEL_764;
        k2 = j2;
        if (true) goto _L1; else goto _L6
_L6:
    }

    static ChatCameraButton i(ChatFragment chatfragment)
    {
        return chatfragment.u;
    }

    public static boolean i()
    {
        return ap;
    }

    static boolean j(ChatFragment chatfragment)
    {
        return chatfragment.B();
    }

    static CursorCallbackEditText k(ChatFragment chatfragment)
    {
        return chatfragment.r;
    }

    public static boolean k()
    {
        return b != null && a != null;
    }

    static float l(ChatFragment chatfragment)
    {
        return chatfragment.s;
    }

    public static void l()
    {
        b = null;
        a = null;
    }

    static float m(ChatFragment chatfragment)
    {
        return chatfragment.t;
    }

    static HereTooltip n(ChatFragment chatfragment)
    {
        return chatfragment.aq;
    }

    static Window o(ChatFragment chatfragment)
    {
        return chatfragment.G();
    }

    static View p(ChatFragment chatfragment)
    {
        return chatfragment.x;
    }

    static ChatMediaExpander q(ChatFragment chatfragment)
    {
        return chatfragment.ab;
    }

    public static String q()
    {
        return h;
    }

    static void r(ChatFragment chatfragment)
    {
        chatfragment.R();
    }

    static CashTooltip s(ChatFragment chatfragment)
    {
        return chatfragment.ar;
    }

    static void t(ChatFragment chatfragment)
    {
        chatfragment.S();
    }

    private void u()
    {
        Intent intent = getActivity().getIntent();
        intent.putExtra("goToFragmentNum", 0);
        getActivity().setIntent(intent);
    }

    static void u(ChatFragment chatfragment)
    {
        chatfragment.M();
    }

    private void v()
    {
        int i1 = 0;
        if (al != null)
        {
            String s1 = al.a();
            String s2 = L();
            if (s2 == null || s2.isEmpty())
            {
                am.remove(s1);
            } else
            {
                am.put(s1, s2);
            }
            if (!B())
            {
                an.remove(s1);
                return;
            }
            List list = (List)an.get(s1);
            Object obj;
            Editable editable;
            ImageSpan aimagespan[];
            int j1;
            if (list == null)
            {
                ArrayList arraylist = new ArrayList();
                an.put(s1, arraylist);
                obj = arraylist;
            } else
            {
                list.clear();
                obj = list;
            }
            editable = r.getEditableText();
            aimagespan = (ImageSpan[])editable.getSpans(0, editable.length(), android/text/style/ImageSpan);
            j1 = aimagespan.length;
            while (i1 < j1) 
            {
                ((List) (obj)).add(Integer.valueOf(editable.getSpanStart(aimagespan[i1])));
                i1++;
            }
        }
    }

    static void v(ChatFragment chatfragment)
    {
        chatfragment.O();
    }

    static ChatConversationAdapter w(ChatFragment chatfragment)
    {
        return chatfragment.B;
    }

    private void w()
    {
        if (al == null)
        {
            return;
        } else
        {
            ChatScreenshotWatcher.a().a(al.a());
            return;
        }
    }

    static List x(ChatFragment chatfragment)
    {
        return chatfragment.H;
    }

    private void x()
    {
        ChatScreenshotWatcher.a().c();
    }

    static LoadConversationPageTaskExecutor y(ChatFragment chatfragment)
    {
        return chatfragment.l;
    }

    private void y()
    {
        d.b();
    }

    static SendingMailman z(ChatFragment chatfragment)
    {
        return chatfragment.i;
    }

    public float a(View view)
    {
        if (view == null)
        {
            return 0.0F;
        }
        Object obj = view.getTag();
        if (obj instanceof ChatConversationAdapter.MessageViewHolder)
        {
            return ((ChatConversationAdapter.MessageViewHolder)obj).c.getTranslationX();
        } else
        {
            return 0.0F;
        }
    }

    public String a(ChatFeedItem chatfeeditem)
    {
        return b(chatfeeditem);
    }

    public volatile String a(Object obj)
    {
        return a((ChatFeedItem)obj);
    }

    public void a()
    {
    }

    public void a(int i1, boolean flag, boolean flag1)
    {
    }

    public void a(MotionEvent motionevent)
    {
        ChatFeedItem chatfeeditem = b(motionevent);
        if (chatfeeditem instanceof Snap)
        {
            SnapListItemHandler.a().a((Snap)chatfeeditem, F, getActivity());
        }
    }

    public void a(View view, int i1, boolean flag)
    {
    }

    public void a(ScrollState scrollstate)
    {
        ai = false;
        aj = 0.0F;
    }

    public void a(com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus taskstatus)
    {
        android.view.ViewGroup.LayoutParams layoutparams = K.getLayoutParams();
        if (layoutparams == null)
        {
            return;
        }
        static class _cls27
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus.values().length];
                try
                {
                    a[com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus.RUNNING.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus.FAILED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.api2.chat.LoadConversationPageTask.TaskStatus.EMPTY_RESPONSE_REACHED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls27.a[taskstatus.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            layoutparams.height = -2;
            K.setLayoutParams(layoutparams);
            K.setVisibility(0);
            L.setVisibility(0);
            M.setVisibility(4);
            return;

        case 2: // '\002'
            layoutparams.height = -2;
            K.setLayoutParams(layoutparams);
            K.setVisibility(0);
            L.setVisibility(4);
            M.setVisibility(0);
            return;

        case 3: // '\003'
            layoutparams.height = 1;
            break;
        }
        K.setLayoutParams(layoutparams);
        K.setVisibility(8);
    }

    protected void a(Friend friend, boolean flag)
    {
        Timber.f("ChatFragment", (new StringBuilder()).append("CHAT-LOG: ChatFragment setFriend ").append(friend.a()).toString(), new Object[0]);
        if (a(friend.a()))
        {
            Timber.f("ChatFragment", "CHAT-LOG: ChatFragment setFriend changed. Resetting some state.", new Object[0]);
            W.a();
            if (R != null)
            {
                R.a();
                R.setAlpha(0.0F);
            }
            v.d();
            E();
            b(0.0F);
        }
        al = friend;
        D = false;
        F = Y.a(al.a(), false);
        if (F == null)
        {
            AnalyticsEvents.a(com.snapchat.android.analytics.AnalyticsEvents.LogoutReason.NO_USERNAME);
            j.d();
            FragmentActivity fragmentactivity = getActivity();
            ActivityLauncher.a(fragmentactivity);
            fragmentactivity.finish();
            return;
        }
        F.p(k.b());
        b(al, true);
        as = null;
        if (!CashUtils.a(UserPrefs.Z()))
        {
            g.a(F.aF());
        }
        if (flag)
        {
            F.a(false);
        }
        i.f(F);
        F.H();
        h(F.am());
        v.setIsActive(true);
        v.b();
        v.setSelection(-1 + H.size());
        n();
        BusProvider.a().a(new CameraStateEvent(true, com.snapchat.android.camera.model.CameraModel.CameraType.a));
    }

    public void a(boolean flag)
    {
        at = flag;
    }

    protected boolean a(Context context, List list)
    {
        String s1;
        int i1;
        while (list == null || list.size() == 0 || !((KeyguardManager)context.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) 
        {
            return false;
        }
        s1 = UserPrefs.k();
        i1 = list.size();
_L1:
        boolean flag;
        boolean flag1;
        if (i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        ChatFeedItem chatfeeditem = (ChatFeedItem)list.get(i1 - 1);
        if (chatfeeditem.l().equals(s1))
        {
            flag = true;
        } else
        if ((chatfeeditem instanceof ISavableChatFeedItem) && ((ISavableChatFeedItem)chatfeeditem).n())
        {
            flag = true;
        } else
        {
label0:
            {
                if (!(chatfeeditem instanceof StatefulChatFeedItem))
                {
                    break label0;
                }
                flag = false;
            }
        }
_L2:
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag1;
        i1--;
          goto _L1
        flag = true;
          goto _L2
    }

    public boolean a(View view, float f1, float f2, float f3, float f4)
    {
        boolean flag = true;
        if (view == null)
        {
            flag = false;
        } else
        {
            int i1 = b(((View) (null)));
            if (Math.abs(f1) < (float)i1 || a(view) < (float)i1)
            {
                if (Math.abs(f1) >= (float)i1 && a(view) < (float)i1)
                {
                    a(i1);
                    return flag;
                } else
                {
                    a(f1);
                    return flag;
                }
            }
        }
        return flag;
    }

    public int b(View view)
    {
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity == null)
        {
            return 0;
        } else
        {
            return (int)ViewUtils.a(51F, fragmentactivity);
        }
    }

    public void b()
    {
        ap = true;
    }

    public void b(boolean flag)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.valueOf(flag);
        Timber.f("ChatFragment", "CHAT-LOG: ChatFragment updateFriendIfNecessary %b", aobj);
        User user;
        for (user = User.c(); user == null || TextUtils.isEmpty(c) || al != null && TextUtils.equals(al.a(), c);)
        {
            return;
        }

        Object aobj1[] = new Object[1];
        aobj1[0] = c;
        Timber.f("ChatFragment", "CHAT-LOG: ChatFragment updateFriendIfNecessary no displayed friend or username or displayed friend is different, setting to %s", aobj1);
        a(FriendUtils.a(c, user), flag);
        E();
        b(0.0F);
    }

    public void c()
    {
        ap = false;
    }

    public void c(View view)
    {
    }

    public void c(boolean flag)
    {
        byte byte0 = 8;
        View view = m;
        byte byte1;
        ObservableAboveTheFoldListView observableabovethefoldlistview;
        if (flag)
        {
            byte1 = byte0;
        } else
        {
            byte1 = 0;
        }
        view.setVisibility(byte1);
        observableabovethefoldlistview = v;
        if (!flag)
        {
            byte0 = 0;
        }
        observableabovethefoldlistview.setVisibility(byte0);
    }

    public void d(View view)
    {
        if (F == null || !F.B()) goto _L2; else goto _L1
_L1:
        ChatConversationAdapter.MessageViewHolder messageviewholder;
        long l1;
        messageviewholder = (ChatConversationAdapter.MessageViewHolder)view.getTag();
        l1 = System.currentTimeMillis();
        if (!(messageviewholder.a instanceof Chat)) goto _L4; else goto _L3
_L3:
        Chat chat = (Chat)messageviewholder.a;
        if (!chat.m().contains(F.b())) goto _L6; else goto _L5
_L5:
        long l6 = chat.i();
        if (l6 <= F.aa()) goto _L8; else goto _L7
_L7:
        boolean flag1;
        long l5;
        boolean flag4;
        flag1 = X.d(F, l6);
        l5 = chat.z();
        flag4 = false;
_L17:
        long l2;
        boolean flag;
        l2 = l5;
        flag = flag4;
_L11:
        if (flag1)
        {
            Rect rect;
            Rect rect1;
            boolean flag2;
            boolean flag3;
            CashFeedItem cashfeeditem;
            ReceivedSnap receivedsnap;
            long l3;
            SentSnap sentsnap;
            long l4;
            if (l2 > 0L)
            {
                ChatConversation chatconversation = F;
                Z.postDelayed(new Runnable(chatconversation) {

                    final ChatConversation a;
                    final ChatFragment b;

                    public void run()
                    {
                        if (ChatFragment.M(b).c(a))
                        {
                            ChatFragment.M(b).a(ChatFragment.h(b), com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.RELEASE);
                        }
                    }

            
            {
                b = ChatFragment.this;
                a = chatconversation;
                super();
            }
                }, l2);
            } else
            {
                flag = X.c(F);
            }
            X.a(F);
        }
        if (flag)
        {
            X.a(F, com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.RELEASE);
        }
        if (ListViewUtils.b(v))
        {
label0:
            {
                rect = new Rect();
                view.getHitRect(rect);
                rect1 = new Rect();
                o.getHitRect(rect1);
                if (!Rect.intersects(rect, rect1))
                {
                    flag3 = rect1.contains(rect);
                    flag2 = false;
                    if (!flag3)
                    {
                        break label0;
                    }
                }
                flag2 = true;
            }
            if (flag2)
            {
                v.c();
            }
        }
_L2:
        return;
_L8:
        if (chat.f(l1))
        {
            l5 = 0L;
            flag4 = true;
            flag1 = false;
            continue; /* Loop/switch isn't completed */
        }
          goto _L6
_L4:
        if (!(messageviewholder.a instanceof SentSnap)) goto _L10; else goto _L9
_L9:
        sentsnap = (SentSnap)messageviewholder.a;
        if (!sentsnap.p())
        {
            break MISSING_BLOCK_LABEL_514;
        }
        l4 = sentsnap.ae();
        if (l4 <= F.ag())
        {
            break MISSING_BLOCK_LABEL_514;
        }
        flag = X.b(F, l4);
_L15:
        l2 = 0L;
        flag1 = false;
          goto _L11
_L10:
        if (!(messageviewholder.a instanceof ReceivedSnap)) goto _L13; else goto _L12
_L12:
        receivedsnap = (ReceivedSnap)messageviewholder.a;
        if (!receivedsnap.F())
        {
            break MISSING_BLOCK_LABEL_508;
        }
        l3 = receivedsnap.ae();
        if (l3 <= F.ah())
        {
            break MISSING_BLOCK_LABEL_508;
        }
        flag = X.c(F, l3);
_L14:
        l2 = 0L;
        flag1 = false;
          goto _L11
_L13:
        if (messageviewholder.a instanceof CashFeedItem)
        {
            cashfeeditem = (CashFeedItem)messageviewholder.a;
            if (!cashfeeditem.o())
            {
                X.a(F, cashfeeditem);
            }
        }
        l2 = 0L;
        flag = false;
        flag1 = false;
          goto _L11
        flag = false;
          goto _L14
        flag = false;
          goto _L15
_L6:
        l5 = 0L;
        flag1 = false;
        flag4 = false;
        if (true) goto _L17; else goto _L16
_L16:
    }

    public void d(boolean flag)
    {
        View view = o;
        byte byte0;
        if (flag)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view.setVisibility(byte0);
    }

    protected void d_()
    {
        super.d_();
        if (D && !ap)
        {
            O.d();
            android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
            Resources resources = getResources();
            Object aobj2[] = new Object[1];
            aobj2[0] = FriendUtils.d(F.c(), User.c());
            editor.putString("RESUMING_FROM_SWIPE_MESSAGE", resources.getString(0x7f0c0206, aobj2));
            editor.commit();
        }
        if (r != null)
        {
            ViewUtils.a(getActivity(), r);
        }
        FragmentActivity fragmentactivity = getActivity();
        ViewUtils.a(G(), x, fragmentactivity);
        if (P)
        {
            BusProvider.a().a(new AdjustForQuickSnapEvent(false));
        }
        d.b(DisconnectReason.b);
        if (F != null)
        {
            F.d(false);
            F.k(false);
            Z.removeCallbacksAndMessages(null);
            ab.a();
            if (J || ao || ap)
            {
                Object aobj[] = new Object[1];
                aobj[0] = F.c();
                Timber.f("ChatFragment", "CHAT-LOG: LEFT CHAT with %s due to app pause when ChatFragment visible or entering in-chat camera or quick snap", aobj);
            } else
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = F.c();
                Timber.f("ChatFragment", "CHAT-LOG: SWIPED OUT OF CHAT with %s", aobj1);
                SnapUtils.b();
                X.a(F, com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.DELETE);
                F.w();
                F.c(false);
                l();
            }
        }
        B.c();
        v();
        x();
        if (!ao && !ap)
        {
            A();
        }
        if (!J && !ao && !ap)
        {
            if (F != null && F.aC())
            {
                Y.c(F.u());
            }
            v.setLocked(false);
            v.d();
            b(0.0F);
            BusProvider.a().a(new AllowAccessToChatFragmentEvent(false));
            Q();
        }
        ImageResource.b();
        h = null;
    }

    public void e(boolean flag)
    {
        if (flag && !d.d())
        {
            if (av != null)
            {
                av.b();
            }
            if (r != null)
            {
                ViewUtils.a(getActivity(), r);
            }
        }
    }

    public boolean e()
    {
        if (D)
        {
            O.c();
            return true;
        } else
        {
            return false;
        }
    }

    public void h()
    {
        if (N < 0L)
        {
            N = SystemClock.elapsedRealtime();
            AnalyticsEvents.j();
        }
    }

    public void n()
    {
        boolean flag = true;
        boolean flag1 = F.C();
        boolean flag2;
        boolean flag3;
        ChatCameraButton chatcamerabutton;
        String s1;
        if (F.v() != null)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (flag1 && flag2)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        d.a(getActivity(), this);
        if (flag2)
        {
            d.a(F);
        }
        d.setCanStreamVideo(flag3, DisconnectReason.c);
        chatcamerabutton = u;
        if (flag1)
        {
            s1 = "blue";
        } else
        {
            s1 = "yellow";
        }
        chatcamerabutton.setContentDescription(s1);
        u.setPresent(flag1);
        if (u.getVisibility() != 0 || u.getCashtagDetected() || v.a())
        {
            flag = false;
        }
        aq.a(F, flag);
        u.setOnLongClickListener(new android.view.View.OnLongClickListener(flag3, flag1) {

            final boolean a;
            final boolean b;
            final ChatFragment c;

            public boolean onLongClick(View view)
            {
                if (ChatFragment.i(c).getIsEmoji() || ChatFragment.i(c).getCashtagDetected() || ChatFragment.i(c).getCashSwipeDetected())
                {
                    return false;
                }
                if (a)
                {
                    ViewUtils.a(c.getActivity(), ChatFragment.k(c));
                    c.d.c();
                    ChatFragment.n(c).b();
                } else
                if (b)
                {
                    ChatFragment.n(c).a();
                } else
                {
                    ChatFragment.v(c);
                }
                return true;
            }

            
            {
                c = ChatFragment.this;
                a = flag;
                b = flag1;
                super();
            }
        });
    }

    public void o()
    {
        ViewUtils.a(getActivity(), r);
    }

    public void onCancelInChatSnapEvent(CancelInChatSnapEvent cancelinchatsnapevent)
    {
        ao = false;
    }

    public void onCancelQuickSnapEvent(CancelQuickSnapEvent cancelquicksnapevent)
    {
        ao = false;
    }

    public void onCashRainEvent(CashRainEvent cashrainevent)
    {
        if (!cashrainevent.c().equals(F))
        {
            return;
        } else
        {
            a((int)cashrainevent.a(), cashrainevent.b());
            aw = true;
            return;
        }
    }

    public void onChatLinkClickedEvent(ChatLinkClickedEvent chatlinkclickedevent)
    {
        SnapchatUrlSpan snapchaturlspan = chatlinkclickedevent.a;
        ISavableChatFeedItem isavablechatfeeditem = snapchaturlspan.b();
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        CharSequence acharsequence[] = new CharSequence[3];
        int i1;
        int j1;
        if (snapchaturlspan.a() == UrlType.c)
        {
            i1 = 0x7f0c0069;
        } else
        {
            i1 = 0x7f0c006a;
        }
        acharsequence[0] = getString(i1);
        if (isavablechatfeeditem.n())
        {
            j1 = 0x7f0c006c;
        } else
        {
            j1 = 0x7f0c006b;
        }
        acharsequence[1] = getString(j1);
        acharsequence[2] = getString(0x7f0c003d);
        builder.setItems(acharsequence, new android.content.DialogInterface.OnClickListener(snapchaturlspan, isavablechatfeeditem) {

            final SnapchatUrlSpan a;
            final ISavableChatFeedItem b;
            final ChatFragment c;

            public void onClick(DialogInterface dialoginterface, int k1)
            {
                k1;
                JVM INSTR tableswitch 0 2: default 28
            //                           0 29
            //                           1 60
            //                           2 190;
                   goto _L1 _L2 _L3 _L4
_L1:
                return;
_L2:
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(a.getURL()));
                c.startActivity(intent);
                return;
_L3:
                if (ChatFragment.h(c) != null)
                {
                    if (b.n())
                    {
                        int i2 = b.C();
                        if (b instanceof Chat)
                        {
                            ChatFragment.z(c).a(ChatFragment.h(c), (Chat)b, i2, false);
                        }
                    } else
                    {
                        int l1 = b.B();
                        if (b instanceof Chat)
                        {
                            ChatFragment.z(c).a(ChatFragment.h(c), (Chat)b, l1, true);
                        }
                    }
                    ChatFragment.w(c).notifyDataSetChanged();
                    return;
                }
                  goto _L1
_L4:
                dialoginterface.dismiss();
                return;
            }

            
            {
                c = ChatFragment.this;
                a = snapchaturlspan;
                b = isavablechatfeeditem;
                super();
            }
        });
        builder.create().show();
    }

    public void onChatSwipeStartedEvent(ChatSwipeStartedEvent chatswipestartedevent)
    {
        if (chatswipestartedevent.a == null)
        {
            throw new NullPointerException();
        } else
        {
            a(chatswipestartedevent.a, true);
            return;
        }
    }

    public void onChatUpdatedEvent(ChatUpdatedEvent chatupdatedevent)
    {
        if (F != null && TextUtils.equals(chatupdatedevent.a, F.u()))
        {
            U();
            if (chatupdatedevent.b != null)
            {
                d(chatupdatedevent.b);
                if (chatupdatedevent.c && !v.a())
                {
                    v.d();
                    W();
                    return;
                }
            } else
            {
                boolean flag;
                if (chatupdatedevent.c && !v.a())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                h(flag);
                return;
            }
        }
    }

    public void onClearChatTextEvent(ClearChatTextEvent clearchattextevent)
    {
        if (!B())
        {
            r.setText("");
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        TimeLogger.a();
        V = DictionaryEasyMetric.a();
        x = layoutinflater.inflate(0x7f040022, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        ae = getResources().getDimension(0x7f090002);
        D();
        if (bundle != null)
        {
            String s1 = bundle.getString("friend_username");
            if (!TextUtils.isEmpty(s1))
            {
                c = s1;
            }
            HashMap hashmap = (HashMap)bundle.getSerializable("message_drafts");
            am.putAll(hashmap);
            HashMap hashmap1 = (HashMap)bundle.getSerializable("cashtag_positions");
            an.putAll(hashmap1);
            if (bundle.containsKey("top_panel_divider_height"))
            {
                ag = bundle.getInt("top_panel_divider_height");
            }
            if (bundle.containsKey("message_input_layout_height"))
            {
                af = bundle.getInt("message_input_layout_height");
                v.setMinimumFooterHeight(af);
            }
            if (bundle.containsKey("message_input_divider_height"))
            {
                ah = bundle.getInt("message_input_divider_height");
            }
        }
        Display display = ((WindowManager)getActivity().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        display.getSize(point);
        ab.a(point.x);
        Timber.f("ChatFragment", "CHAT-LOG: ChatFragment onCreateView getting and setting top panel and message input heights", new Object[0]);
        E();
        TimeLogger.b();
        return x;
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        u.a();
    }

    public void onEndpointsRefreshedEvent(com.snapchat.android.util.network.EndpointManager.EndpointsRefreshedEvent endpointsrefreshedevent)
    {
        y();
    }

    public void onFeedRefreshedEvent(SnapMessageFeedRefreshedEvent snapmessagefeedrefreshedevent)
    {
        B.notifyDataSetChanged();
    }

    public void onFeedTimerChangeEvent(FeedTimerChangeEvent feedtimerchangeevent)
    {
        B.notifyDataSetChanged();
    }

    public void onHideSnapEvent(HideSnapMessageEvent hidesnapmessageevent)
    {
    }

    public void onLoadConversationPageTaskEvent(LoadConversationPageTaskEvent loadconversationpagetaskevent)
    {
        a(loadconversationpagetaskevent.a);
    }

    public void onLoadSnapMediaEvent(LoadSnapMediaEvent loadsnapmediaevent)
    {
        B.notifyDataSetChanged();
    }

    public void onPause()
    {
        super.onPause();
        if (y && F != null)
        {
            J = true;
            if (a(getActivity(), F.s()))
            {
                u();
            } else
            {
                a(getActivity(), B.a());
            }
        }
        y();
        r.clearFocus();
        v();
        x();
        A();
    }

    public void onPresenceUpdatedEvent(PresenceUpdatedEvent presenceupdatedevent)
    {
        if (y && F != null && TextUtils.equals(presenceupdatedevent.a, F.a()))
        {
            n();
            d.b(presenceupdatedevent.b);
        }
    }

    public void onResume()
    {
        TimeLogger.a();
        super.onResume();
        Timber.f("ChatFragment", "CHAT-LOG: ChatFragment onResume", new Object[0]);
        J = false;
        B.notifyDataSetChanged();
        if (at)
        {
            at = false;
            Timber.c("ChatFragment", "Make this fragment visible because it was selected as the current item of the view pager before it was created", new Object[0]);
            g(true);
            b(0.0F);
        }
        TimeLogger.b();
        if (F != null)
        {
            n();
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (al != null)
        {
            bundle.putString("friend_username", al.a());
        }
        bundle.putSerializable("message_drafts", am);
        bundle.putSerializable("cashtag_positions", an);
        if (ag != 0)
        {
            bundle.putInt("top_panel_divider_height", ag);
        }
        if (af != 0)
        {
            bundle.putInt("message_input_layout_height", af);
        }
        if (ah != 0)
        {
            bundle.putInt("message_input_divider_height", ah);
        }
    }

    public void onSecureChatSessionConnectedEvent(SecureChatSessionConnectedEvent securechatsessionconnectedevent)
    {
        if (F != null)
        {
            F.d(y);
        }
    }

    public void onSnapSelectedForReplayEvent(SnapSelectedForReplayEvent snapselectedforreplayevent)
    {
        B.notifyDataSetChanged();
    }

    public void onSnapViewingEvent(SnapMessageViewingEvent snapmessageviewingevent)
    {
        if (snapmessageviewingevent.a())
        {
            x();
        } else
        if (al != null)
        {
            w();
            return;
        }
    }

    public void onWindowFullscreenModeChangedEvent(ChangeWindowMarginEvent changewindowmarginevent)
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

    public int p()
    {
        return I;
    }

    public void q_()
    {
        if (y)
        {
            J = true;
        }
        super.q_();
    }

    public void r()
    {
        if (F != null && F.C())
        {
            i.a(F, O.getDollarsSwiped(), O.getFirstSwipeMillis());
        }
    }

    public void s()
    {
        D = false;
        E = null;
        if (!ap)
        {
            P();
        }
        if (O.getDollarsSwiped() == 0)
        {
            S();
        }
    }

    protected void s_()
    {
        TimeLogger.a();
        V.b("FIRST_MEDIA_OPENED");
        super.s_();
        Timber.f("ChatFragment", "CHAT-LOG: ChatFragment onVisible", new Object[0]);
        if (ag == 0 || af == 0 || ah == 0)
        {
            Timber.f("ChatFragment", "ChatFragment onVisible heights are 0, getting and setting heights", new Object[0]);
            E();
        }
        b(false);
        FragmentActivity fragmentactivity = getActivity();
        ViewUtils.a(G(), x, fragmentactivity);
        aa = true;
        BusProvider.a().a(new AdjustForQuickSnapEvent(true));
        fragmentactivity.setVolumeControlStream(3);
        if (fragmentactivity instanceof LandingPageActivity)
        {
            ((LandingPageActivity)fragmentactivity).a().a(com.snapchat.android.analytics.NotificationAnalytics.NotificationDestinationType.CHAT);
            if (User.c() != null && k.b())
            {
                a(k.e(), true);
            }
        }
        if (al != null && TextUtils.isEmpty(q.getText()))
        {
            q.setText(al.q());
        }
        BusProvider.a().a(new ChangePreviewQualityEvent(com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality.b));
        B.b();
        if (al == null || F == null)
        {
            return;
        }
        q.setText(al.q());
        Object aobj[] = new Object[1];
        aobj[0] = F.c();
        Timber.f("ChatFragment", "CHAT-LOG: ENTERED CHAT with %s", aobj);
        F.c(true);
        h();
        w();
        F.d(true);
        aw = false;
        U();
        X.b(F);
        h(true);
        NotificationTable.c(SnapchatApplication.e(), com.snapchat.android.notification.AndroidNotificationManager.Type.b.name(), F.c());
        h = al.a();
        a(al);
        P();
        Intent intent = getActivity().getIntent();
        if (intent != null && intent.hasExtra("chatOrCashFromServerNotification"))
        {
            intent.removeExtra("chatOrCashFromServerNotification");
            AnalyticsEvents.k(F.ak());
        }
        TimeLogger.b();
    }

    public void t()
    {
        T();
    }
}
