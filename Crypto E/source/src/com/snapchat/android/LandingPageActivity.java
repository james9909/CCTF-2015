// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.app.AlarmManager;
import android.app.KeyguardManager;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.LifecycleAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NotificationAnalytics;
import com.snapchat.android.analytics.PhoneVerificationAnalytics;
import com.snapchat.android.analytics.RecentStoryReplyAnalyticsManager;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.api.SyncAllTask;
import com.snapchat.android.api.UpdateFeatureSettingsTask;
import com.snapchat.android.camera.CameraFragment;
import com.snapchat.android.chat.ChatConnectionMonitor;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.controller.SendSnapController;
import com.snapchat.android.controller.UploadSnapMediaController;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.deeplink.DeepLinkParser;
import com.snapchat.android.discover.model.DSnapbryo;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.discover.ui.DSnapView;
import com.snapchat.android.discover.util.eventbus.EditionClosedEvent;
import com.snapchat.android.discover.util.eventbus.OnShareDSnapEvent;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.fragments.sendto.SendToFragment;
import com.snapchat.android.fragments.stories.StoriesFragment;
import com.snapchat.android.fragments.verification.SettingsPhoneVerificationFragment;
import com.snapchat.android.location.LocationPermissionsAccessor;
import com.snapchat.android.location.LocationProvider;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.networkmanager.DownloadManager;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.notification.NotificationRegistrar;
import com.snapchat.android.receiver.ConnectivityReceiver;
import com.snapchat.android.screenshotdetection.ScreenshotDetector;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.snapkidz.SnapKidzPreviewFragment;
import com.snapchat.android.ui.SnapView;
import com.snapchat.android.util.ActivityLauncher;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.SnapListItemHandler;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.SnapchatPagerAdapter;
import com.snapchat.android.util.SnapchatViewPager;
import com.snapchat.android.util.SoftNavigationBarManager;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.chat.SecureChatService;
import com.snapchat.android.util.crypto.DeviceTokenManager;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.CancelInChatSnapEvent;
import com.snapchat.android.util.eventbus.CancelQuickSnapEvent;
import com.snapchat.android.util.eventbus.CancelReplyEvent;
import com.snapchat.android.util.eventbus.ChangeBrightnessEvent;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.DisplayInAppNotificationEvent;
import com.snapchat.android.util.eventbus.DoubleTapToReplyEvent;
import com.snapchat.android.util.eventbus.ForceVerificationEvent;
import com.snapchat.android.util.eventbus.GetCurrentActivityEvent;
import com.snapchat.android.util.eventbus.GlobalLayoutEvent;
import com.snapchat.android.util.eventbus.HardwareKeyEvent;
import com.snapchat.android.util.eventbus.InChatSnapEvent;
import com.snapchat.android.util.eventbus.LockScreenOpenedEvent;
import com.snapchat.android.util.eventbus.LogoutEvent;
import com.snapchat.android.util.eventbus.MessagingGatewayInfoUpdatedEvent;
import com.snapchat.android.util.eventbus.QuickSnapEvent;
import com.snapchat.android.util.eventbus.RecentStoryReplyEvent;
import com.snapchat.android.util.eventbus.ScrollFeedToTopEvent;
import com.snapchat.android.util.eventbus.ScrollStoriesFragmentToTopEvent;
import com.snapchat.android.util.eventbus.SetPagingEnabledEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.SnapCapturedEvent;
import com.snapchat.android.util.eventbus.SnapReadyForRecipientsEvent;
import com.snapchat.android.util.eventbus.SnapReadyForSendingEvent;
import com.snapchat.android.util.eventbus.SnapSendInitiatedEvent;
import com.snapchat.android.util.eventbus.SoftNavigationBarEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.eventbus.StorySnapPostEvent;
import com.snapchat.android.util.eventbus.StorySnapPostedFromSnapPreviewEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.eventbus.UpdatingUserToDatabasesCompleteEvent;
import com.snapchat.android.util.eventbus.UpdatingUserToDatabasesEvent;
import com.snapchat.android.util.fragment.FragmentManagerProvider;
import com.snapchat.android.util.fragment.FragmentPageChangeCallback;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.snapchat.android:
//            SnapchatActivity, SnapUploadPolicy, SnapchatApplication, Timber, 
//            HomePagerAdapter, SnapkidzHomeActivity, InAppNotificationManager, SnapPreviewFragment, 
//            ScAcceptTermsActivity

public class LandingPageActivity extends SnapchatActivity
    implements android.support.v4.app.LoaderManager.LoaderCallbacks, FragmentPageChangeCallback, com.snapchat.android.util.fragment.SnapchatFragment.SnapchatFragmentInterface
{

    static SecureChatService i;
    private static LandingPageActivity v;
    private float A;
    private int B;
    private boolean C;
    private Set D;
    private SnapchatPagerAdapter E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private final SnapchatServiceManager J;
    private final DictionaryEasyMetric K;
    private final CameraEventAnalytics L;
    private final NetworkAnalytics M;
    private final NotificationAnalytics N;
    private final RecentStoryReplyAnalyticsManager O;
    private final SoftNavigationBarManager P;
    private final AndroidNotificationManager Q;
    private final DownloadManager R;
    private final DiscoverRepository S;
    private final ChatConnectionMonitor T;
    private final ConnectivityReceiver U;
    private final LocationProvider V;
    private final LocationPermissionsAccessor W;
    private InAppNotificationManager X;
    private boolean Y;
    private boolean Z;
    protected SnapchatViewPager a;
    private final Runnable aa;
    private Handler ab;
    private boolean ac;
    private boolean ad;
    private ServiceConnection ae = new ServiceConnection() {

        final LandingPageActivity a;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            LandingPageActivity.i = ((com.snapchat.android.util.chat.SecureChatService.SecureChatBinder)ibinder).a();
            LandingPageActivity.c(a, true);
            if (a.p == null)
            {
                LandingPageActivity.d(a, true);
            } else
            if (a.c() && a.p.z() != null)
            {
                a.v();
                return;
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            LandingPageActivity.i = null;
            LandingPageActivity.c(a, false);
            LandingPageActivity.d(a, false);
            SendingMailman.a().c();
        }

            
            {
                a = LandingPageActivity.this;
                super();
            }
    };
    protected int b;
    protected SnapCapturedEvent c;
    protected DoubleTapToReplyEvent d;
    protected InChatSnapEvent e;
    protected QuickSnapEvent f;
    protected OnShareDSnapEvent g;
    ProgressDialog h;
    protected LifecycleAnalytics j;
    protected DeepLinkParser k;
    protected FragmentManagerProvider l;
    protected SendSnapController m;
    protected UploadSnapMediaController n;
    protected Bus o;
    private final SnapUploadPolicy w;
    private SnapListItemHandler x;
    private boolean y;
    private float z;

    public LandingPageActivity()
    {
        this(AndroidNotificationManager.a(), new SendSnapController(), new UploadSnapMediaController(), SnapchatServiceManager.a(), DictionaryEasyMetric.a(), CameraEventAnalytics.a(), NetworkAnalytics.a(), RecentStoryReplyAnalyticsManager.a(), SoftNavigationBarManager.a(), new SnapUploadPolicy(), DownloadManager.a(), DiscoverRepository.a(), ChatConnectionMonitor.a(), BusProvider.a(), new ConnectivityReceiver(), LocationProvider.a(), new LocationPermissionsAccessor());
    }

    LandingPageActivity(AndroidNotificationManager androidnotificationmanager, SendSnapController sendsnapcontroller, UploadSnapMediaController uploadsnapmediacontroller, SnapchatServiceManager snapchatservicemanager, DictionaryEasyMetric dictionaryeasymetric, CameraEventAnalytics cameraeventanalytics, NetworkAnalytics networkanalytics, 
            RecentStoryReplyAnalyticsManager recentstoryreplyanalyticsmanager, SoftNavigationBarManager softnavigationbarmanager, SnapUploadPolicy snapuploadpolicy, DownloadManager downloadmanager, DiscoverRepository discoverrepository, ChatConnectionMonitor chatconnectionmonitor, Bus bus, 
            ConnectivityReceiver connectivityreceiver, LocationProvider locationprovider, LocationPermissionsAccessor locationpermissionsaccessor)
    {
        b = 2;
        y = false;
        z = -1F;
        A = -1F;
        C = true;
        D = new HashSet();
        F = false;
        G = false;
        H = false;
        I = false;
        l = new FragmentManagerProvider();
        N = new NotificationAnalytics();
        Y = false;
        Z = false;
        aa = new Runnable() {

            final LandingPageActivity a;

            public void run()
            {
                LandingPageActivity.a(a, true);
            }

            
            {
                a = LandingPageActivity.this;
                super();
            }
        };
        ab = new Handler();
        ac = true;
        ad = false;
        SnapchatApplication.e().a(this);
        Q = androidnotificationmanager;
        m = sendsnapcontroller;
        n = uploadsnapmediacontroller;
        J = snapchatservicemanager;
        K = dictionaryeasymetric;
        L = cameraeventanalytics;
        M = networkanalytics;
        O = recentstoryreplyanalyticsmanager;
        P = softnavigationbarmanager;
        w = snapuploadpolicy;
        R = downloadmanager;
        o = bus;
        S = discoverrepository;
        T = chatconnectionmonitor;
        U = connectivityreceiver;
        V = locationprovider;
        W = locationpermissionsaccessor;
    }

    private void A()
    {
        try
        {
            a.getRootView().getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                final LandingPageActivity a;

                public void onGlobalLayout()
                {
                    a.o.a(new GlobalLayoutEvent());
                }

            
            {
                a = LandingPageActivity.this;
                super();
            }
            });
            return;
        }
        catch (NullPointerException nullpointerexception)
        {
            Timber.a("LandingPageActivity", nullpointerexception);
        }
    }

    private boolean B()
    {
        FragmentManager fragmentmanager = l.a(this);
        return a.getCurrentItem() == 1 && fragmentmanager.getBackStackEntryCount() == 0;
    }

    private void C()
    {
        E = new HomePagerAdapter(l.a(this));
        a.setAdapter(E);
        E.notifyDataSetChanged();
        try
        {
            a.getRootView().getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                final LandingPageActivity a;

                public void onGlobalLayout()
                {
                    a.o.a(new GlobalLayoutEvent());
                }

            
            {
                a = LandingPageActivity.this;
                super();
            }
            });
        }
        catch (NullPointerException nullpointerexception)
        {
            Timber.a("LandingPageActivity", nullpointerexception);
        }
        a.setOnPageChangeListener(new android.support.v4.view.ViewPager.SimpleOnPageChangeListener() {

            final LandingPageActivity a;
            private int b;
            private int c;
            private int d;
            private boolean e;

            private void a(int i1)
            {
                FragmentManager fragmentmanager = a.l.a(a);
                boolean flag;
                if (fragmentmanager.getBackStackEntryCount() != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    return;
                }
                if (i1 != c && UserPrefs.R() && !ViewUtils.a(a.getWindow()))
                {
                    UserPrefs.p(false);
                    LandingPageActivity.c(a).b(a);
                }
                SnapchatFragment snapchatfragment = a.a.b(i1);
                if (snapchatfragment != null)
                {
                    snapchatfragment.g(true);
                    Iterator iterator = fragmentmanager.getFragments().iterator();
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            break;
                        }
                        Fragment fragment = (Fragment)iterator.next();
                        if ((fragment instanceof SnapchatFragment) && !snapchatfragment.equals(fragment))
                        {
                            ((SnapchatFragment)fragment).g(false);
                        }
                    } while (true);
                }
                Timber.f("LandingPageActivity", (new StringBuilder()).append("markFragmentVisibilityChanged to: ").append(i1).append(" from: ").append(c).toString(), new Object[0]);
                c = i1;
            }

            public void onPageScrollStateChanged(int i1)
            {
                if (i1 == 0)
                {
                    a.n();
                    a(b);
                }
                d = i1;
            }

            public void onPageScrolled(int i1, float f1, int j1)
            {
                if (j1 == 0)
                {
                    if (b == c && e)
                    {
                        a.a.a(b);
                        SnapchatFragment snapchatfragment1 = a.a.b(b);
                        boolean flag1;
                        if (!a.o())
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        if (snapchatfragment1 != null && !flag1)
                        {
                            snapchatfragment1.g(true);
                        }
                    }
                    e = false;
                } else
                if (!e)
                {
                    boolean flag;
                    SnapchatFragment snapchatfragment;
                    if (j1 < a.a.getWidth() / 2)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    e = true;
                    snapchatfragment = a.a.b(b);
                    Timber.f("LandingPageActivity", (new StringBuilder()).append("onScrollStart from: ").append(b).toString(), new Object[0]);
                    if (snapchatfragment != null)
                    {
                        snapchatfragment.e(flag);
                        return;
                    }
                }
            }

            public void onPageSelected(int i1)
            {
                b = i1;
                AnalyticsEvents.a(c, b);
                LandingPageActivity.a(a).a(c, b);
                LandingPageActivity.b(a).b();
                i1;
                JVM INSTR tableswitch 2 2: default 64
            //                           2 80;
                   goto _L1 _L2
_L1:
                if (d == 0)
                {
                    a(b);
                }
                return;
_L2:
                a.j();
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                a = LandingPageActivity.this;
                super();
                b = a.a.getCurrentItem();
                c = a.a.getCurrentItem();
                d = 0;
                e = false;
            }
        });
    }

    private void D()
    {
        Intent intent = getIntent();
        if (intent != null && intent.getBooleanExtra("fromServerNotification", false))
        {
            N.a();
            M.b();
        }
    }

    private void E()
    {
        Intent intent = new Intent(this, com/snapchat/android/util/chat/SecureChatService);
        startService(intent);
        if (!bindService(intent, ae, 1))
        {
            stopService(intent);
        }
    }

    static CameraEventAnalytics a(LandingPageActivity landingpageactivity)
    {
        return landingpageactivity.L;
    }

    private void a(Uri uri)
    {
        android.graphics.Bitmap bitmap = SnapMediaUtils.a(uri, this);
        if (bitmap == null)
        {
            AlertDialogUtils.a(0x7f0c0172, this);
            return;
        } else
        {
            p = User.a(this);
            onSnapCapturedEvent(new SnapCapturedEvent((new com.snapchat.android.model.Snapbryo.Builder()).a(bitmap).a(true).a()));
            return;
        }
    }

    private void a(AnnotatedMediabryo annotatedmediabryo)
    {
        if (annotatedmediabryo.D().isEmpty())
        {
            a(3);
            return;
        }
        if (annotatedmediabryo.D().size() > 1)
        {
            a(1);
            return;
        }
        if (e != null)
        {
            o.a(new CancelInChatSnapEvent());
            return;
        }
        if (f != null)
        {
            o.a(new CancelQuickSnapEvent());
            return;
        } else
        {
            a(1);
            return;
        }
    }

    private void a(AnnotatedMediabryo annotatedmediabryo, boolean flag)
    {
        boolean flag1 = true;
        if (annotatedmediabryo.D().isEmpty())
        {
            return;
        }
        com.snapchat.android.analytics.AnalyticsEvents.AnalyticsSendSnapSource analyticssendsnapsource = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsSendSnapSource.CAMERA;
        com.snapchat.android.analytics.AnalyticsEvents.AnalyticsSendSnapSource analyticssendsnapsource1;
        if (d != null)
        {
            if (d.a() == flag1)
            {
                analyticssendsnapsource = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsSendSnapSource.DOUBLE_TAP_FEED;
            } else
            if (d.a() == 3)
            {
                analyticssendsnapsource = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsSendSnapSource.DOUBLE_TAP_FRIENDS;
            }
            AnalyticsEvents.i(flag1);
            analyticssendsnapsource1 = analyticssendsnapsource;
        } else
        if (e != null)
        {
            analyticssendsnapsource1 = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsSendSnapSource.IN_CHAT;
        } else
        if (f != null)
        {
            analyticssendsnapsource1 = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsSendSnapSource.QUICK_SNAP;
        } else
        if (g != null)
        {
            analyticssendsnapsource1 = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsSendSnapSource.DOUBLE_TAP_DISCOVER;
        } else
        {
            analyticssendsnapsource1 = analyticssendsnapsource;
        }
        if (annotatedmediabryo.l().isEmpty())
        {
            flag1 = false;
        }
        AnalyticsEvents.a(annotatedmediabryo, analyticssendsnapsource1, flag1, flag, O.b(), annotatedmediabryo.D().size(), p);
    }

    private boolean a(int i1, KeyEvent keyevent)
    {
        i1;
        JVM INSTR lookupswitch 5: default 52
    //                   19: 93
    //                   20: 93
    //                   21: 93
    //                   22: 93
    //                   82: 93;
           goto _L1 _L2 _L2 _L2 _L2 _L2
_L1:
        o.a(new HardwareKeyEvent(i1, keyevent));
        if (!i() || i1 != 27 && i1 != 25 && i1 != 24) goto _L3; else goto _L2
_L2:
        return true;
_L3:
        return false;
    }

    static boolean a(LandingPageActivity landingpageactivity, boolean flag)
    {
        landingpageactivity.Z = flag;
        return flag;
    }

    static DownloadManager b(LandingPageActivity landingpageactivity)
    {
        return landingpageactivity.R;
    }

    private SnapchatFragment b(FragmentManager fragmentmanager, int i1)
    {
        return (SnapchatFragment)fragmentmanager.findFragmentByTag(fragmentmanager.getBackStackEntryAt(i1).getName());
    }

    static boolean b(LandingPageActivity landingpageactivity, boolean flag)
    {
        landingpageactivity.ad = flag;
        return flag;
    }

    static SnapchatServiceManager c(LandingPageActivity landingpageactivity)
    {
        return landingpageactivity.J;
    }

    private void c(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).edit();
        editor.putBoolean("snapchatUserIsLoggedIn", flag);
        editor.apply();
    }

    static boolean c(LandingPageActivity landingpageactivity, boolean flag)
    {
        landingpageactivity.G = flag;
        return flag;
    }

    static boolean d(LandingPageActivity landingpageactivity, boolean flag)
    {
        landingpageactivity.I = flag;
        return flag;
    }

    public static boolean k()
    {
        if (v == null)
        {
            return false;
        } else
        {
            return ViewUtils.a(v.getWindow());
        }
    }

    public static boolean l()
    {
        while (v == null || v.getSupportFragmentManager().getBackStackEntryCount() <= 0) 
        {
            return false;
        }
        return true;
    }

    public static SecureChatService t()
    {
        return i;
    }

    private void y()
    {
        Intent intent = new Intent(this, com/snapchat/android/SnapkidzHomeActivity);
        intent.addFlags(0x4000000);
        startActivity(intent);
        finish();
    }

    private void z()
    {
        if (X != null)
        {
            return;
        } else
        {
            ((ViewStub)findViewById(0x7f0a01ef)).inflate();
            X = new InAppNotificationManager(this, findViewById(0x7f0a01ff));
            return;
        }
    }

    int a(Intent intent)
    {
        if (Z)
        {
            b();
            Z = false;
            return 2;
        }
        if (intent.getBooleanExtra("fromServerNotification", false) && !Y)
        {
            b();
            return b(intent);
        } else
        {
            return b(intent);
        }
    }

    public NotificationAnalytics a()
    {
        return N;
    }

    protected void a(int i1)
    {
        SnapchatFragment snapchatfragment;
        try
        {
            l.a(this).popBackStackImmediate(null, 1);
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.a("LandingPageActivity", illegalstateexception);
        }
        a.setPagingEnabled(true);
        if (i1 != 0) goto _L2; else goto _L1
_L1:
        a.setChatFragmentAccessible(true);
_L4:
        a.setCurrentItem(i1, false);
        snapchatfragment = e();
        if (snapchatfragment != null)
        {
            snapchatfragment.g(true);
        }
        g = null;
        return;
_L2:
        if (i1 == 3)
        {
            StoriesFragment storiesfragment = (StoriesFragment)a.b(i1);
            if (storiesfragment != null)
            {
                storiesfragment.i();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(int i1, boolean flag)
    {
        if (i1 == 0)
        {
            a.setChatFragmentAccessible(true);
        }
        a.setCurrentItem(i1, flag);
    }

    protected void a(Bundle bundle)
    {
        if (bundle != null)
        {
            e = (InChatSnapEvent)bundle.getParcelable("in_chat_snap_event");
            b = bundle.getInt("view_pager_index", 2);
            boolean flag = bundle.getBoolean("should_pop_fragments");
            if (b == 2 && !u)
            {
                b();
                e = null;
            } else
            {
                if (b == 0 && !u)
                {
                    b();
                    return;
                }
                if (flag)
                {
                    b = 2;
                    b();
                    return;
                }
            }
        }
    }

    void a(FragmentManager fragmentmanager, int i1)
    {
        if (i1 == 0)
        {
            switch (a.getCurrentItem())
            {
            case 2: // '\002'
            default:
                a.setPagingEnabled(true);
                d();
                return;

            case 0: // '\0'
                if (O.b())
                {
                    a(3);
                    return;
                } else
                {
                    a(1);
                    return;
                }

            case 1: // '\001'
            case 3: // '\003'
                a(2);
                return;

            case 4: // '\004'
                a(3);
                return;
            }
        }
        if (i1 == 1)
        {
            a(a.getCurrentItem());
            return;
        } else
        {
            d();
            b(fragmentmanager, -1 + (i1 - 1)).g(true);
            return;
        }
    }

    public void a(Loader loader, Cursor cursor)
    {
        long l1;
        switch (loader.getId())
        {
        default:
            return;

        case 100: // 'd'
            l1 = UserPrefs.a(this);
            break;
        }
        ArrayList arraylist = new ArrayList();
        if (cursor != null && cursor.moveToFirst())
        {
            do
            {
                long l2 = cursor.getLong(0);
                String s1 = cursor.getString(1);
                if (System.currentTimeMillis() - l2 <= 10000L && l2 > l1 && !D.contains(s1))
                {
                    arraylist.add(Long.valueOf(l2));
                    l1 = l2;
                }
                D.add(s1);
            } while (cursor.moveToNext());
        }
        UserPrefs.a(this, l1);
        ScreenshotDetector.a().b(arraylist);
    }

    protected void a(Mediabryo mediabryo)
    {
        if (mediabryo instanceof Snapbryo)
        {
            Snapbryo snapbryo = (Snapbryo)mediabryo;
            if (snapbryo.j())
            {
                snapbryo.a(mediabryo.N().split("~")[1]);
                snapbryo.i(e.a());
            }
            n.a(snapbryo);
            return;
        } else
        {
            DSnapbryo dsnapbryo = (DSnapbryo)mediabryo;
            n.a(dsnapbryo);
            return;
        }
    }

    protected void a(Mediabryo mediabryo, boolean flag)
    {
        AnnotatedMediabryo annotatedmediabryo = (AnnotatedMediabryo)mediabryo;
        m.e(annotatedmediabryo);
_L2:
        if (!annotatedmediabryo.D().isEmpty())
        {
            o.a(new SnapSendInitiatedEvent());
        }
        a(annotatedmediabryo, flag);
        O.c();
        O.d();
        a(annotatedmediabryo);
        return;
        Object obj;
        obj;
_L3:
        (new ErrorMetric(((Exception) (obj)).getMessage())).a(((Throwable) (obj))).c();
        if (true) goto _L2; else goto _L1
_L1:
        obj;
          goto _L3
    }

    protected void a(User user)
    {
        super.a(user);
        Timber.c("LandingPageActivity", (new StringBuilder()).append("onUserLoaded ").append(user).toString(), new Object[0]);
        if (p != null && c())
        {
            c(true);
            AlertDialogUtils.b(this);
            AlertDialogUtils.a(this);
            if (I && p.z() != null)
            {
                v();
            }
        } else
        {
            if (UserPrefs.w())
            {
                y();
                return;
            }
            ActivityLauncher.a(this);
            c(false);
        }
        if (H)
        {
            UserPrefs.c(true);
            AnalyticsEvents.a();
            j.a(getIntent());
            (new NotificationRegistrar(this)).a(this);
            if (p != null)
            {
                SyncAllTask.a(p, false, true);
            }
            H = false;
        }
    }

    protected void a(SnapchatFragment snapchatfragment, String s1)
    {
        SnapchatFragment snapchatfragment1 = e();
        FragmentManager fragmentmanager = l.a(this);
        if ((snapchatfragment1 instanceof SnapPreviewFragment) && (snapchatfragment instanceof SnapPreviewFragment))
        {
            fragmentmanager.popBackStack();
        }
        if (snapchatfragment1 != null)
        {
            snapchatfragment1.g(false);
        }
        FragmentTransaction fragmenttransaction = fragmentmanager.beginTransaction();
        if (snapchatfragment1 != null)
        {
            fragmenttransaction.hide(snapchatfragment1);
        }
        fragmenttransaction.add(0x7f0a01ed, snapchatfragment, s1);
        fragmenttransaction.addToBackStack(s1);
        try
        {
            fragmenttransaction.commit();
            ab.post(new Runnable(snapchatfragment) {

                final SnapchatFragment a;
                final LandingPageActivity b;

                public void run()
                {
                    a.g(true);
                }

            
            {
                b = LandingPageActivity.this;
                a = snapchatfragment;
                super();
            }
            });
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.a("LandingPageActivity", illegalstateexception);
        }
    }

    public void a(boolean flag)
    {
        z();
        X.b(flag);
    }

    public boolean a(int i1, SnapchatFragment snapchatfragment)
    {
        if (!o()) goto _L2; else goto _L1
_L1:
        if (a == null || a.getCurrentItem() != i1) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (snapchatfragment != e())
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    protected int b(Intent intent)
    {
        int i1 = intent.getIntExtra("goToFragmentNum", 2);
        boolean flag = o();
        if (flag && k.a(intent) != null)
        {
            i1 = 3;
        } else
        if (!flag || i1 == 2)
        {
            if (ChatFragment.k() || ChatFragment.i())
            {
                return 0;
            } else
            {
                return b;
            }
        }
        return i1;
    }

    protected void b()
    {
        for (FragmentManager fragmentmanager = l.a(this); fragmentmanager.getBackStackEntryCount() > 0; fragmentmanager.popBackStackImmediate()) { }
    }

    public void b(boolean flag)
    {
        z();
        X.a(flag);
    }

    boolean c()
    {
        if (!UserPrefs.p()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (UserPrefs.l())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (p == null) goto _L1; else goto _L3
_L3:
        p.G();
        return false;
        if (UserPrefs.w()) goto _L1; else goto _L4
_L4:
        return true;
    }

    void d()
    {
        super.onBackPressed();
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        SnapchatFragment snapchatfragment = e();
        if (motionevent.getAction() == 0)
        {
            z = motionevent.getRawX();
            A = motionevent.getRawY();
        }
        if ((snapchatfragment instanceof CameraFragment) && ((CameraFragment)snapchatfragment).a(motionevent))
        {
            return true;
        }
        if (B())
        {
            if (x.a(motionevent, z, A, B))
            {
                return true;
            }
        } else
        if (g())
        {
            if (x.b(motionevent, z, A, B))
            {
                return true;
            }
        } else
        if (h() && x.a(motionevent, z, A, B))
        {
            return true;
        }
        return super.dispatchTouchEvent(motionevent);
    }

    protected SnapchatFragment e()
    {
        FragmentManager fragmentmanager = l.a(this);
        int i1 = fragmentmanager.getBackStackEntryCount();
        if (i1 > 0)
        {
            return b(fragmentmanager, i1 - 1);
        }
        if (a == null)
        {
            return null;
        } else
        {
            return a.b(a.getCurrentItem());
        }
    }

    public boolean f()
    {
        return F;
    }

    public boolean g()
    {
        return a.getCurrentItem() == 3 && o();
    }

    public boolean h()
    {
        return a.getCurrentItem() == 0 && o();
    }

    public boolean i()
    {
        return a.getCurrentItem() == 2 && o();
    }

    protected void j()
    {
        o.a(new ScrollFeedToTopEvent());
        if (d == null || d.a() != 3)
        {
            o.a(new ScrollStoriesFragmentToTopEvent());
        }
    }

    protected void m()
    {
        Intent intent;
        int i1;
        intent = getIntent();
        i1 = a(intent);
        if (i1 != 2)
        {
            n();
        }
        i1;
        JVM INSTR tableswitch 0 0: default 40
    //                   0 64;
           goto _L1 _L2
_L1:
        a.setCurrentItem(i1, false);
        intent.putExtra("goToFragmentNum", 2);
        setIntent(intent);
        return;
_L2:
        String s1 = intent.getStringExtra("friendUsername");
        boolean flag;
        if (ChatFragment.k() && (TextUtils.isEmpty(s1) || TextUtils.equals(s1, ChatUtils.b(ChatFragment.b))))
        {
            ((AlarmManager)getSystemService("alarm")).cancel(ChatFragment.a);
            s1 = ChatUtils.b(ChatFragment.b);
            ChatFragment.l();
            flag = true;
        } else
        {
            flag = false;
        }
        if (!TextUtils.isEmpty(s1))
        {
            Timber.f("LandingPageActivity", (new StringBuilder()).append("CHAT-LOG: LandingPageActivity setInitialFragment setFriendUsername: ").append(s1).toString(), new Object[0]);
            ChatFragment.a(s1);
            ChatFragment chatfragment = (ChatFragment)a.b(0);
            if (chatfragment != null)
            {
                Timber.f("LandingPageActivity", "CHAT-LOG: LandingPageActivity setInitialFragment updateFriendIfNecessary", new Object[0]);
                boolean flag1;
                if (!flag)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                chatfragment.b(flag1);
            }
        }
        intent.removeExtra("friendUsername");
        a.setChatFragmentAccessible(true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void n()
    {
        int i1 = -1 + E.getCount();
        if (a.getOffscreenPageLimit() != i1)
        {
            a.setOffscreenPageLimit(i1);
        }
    }

    protected boolean o()
    {
        return l.a(this).getBackStackEntryCount() == 0;
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        n();
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i1);
        aobj[1] = Integer.valueOf(j1);
        Timber.c("LandingPageActivity", "Activity Request with code %d, and Result with code %d", aobj);
        if (j1 != 1) goto _L2; else goto _L1
_L1:
        onLogoutEvent(null);
_L4:
        return;
_L2:
        super.onActivityResult(i1, j1, intent);
        switch (i1)
        {
        case 1002: 
        default:
            return;

        case 1001: 
            if (j1 != -1)
            {
                continue; /* Loop/switch isn't completed */
            }
            Uri uri = intent.getData();
            if (uri != null)
            {
                a(uri);
                return;
            }
            break;

        case 1003: 
            setIntent(intent);
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (j1 != 0) goto _L4; else goto _L3
_L3:
        return;
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void onBackPressed()
    {
        FragmentManager fragmentmanager = l.a(this);
        fragmentmanager.executePendingTransactions();
        SnapchatFragment snapchatfragment = e();
        if (snapchatfragment == null)
        {
            d();
        } else
        if (!snapchatfragment.e())
        {
            snapchatfragment.g(false);
            a(fragmentmanager, fragmentmanager.getBackStackEntryCount());
            return;
        }
    }

    public void onCameraStateEvent(CameraStateEvent camerastateevent)
    {
        if (camerastateevent.a)
        {
            x.g();
        }
    }

    public void onCancelInChatSnapEvent(CancelInChatSnapEvent cancelinchatsnapevent)
    {
        int i1;
label0:
        {
            if (e != null)
            {
                i1 = e.b();
                e = null;
                if (cancelinchatsnapevent.a())
                {
                    break label0;
                }
            }
            return;
        }
        a(i1);
        a(0, false);
    }

    public void onCancelQuickSnapEvent(CancelQuickSnapEvent cancelquicksnapevent)
    {
        int i1;
label0:
        {
            if (f != null)
            {
                i1 = f.c;
                f = null;
                if (cancelquicksnapevent.a())
                {
                    break label0;
                }
            }
            return;
        }
        a(i1);
        a(0, false);
    }

    public void onCancelReplyEvent(CancelReplyEvent cancelreplyevent)
    {
        d = null;
        g = null;
        O.d();
    }

    public void onChangeBrightnessEvent(ChangeBrightnessEvent changebrightnessevent)
    {
        android.view.WindowManager.LayoutParams layoutparams = getWindow().getAttributes();
        layoutparams.screenBrightness = changebrightnessevent.a;
        getWindow().setAttributes(layoutparams);
    }

    public void onChangeOrientationEvent(ChangeOrientationEvent changeorientationevent)
    {
        if (getRequestedOrientation() == changeorientationevent.a)
        {
            return;
        }
        setRequestedOrientation(changeorientationevent.a);
        if (changeorientationevent.a == 0 || changeorientationevent.a == 8)
        {
            P.b();
            return;
        } else
        {
            P.c();
            return;
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 2 || configuration.orientation == 1)
        {
            SnapchatFragment snapchatfragment = e();
            if (snapchatfragment instanceof SnapPreviewFragment)
            {
                ((SnapPreviewFragment)snapchatfragment).a_();
            } else
            if (snapchatfragment instanceof SnapKidzPreviewFragment)
            {
                ((SnapKidzPreviewFragment)snapchatfragment).b();
                return;
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        TimeLogger.a();
        j.a();
        N.b();
        super.onCreate(bundle);
        a(bundle);
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(Debug.getNativeHeapFreeSize());
        Timber.c("LandingPageActivity", "Native free space = %d", aobj);
        FontUtils.a(getAssets());
        o.c(this);
        C = true;
        System.setProperty("org.joda.time.DateTimeZone.Provider", "com.snapchat.android.util.DateTimeZoneProvider");
        Timber.c("LandingPageActivity", "Landing Page Activity content view set", new Object[0]);
        setContentView(0x7f040056);
        getWindow().setBackgroundDrawable(null);
        P.a(getWindow().getDecorView());
        a = (SnapchatViewPager)findViewById(0x7f0a01ee);
        A();
        x = SnapListItemHandler.a();
        x.a((SnapView)findViewById(0x7f0a01f0));
        B = ViewConfiguration.get(this).getScaledTouchSlop();
        Caches.a();
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            android.view.WindowManager.LayoutParams layoutparams = getWindow().getAttributes();
            layoutparams.rotationAnimation = 1;
            getWindow().setAttributes(layoutparams);
        }
        C();
        U.a(this);
        onTitleBarEvent(new TitleBarEvent(false));
        D();
        TimeLogger.b();
    }

    public Loader onCreateLoader(int i1, Bundle bundle)
    {
        String as[];
        switch (i1)
        {
        default:
            return null;

        case 100: // 'd'
            as = (new String[] {
                "datetaken", "_display_name"
            });
            break;
        }
        return new CursorLoader(this, android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, as, null, null, "datetaken DESC LIMIT 5");
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (C)
        {
            o.b(this);
        }
        U.b(this);
        C = false;
    }

    public void onDisplayInAppNotificationEvent(DisplayInAppNotificationEvent displayinappnotificationevent)
    {
        z();
        X.a(displayinappnotificationevent);
    }

    public void onDoubleTapToReplyEvent(DoubleTapToReplyEvent doubletaptoreplyevent)
    {
        d = doubletaptoreplyevent;
        a.setCurrentItem(2, false);
    }

    public void onEditionClose(EditionClosedEvent editionclosedevent)
    {
        FragmentManager fragmentmanager = l.a(this);
        int i1 = -1 + fragmentmanager.getBackStackEntryCount();
        if (i1 >= 0)
        {
            SnapchatFragment snapchatfragment = b(fragmentmanager, i1);
            if (snapchatfragment != null)
            {
                snapchatfragment.g(false);
            }
        }
        R.b();
        a(4);
    }

    public void onForceVerificationEvent(ForceVerificationEvent forceverificationevent)
    {
        UserPrefs.u(true);
        (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0c011b).setMessage(forceverificationevent.a()).setCancelable(false).setPositiveButton(0x7f0c011c, new android.content.DialogInterface.OnClickListener(forceverificationevent) {

            final ForceVerificationEvent a;
            final LandingPageActivity b;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                PhoneVerificationAnalytics.a(false, UserPrefs.g());
                b.o.a(new StartFragmentEvent(new SettingsPhoneVerificationFragment(a)));
            }

            
            {
                b = LandingPageActivity.this;
                a = forceverificationevent;
                super();
            }
        }).setNegativeButton(0x7f0c011a, new android.content.DialogInterface.OnClickListener() {

            final LandingPageActivity a;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                PhoneVerificationAnalytics.a(true, UserPrefs.g());
                dialoginterface.cancel();
            }

            
            {
                a = LandingPageActivity.this;
                super();
            }
        }).show();
    }

    public void onGetCurrentActivityEvent(GetCurrentActivityEvent getcurrentactivityevent)
    {
        getcurrentactivityevent.a().a(this);
    }

    public void onInChatSnapEvent(InChatSnapEvent inchatsnapevent)
    {
        if (a != null)
        {
            a.setCurrentItem(2, false);
        }
        e = inchatsnapevent;
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (a(i1, keyevent))
        {
            return true;
        } else
        {
            return super.onKeyDown(i1, keyevent);
        }
    }

    public boolean onKeyUp(int i1, KeyEvent keyevent)
    {
        if (a(i1, keyevent))
        {
            return true;
        } else
        {
            return super.onKeyUp(i1, keyevent);
        }
    }

    public void onLoadFinished(Loader loader, Object obj)
    {
        a(loader, (Cursor)obj);
    }

    public void onLoaderReset(Loader loader)
    {
    }

    public void onLogoutEvent(LogoutEvent logoutevent)
    {
        if (i != null)
        {
            i.c();
        }
        AlertDialogUtils.a(0x7f0c022d, this);
        ActivityLauncher.a(this);
    }

    public void onMessagingGatewayInfoUpdatedEvent(MessagingGatewayInfoUpdatedEvent messaginggatewayinfoupdatedevent)
    {
        if (i == null)
        {
            E();
            return;
        } else
        {
            v();
            return;
        }
    }

    public void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        setIntent(intent);
        D();
    }

    protected void onPause()
    {
        super.onPause();
        v = null;
        if (i != null)
        {
            i.a(false);
        }
        Q.a(false);
        T.a(false);
        SnapchatFragment snapchatfragment = e();
        if (snapchatfragment != null)
        {
            snapchatfragment.q_();
            Y = snapchatfragment.t_();
            long l1 = snapchatfragment.j();
            if (l1 >= 0L)
            {
                Timber.a("LandingPageActivity", (new StringBuilder()).append("Schedule to set flag to pop stacked fragments after ").append(l1).append(" ms.").toString(), new Object[0]);
                ab.postDelayed(aa, l1);
            }
        }
        V.c();
        x.g();
        SnapUtils.a();
        o.b(a);
        o.b(this);
        C = false;
        if (p != null)
        {
            p.H();
            S.g();
        }
    }

    public void onQuickSnapEvent(QuickSnapEvent quicksnapevent)
    {
        if (a != null)
        {
            a.setCurrentItem(2, false);
        }
        f = quicksnapevent;
    }

    public void onRecentStoryReplyEvent(RecentStoryReplyEvent recentstoryreplyevent)
    {
        O.a(recentstoryreplyevent);
        a(0, false);
    }

    protected void onRestart()
    {
        F = true;
        j.b();
        N.d();
        super.onRestart();
    }

    protected void onResume()
    {
        TimeLogger.a();
        super.onResume();
        v = this;
        if (i != null)
        {
            i.a(true);
        }
        Q.a(true);
        T.a(true);
        ab.removeCallbacks(aa);
        if (!C)
        {
            o.c(this);
        }
        o.c(a);
        if (UserPrefs.w())
        {
            y();
        } else
        {
            if (p == null)
            {
                H = true;
            } else
            {
                if (!c())
                {
                    ActivityLauncher.a(this);
                    c(false);
                    return;
                }
                AnalyticsEvents.a();
                j.a(getIntent());
                (new NotificationRegistrar(this)).a(this);
                SyncAllTask.a(p, false, true);
                StoryLibrary.a().e();
            }
            if (UserPrefs.l() && !UserPrefs.G())
            {
                startActivityForResult(new Intent(this, com/snapchat/android/ScAcceptTermsActivity), 1002);
                return;
            }
            w();
            Intent intent = getIntent();
            SharedPreferences sharedpreferences;
            if (intent != null)
            {
                if (intent.getBooleanExtra("fromServerNotification", false))
                {
                    AnalyticsEvents.j(intent.getStringExtra("type"));
                    intent.removeExtra("fromServerNotification");
                }
                AnalyticsEvents.h(intent.getBooleanExtra("fromNotification", false));
                intent.removeExtra("fromNotification");
            } else
            {
                AnalyticsEvents.h(false);
            }
            sharedpreferences = PreferenceManager.getDefaultSharedPreferences(this);
            if (sharedpreferences.contains("RESUMING_FROM_SWIPE_MESSAGE"))
            {
                AlertDialogUtils.a(this, getResources().getString(0x7f0c0207), sharedpreferences.getString("RESUMING_FROM_SWIPE_MESSAGE", ""));
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.remove("RESUMING_FROM_SWIPE_MESSAGE");
                editor.commit();
            }
            if (UserPrefs.l())
            {
                DeviceTokenManager.a().e();
            }
            TimeLogger.b();
            if (W.b())
            {
                V.b();
                return;
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (e != null)
        {
            bundle.putParcelable("in_chat_snap_event", e);
        }
        SnapchatFragment snapchatfragment = e();
        if (snapchatfragment != null && snapchatfragment.e_())
        {
            bundle.putBoolean("should_pop_fragments", true);
        }
        if (!o())
        {
            b = a.getCurrentItem();
            bundle.putInt("view_pager_index", b);
            return;
        } else
        {
            b = 2;
            return;
        }
    }

    public void onSetPagingEnabledEvent(SetPagingEnabledEvent setpagingenabledevent)
    {
        a.setPagingEnabled(setpagingenabledevent.a);
    }

    public void onShareDSnapEvent(OnShareDSnapEvent onsharedsnapevent)
    {
        a.setCurrentItem(4, false);
        g = onsharedsnapevent;
        g.a().d();
    }

    public void onShowDialogEvent(ShowDialogEvent showdialogevent)
    {
        String s1;
        if (showdialogevent.a == null)
        {
            s1 = getString(showdialogevent.b);
        } else
        {
            s1 = showdialogevent.a;
        }
        if (showdialogevent.d == com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.b)
        {
            if (showdialogevent.c != 0)
            {
                AlertDialogUtils.a(this, getString(showdialogevent.c), s1);
                return;
            } else
            {
                AlertDialogUtils.a(this, s1);
                return;
            }
        }
        if (showdialogevent.d == com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.c)
        {
            AlertDialogUtils.a(this, getString(showdialogevent.c), s1, showdialogevent.e);
            return;
        }
        if (showdialogevent.d == com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.d)
        {
            AlertDialogUtils.b(this, getString(showdialogevent.c), s1, showdialogevent.e);
            return;
        } else
        {
            AlertDialogUtils.a(s1, this);
            return;
        }
    }

    public void onSnapCapturedEvent(SnapCapturedEvent snapcapturedevent)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        SnapPreviewFragment snappreviewfragment;
        p = User.c();
        c = snapcapturedevent;
        SharedPreferences sharedpreferences;
        if (d != null)
        {
            c.a().i(d.a);
        } else
        if (e != null)
        {
            c.a().i(e.a);
        } else
        if (f != null)
        {
            c.a().i(f.a);
        }
        if (!o() && (g == null || getSupportFragmentManager().getBackStackEntryCount() > 1))
        {
            continue; /* Loop/switch isn't completed */
        }
        snappreviewfragment = new SnapPreviewFragment();
        if (d == null)
        {
            break; /* Loop/switch isn't completed */
        }
        snappreviewfragment.a(d);
_L5:
        a(snappreviewfragment, "PreviewFragment");
        sharedpreferences = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e());
        if (!UserPrefs.D())
        {
            UserPrefs.i(true);
            if ((!sharedpreferences.getBoolean(SharedPreferenceKey.z.a(), false) || !W.a()) && !UserPrefs.L())
            {
                W.a(this, new com.snapchat.android.location.LocationPermissionsAccessor.LocationPermissionsDialogListener() {

                    final LandingPageActivity a;

                    public void a(boolean flag)
                    {
                        if (flag)
                        {
                            AnalyticsEvents.g();
                            (new UpdateFeatureSettingsTask()).executeOnExecutor(ScExecutors.b, new String[0]);
                        }
                    }

            
            {
                a = LandingPageActivity.this;
                super();
            }
                });
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (g == null) goto _L5; else goto _L4
_L4:
        snappreviewfragment.a(g);
          goto _L5
    }

    public void onSnapReadyForRecipientsEvent(SnapReadyForRecipientsEvent snapreadyforrecipientsevent)
    {
        Mediabryo mediabryo = snapreadyforrecipientsevent.a();
        if ((mediabryo instanceof Snapbryo) && ((Snapbryo)mediabryo).j())
        {
            a(mediabryo);
            return;
        }
        if (w.a())
        {
            a(mediabryo);
        }
        if (snapreadyforrecipientsevent.b() || mediabryo.D().size() == 0)
        {
            a(SendToFragment.a(mediabryo), "SendToFrag");
            return;
        }
        if (e != null || f != null || d != null || g != null)
        {
            o.a(new SnapReadyForSendingEvent(mediabryo, true));
            return;
        } else
        {
            a(SendToFragment.a(mediabryo), "SendToFrag");
            return;
        }
    }

    public void onSnapReadyForSendingEvent(SnapReadyForSendingEvent snapreadyforsendingevent)
    {
        Mediabryo mediabryo = snapreadyforsendingevent.a();
        boolean flag = snapreadyforsendingevent.b();
        if (!w.a())
        {
            a(mediabryo);
        }
        a(mediabryo, flag);
    }

    public void onSoftNavigationBarEvent(SoftNavigationBarEvent softnavigationbarevent)
    {
        if (softnavigationbarevent.a)
        {
            P.c();
            return;
        } else
        {
            P.b();
            return;
        }
    }

    protected void onStart()
    {
        TimeLogger.a();
        super.onStart();
        if (i == null)
        {
            E();
        }
        RegistrationAnalytics.a(false);
        TimeLogger.b();
    }

    public void onStartFragmentEvent(StartFragmentEvent startfragmentevent)
    {
        SnapchatFragment snapchatfragment = startfragmentevent.a;
        if (!TextUtils.isEmpty(startfragmentevent.c))
        {
            getFragmentManager().popBackStackImmediate(startfragmentevent.c, 0);
        }
        String s1;
        if (TextUtils.isEmpty(startfragmentevent.b))
        {
            s1 = snapchatfragment.toString();
        } else
        {
            s1 = startfragmentevent.b;
        }
        a(snapchatfragment, s1);
    }

    protected void onStop()
    {
        j.c();
        N.c();
        L.d();
        super.onStop();
        K.b();
        TimeLogger.c();
        if (UserPrefs.R() && l.a(this).getBackStackEntryCount() == 0)
        {
            UserPrefs.p(false);
            J.b(this);
        }
        if (i != null)
        {
            i.d();
            if (G)
            {
                unbindService(ae);
                G = false;
            }
            i = null;
            I = false;
        }
        if ((new LocationPermissionsAccessor()).b())
        {
            V.c();
        }
    }

    public void onStorySnapPostedFromSnapPreviewEvent(StorySnapPostedFromSnapPreviewEvent storysnappostedfromsnappreviewevent)
    {
        o.a(new StorySnapPostEvent());
        a(3);
    }

    public void onTitleBarEvent(TitleBarEvent titlebarevent)
    {
        while (titlebarevent.a == p() || a.getCurrentItem() == 2 && titlebarevent.a && o()) 
        {
            return;
        }
        ac = titlebarevent.a;
        q();
    }

    public void onUpdatingUserToDatabasesCompleteEvent(UpdatingUserToDatabasesCompleteEvent updatingusertodatabasescompleteevent)
    {
        if (h != null)
        {
            h.hide();
            if (!updatingusertodatabasescompleteevent.a())
            {
                AlertDialogUtils.a(this, "Failed to upgrade. Try again later");
            }
        }
    }

    public void onUpdatingUserToDatabasesEvent(UpdatingUserToDatabasesEvent updatingusertodatabasesevent)
    {
        h = ProgressDialog.show(this, "Upgrading Snapchat", "Loading...");
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        Timber.c("LandingPageActivity", (new StringBuilder()).append("On ac Should we onWindowFocusChanged has focus? ").append(flag).toString(), new Object[0]);
        if (flag && y)
        {
            Timber.c("LandingPageActivity", "On ac Calling onResume from window focus fn", new Object[0]);
            y = false;
            o.a(new LockScreenOpenedEvent());
        }
        KeyguardManager keyguardmanager = (KeyguardManager)getSystemService("keyguard");
        if (!flag && keyguardmanager.inKeyguardRestrictedInputMode())
        {
            a.setCurrentItem(2);
        }
    }

    boolean p()
    {
        return ac;
    }

    public InChatSnapEvent produceInChatSnapEvent()
    {
        return e;
    }

    public QuickSnapEvent produceQuickSnapEvent()
    {
        return f;
    }

    void q()
    {
        boolean flag = ad;
        ad = true;
        Runnable runnable = new Runnable(flag) {

            final boolean a;
            final LandingPageActivity b;

            public void run()
            {
                LandingPageActivity.b(b, false);
                if (a)
                {
                    b.q();
                }
            }

            
            {
                b = LandingPageActivity.this;
                a = flag;
                super();
            }
        };
        ab.postDelayed(runnable, getResources().getInteger(0x7f0b0002));
        if (flag)
        {
            return;
        }
        if (ac)
        {
            getWindow().addFlags(2048);
            getWindow().clearFlags(1024);
            return;
        } else
        {
            getWindow().addFlags(1024);
            getWindow().clearFlags(2048);
            return;
        }
    }

    public DoubleTapToReplyEvent r()
    {
        return d;
    }

    public SnapCapturedEvent s()
    {
        return c;
    }

    protected void u()
    {
        super.u();
        getSupportLoaderManager().initLoader(100, null, this);
    }

    void v()
    {
        if (i != null)
        {
            i.b();
            return;
        } else
        {
            Timber.e("LandingPageActivity", "Cannot start a session because sSecureChatService is null.", new Object[0]);
            return;
        }
    }

    void w()
    {
        if (((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode())
        {
            y = true;
        }
        m();
        SnapchatFragment snapchatfragment = e();
        if (snapchatfragment != null)
        {
            snapchatfragment.g(true);
        }
    }
}
