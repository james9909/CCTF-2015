// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.hardware.Camera;
import android.os.Handler;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.facebook.rebound.SimpleSpringListener;
import com.facebook.rebound.Spring;
import com.facebook.rebound.SpringConfig;
import com.facebook.rebound.SpringSystem;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.camera.cameradecor.QuickSnapCameraDecor;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.livechat.AdlLiveChatProvider;
import com.snapchat.android.livechat.LiveChatProvider;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.ConnectingRippleView;
import com.snapchat.android.ui.QuickSnapOnboardingOverlay;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.InterpolationUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraReadyEvent;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.ChangePreviewQualityEvent;
import com.snapchat.android.util.eventbus.ChangeWindowMarginEvent;
import com.snapchat.android.util.eventbus.SetPagingEnabledEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.here:
//            StreamView, LocalPreviewHolder, LockToStreamView, DisconnectReason

public class HoldToStreamView extends StreamView
{

    private static final String j = com/snapchat/android/ui/here/HoldToStreamView.getSimpleName();
    private static HoldToStreamView z;
    private SharedPreferences A;
    private ChatConversation B;
    private boolean C;
    private boolean D;
    private boolean E;
    private float F;
    private boolean G;
    private boolean H;
    private long I;
    private boolean J;
    private Spring K;
    private Spring L;
    private final Bus M;
    private boolean N;
    private byte O[];
    private final HereAnalytics P;
    private boolean Q;
    private Activity R;
    private final Runnable S;
    protected boolean a;
    protected LiveChatProvider b;
    protected MotionEvent c;
    protected boolean d;
    protected View e;
    protected LockToStreamView f;
    protected View g;
    private int k;
    private StreamView.StreamViewCallback l;
    private long m;
    private float n;
    private MotionEvent o;
    private ViewPropertyAnimator p;
    private GestureDetector q;
    private com.snapchat.android.camera.model.CameraModel.CameraType r;
    private com.snapchat.android.camera.model.CameraModel.CameraType s;
    private ConnectingRippleView t;
    private QuickSnapOnboardingOverlay u;
    private boolean v;
    private final Handler w;
    private float x;
    private boolean y;

    public HoldToStreamView(Context context)
    {
        super(context);
        k = 1000;
        a = false;
        b = new AdlLiveChatProvider();
        d = false;
        v = false;
        w = new Handler();
        H = false;
        I = 0L;
        J = false;
        N = false;
        P = new HereAnalytics();
        Q = false;
        S = new Runnable() {

            final HoldToStreamView a;

            public void run()
            {
                while (a.g.getVisibility() != 0 || a.e.getScaleX() > 0.35F) 
                {
                    return;
                }
                HoldToStreamView.b(a);
            }

            
            {
                a = HoldToStreamView.this;
                super();
            }
        };
        a(context);
        M = BusProvider.a();
    }

    public HoldToStreamView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        k = 1000;
        a = false;
        b = new AdlLiveChatProvider();
        d = false;
        v = false;
        w = new Handler();
        H = false;
        I = 0L;
        J = false;
        N = false;
        P = new HereAnalytics();
        Q = false;
        S = new _cls3();
        a(context);
        M = BusProvider.a();
    }

    public HoldToStreamView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        k = 1000;
        a = false;
        b = new AdlLiveChatProvider();
        d = false;
        v = false;
        w = new Handler();
        H = false;
        I = 0L;
        J = false;
        N = false;
        P = new HereAnalytics();
        Q = false;
        S = new _cls3();
        a(context);
        M = BusProvider.a();
    }

    static com.snapchat.android.camera.model.CameraModel.CameraType a(HoldToStreamView holdtostreamview, com.snapchat.android.camera.model.CameraModel.CameraType cameratype)
    {
        holdtostreamview.r = cameratype;
        return cameratype;
    }

    private void a(Context context)
    {
        if (isInEditMode())
        {
            return;
        } else
        {
            Timber.c(j, "Setting up the HoldToStream view.", new Object[0]);
            z = this;
            x = ViewConfiguration.get(context).getScaledTouchSlop();
            t = new ConnectingRippleView(context);
            addView(t);
            e = i.a(context);
            addView(e);
            A = PreferenceManager.getDefaultSharedPreferences(context);
            u = new QuickSnapOnboardingOverlay(context);
            addView(u);
            u.setVisibility(8);
            SpringConfig springconfig = new SpringConfig(320D, 24D);
            SpringSystem springsystem = SpringSystem.d();
            K = springsystem.b();
            K.a(springconfig);
            K.a(new SimpleSpringListener() {

                final HoldToStreamView a;

                public void a(Spring spring)
                {
                    while (!a.d || a.f.b()) 
                    {
                        return;
                    }
                    a.e.setX((float)spring.b());
                    HoldToStreamView.a(a);
                }

            
            {
                a = HoldToStreamView.this;
                super();
            }
            });
            L = springsystem.b();
            L.a(springconfig);
            L.a(new SimpleSpringListener() {

                final HoldToStreamView a;

                public void a(Spring spring)
                {
                    while (!a.d || a.f.b()) 
                    {
                        return;
                    }
                    a.e.setY((float)spring.b());
                    HoldToStreamView.a(a);
                }

            
            {
                a = HoldToStreamView.this;
                super();
            }
            });
            b(context);
            setWillNotDraw(false);
            return;
        }
    }

    static void a(HoldToStreamView holdtostreamview)
    {
        holdtostreamview.i();
    }

    static boolean a(HoldToStreamView holdtostreamview, boolean flag)
    {
        holdtostreamview.v = flag;
        return flag;
    }

    private void b(Context context)
    {
        f = new LockToStreamView(context, e, P);
        f.setY(getResources().getDimension(0x7f090038));
        addView(f, 0, 0);
        q = new GestureDetector(getContext(), new android.view.GestureDetector.SimpleOnGestureListener());
        q.setOnDoubleTapListener(new android.view.GestureDetector.SimpleOnGestureListener() {

            final HoldToStreamView a;

            public boolean onDoubleTap(MotionEvent motionevent)
            {
                if (HoldToStreamView.k(a))
                {
                    return true;
                }
                if (HoldToStreamView.l(a) == com.snapchat.android.camera.model.CameraModel.CameraType.b)
                {
                    HoldToStreamView.a(a, com.snapchat.android.camera.model.CameraModel.CameraType.a);
                } else
                {
                    HoldToStreamView.a(a, com.snapchat.android.camera.model.CameraModel.CameraType.b);
                }
                HoldToStreamView.m(a);
                return true;
            }

            
            {
                a = HoldToStreamView.this;
                super();
            }
        });
    }

    static void b(HoldToStreamView holdtostreamview)
    {
        holdtostreamview.l();
    }

    static boolean b(HoldToStreamView holdtostreamview, boolean flag)
    {
        holdtostreamview.H = flag;
        return flag;
    }

    static StreamView.StreamViewCallback c(HoldToStreamView holdtostreamview)
    {
        return holdtostreamview.l;
    }

    static ChatConversation d(HoldToStreamView holdtostreamview)
    {
        return holdtostreamview.B;
    }

    static void e(HoldToStreamView holdtostreamview)
    {
        holdtostreamview.q();
    }

    static void f(HoldToStreamView holdtostreamview)
    {
        holdtostreamview.o();
    }

    static void g(HoldToStreamView holdtostreamview)
    {
        holdtostreamview.s();
    }

    public static HoldToStreamView getLastInstance()
    {
        return z;
    }

    static void h(HoldToStreamView holdtostreamview)
    {
        holdtostreamview.k();
    }

    static HereAnalytics i(HoldToStreamView holdtostreamview)
    {
        return holdtostreamview.P;
    }

    private void i()
    {
        float f1 = e.getX() + (float)(e.getWidth() / 2);
        float f2 = e.getY() + (float)(e.getHeight() / 2);
        t.setRippleCenter(f1, f2);
    }

    static void j(HoldToStreamView holdtostreamview)
    {
        holdtostreamview.u();
    }

    private boolean j()
    {
        int i1 = A.getInt(SharedPreferenceKey.w.a(), 0);
        boolean flag = false;
        if (i1 < 5)
        {
            android.content.SharedPreferences.Editor editor = A.edit();
            editor.putInt(SharedPreferenceKey.w.a(), i1 + 1);
            editor.apply();
            flag = true;
        }
        return flag;
    }

    private void k()
    {
        if (v)
        {
            return;
        }
        p = e.animate();
        if (p == null)
        {
            throw new NullPointerException();
        } else
        {
            p.alpha(1.0F);
            m();
            v = true;
            return;
        }
    }

    static boolean k(HoldToStreamView holdtostreamview)
    {
        return holdtostreamview.G;
    }

    static com.snapchat.android.camera.model.CameraModel.CameraType l(HoldToStreamView holdtostreamview)
    {
        return holdtostreamview.r;
    }

    private void l()
    {
        if (v)
        {
            return;
        }
        p = e.animate();
        if (p == null)
        {
            throw new NullPointerException();
        }
        boolean flag = f.b();
        float f1 = 0.0F;
        if (flag)
        {
            f1 = 0.2F;
        }
        p.alpha(f1);
        p.setInterpolator(new AccelerateDecelerateInterpolator());
        m();
        v = true;
    }

    private void m()
    {
        p.setDuration(250L);
        p.setListener(new AnimatorListenerAdapter() {

            final HoldToStreamView a;

            public void onAnimationEnd(Animator animator)
            {
                HoldToStreamView.a(a, false);
            }

            
            {
                a = HoldToStreamView.this;
                super();
            }
        });
    }

    static void m(HoldToStreamView holdtostreamview)
    {
        holdtostreamview.t();
    }

    static Bus n(HoldToStreamView holdtostreamview)
    {
        return holdtostreamview.M;
    }

    private boolean n()
    {
        if (o == null)
        {
            o = MotionEvent.obtain(c);
        } else
        {
            float f1 = o.getRawX() - c.getRawX();
            float f2 = o.getRawY() - c.getRawY();
            if ((float)Math.sqrt(f1 * f1 + f2 * f2) > x)
            {
                o = MotionEvent.obtain(c);
                return true;
            }
        }
        return false;
    }

    private void o()
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (g != null && g.getVisibility() == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (a || f.b())
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
        if (flag3 == y)
        {
            return;
        }
        y = flag3;
        boolean flag4;
        Bus bus;
        if (!flag3)
        {
            flag4 = flag;
        } else
        {
            flag4 = false;
        }
        ViewUtils.a(this, flag4);
        bus = M;
        if (flag3)
        {
            flag = false;
        }
        bus.a(new ChangeWindowMarginEvent(flag));
        postDelayed(new Runnable() {

            final HoldToStreamView a;

            public void run()
            {
                StreamView.i.a();
            }

            
            {
                a = HoldToStreamView.this;
                super();
            }
        }, getResources().getInteger(0x7f0b0002));
    }

    private void p()
    {
        i.a(h.getWidth(), h.getHeight(), e.getMeasuredWidth(), e.getMeasuredHeight(), h.getInfo());
    }

    private void q()
    {
label0:
        {
            if (g == null || e == null)
            {
                return;
            }
            boolean flag;
            boolean flag1;
            if (g.getVisibility() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                boolean flag2 = d;
                flag1 = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            flag1 = true;
        }
        setKeepScreenOn(flag1);
    }

    private void r()
    {
        if (p != null)
        {
            p.cancel();
        }
        d = true;
        if (c != null)
        {
            e.setX(c.getRawX() - (float)(e.getWidth() / 2));
            e.setY(c.getRawY() - (float)(e.getHeight() / 2));
            i();
        }
        e.setVisibility(0);
        f.bringToFront();
    }

    private void s()
    {
        w.removeCallbacks(S);
        long l1;
        if (f.b())
        {
            l1 = 5000L;
        } else
        {
            l1 = 2000L;
        }
        w.postDelayed(S, l1);
    }

    private void t()
    {
        ViewPropertyAnimator viewpropertyanimator = e.animate();
        ViewPropertyAnimator viewpropertyanimator1 = f.animate();
        viewpropertyanimator.alpha(0.0F);
        viewpropertyanimator1.alpha(0.0F);
        viewpropertyanimator1.setListener(new AnimatorListenerAdapter() {

            final HoldToStreamView a;

            public void onAnimationEnd(Animator animator)
            {
                a.postDelayed(new Runnable(this) {

                    final _cls11 a;

                    public void run()
                    {
                        HoldToStreamView.n(a.a).a(new CameraStateEvent(true, HoldToStreamView.l(a.a)));
                        HoldToStreamView.b(a.a, true);
                    }

            
            {
                a = _pcls11;
                super();
            }
                }, 1000L);
            }

            
            {
                a = HoldToStreamView.this;
                super();
            }
        });
    }

    private void u()
    {
        int i1 = getResources().getDimensionPixelSize(0x7f090032);
        ViewPropertyAnimator viewpropertyanimator;
        ViewPropertyAnimator viewpropertyanimator1;
        if (r == com.snapchat.android.camera.model.CameraModel.CameraType.a)
        {
            f.setY(getHeight() - i1);
        } else
        {
            f.setY(i1);
        }
        f.c();
        viewpropertyanimator = e.animate();
        viewpropertyanimator1 = f.animate();
        viewpropertyanimator.alpha(1.0F);
        viewpropertyanimator1.alpha(1.0F);
        viewpropertyanimator.setListener(new AnimatorListenerAdapter() {

            final HoldToStreamView a;

            public void onAnimationEnd(Animator animator)
            {
                if (a.g.getVisibility() != 4)
                {
                    HoldToStreamView.g(a);
                }
            }

            
            {
                a = HoldToStreamView.this;
                super();
            }
        });
    }

    public void a()
    {
        P.b();
    }

    public void a(Activity activity, StreamView.StreamViewCallback streamviewcallback)
    {
        R = activity;
        l = streamviewcallback;
        Q = true;
    }

    public void a(MotionEvent motionevent)
    {
        c = MotionEvent.obtainNoHistory(motionevent);
        if (g != null && e != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (f != null) goto _L4; else goto _L3
_L3:
        if (!a) goto _L6; else goto _L5
_L5:
        int i1 = motionevent.getActionMasked();
        if (i1 == 1 || i1 == 3 || i1 == 5 || i1 == 6)
        {
            c(DisconnectReason.a);
            if (f.b())
            {
                M.a(new SetPagingEnabledEvent(true));
                return;
            }
        } else
        {
            com.snapchat.android.camera.model.CameraModel.CameraType cameratype;
            long l1;
            boolean flag;
            if (motionevent.getRawY() > n)
            {
                u.setUpperRegionHighlight(false);
                cameratype = com.snapchat.android.camera.model.CameraModel.CameraType.a;
            } else
            {
                u.setUpperRegionHighlight(true);
                cameratype = com.snapchat.android.camera.model.CameraModel.CameraType.b;
            }
            l1 = System.currentTimeMillis() - I;
            if (s != cameratype)
            {
                if (l1 < (long)k)
                {
                    I = System.currentTimeMillis();
                }
                s = cameratype;
            }
            if (s != r)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag && l1 > (long)k || f.b())
            {
                M.a(new CameraStateEvent(true, s));
                r = s;
                I = System.currentTimeMillis();
            }
            if (n())
            {
                s();
                k();
            }
            f.a(c);
            invalidate();
            return;
        }
_L6:
        if (true) goto _L1; else goto _L4
_L4:
        if (!a && !f.b())
        {
            return;
        }
          goto _L5
    }

    public void a(View view)
    {
        if (g != null)
        {
            removeView(g);
        }
        g = view;
        g.setVisibility(4);
        q();
        g.setOnClickListener(new android.view.View.OnClickListener() {

            final HoldToStreamView a;

            public void onClick(View view1)
            {
                HoldToStreamView.c(a).o();
            }

            
            {
                a = HoldToStreamView.this;
                super();
            }
        });
        g.setOnTouchListener(new android.view.View.OnTouchListener() {

            final HoldToStreamView a;

            public boolean onTouch(View view1, MotionEvent motionevent)
            {
                return a.onTouchEvent(motionevent);
            }

            
            {
                a = HoldToStreamView.this;
                super();
            }
        });
        addView(g);
        f.bringToFront();
        t.bringToFront();
        e.bringToFront();
    }

    public void a(ChatConversation chatconversation)
    {
        if (Q)
        {
            if (!b.b())
            {
                b.a(R, this, P);
            }
            com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth = chatconversation.v();
            if (hereauth != null)
            {
                B = chatconversation;
                b.a(hereauth);
                D = true;
                return;
            }
        }
    }

    public void a(DisconnectReason disconnectreason)
    {
        D = false;
        P.c(disconnectreason);
        setCanStreamVideo(false, disconnectreason);
    }

    public void a(boolean flag)
    {
        if (g == null)
        {
            return;
        } else
        {
            post(new Runnable(flag) {

                final boolean a;
                final HoldToStreamView b;

                public void run()
                {
                    HoldToStreamView.d(b).b(a);
                    View view = b.g;
                    int i1;
                    if (a)
                    {
                        i1 = 0;
                    } else
                    {
                        i1 = 8;
                    }
                    view.setVisibility(i1);
                    HoldToStreamView.c(b).c(a);
                    HoldToStreamView.e(b);
                    HoldToStreamView.f(b);
                    if (a)
                    {
                        HoldToStreamView.g(b);
                        HoldToStreamView.c(b).o();
                    } else
                    {
                        HoldToStreamView.h(b);
                    }
                    HoldToStreamView.i(b).a(a);
                    b.invalidate();
                }

            
            {
                b = HoldToStreamView.this;
                a = flag;
                super();
            }
            });
            return;
        }
    }

    public void a(byte abyte0[])
    {
        if (h.getInfo() == null)
        {
            throw new IllegalStateException("Must call setCameraInfo() first.");
        }
        if (h.getWidth() == 0 || h.getHeight() == 0)
        {
            throw new IllegalStateException("Must call setCameraPreviewSize() first.");
        }
        break MISSING_BLOCK_LABEL_49;
        if (abyte0 != null && (a || f != null && f.b()))
        {
            if (H)
            {
                H = false;
                post(new Runnable() {

                    final HoldToStreamView a;

                    public void run()
                    {
                        HoldToStreamView.j(a);
                    }

            
            {
                a = HoldToStreamView.this;
                super();
            }
                });
            }
            b.a(abyte0, h);
            p();
            if (O != null)
            {
                i.a(O);
            } else
            {
                i.a(abyte0);
            }
            if (N)
            {
                O = (byte[])abyte0.clone();
                M.a(new ChangePreviewQualityEvent(com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality.a));
                N = false;
                return;
            }
        }
        return;
    }

    public void b()
    {
        M.a(new ChangePreviewQualityEvent(com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality.b));
        if (!Q)
        {
            return;
        } else
        {
            b.a(DisconnectReason.b, false);
            b.a();
            R = null;
            Q = false;
            return;
        }
    }

    public void b(DisconnectReason disconnectreason)
    {
        M.a(new ChangePreviewQualityEvent(com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality.b));
        if (!Q)
        {
            return;
        }
        b.a(disconnectreason, true);
        if (e != null && g != null)
        {
            h();
            g.setVisibility(4);
        }
        q();
        l.c(false);
    }

    public void b(boolean flag)
    {
        C = flag;
        ConnectingRippleView connectingrippleview = t;
        boolean flag1;
        if (a && !C)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        connectingrippleview.setRipplesEnabled(flag1);
        if (flag)
        {
            P.c();
        }
    }

    public void c()
    {
        N = true;
        s = com.snapchat.android.camera.model.CameraModel.CameraType.a;
        r = com.snapchat.android.camera.model.CameraModel.CameraType.a;
        M.a(new CameraStateEvent(true, s));
        I = System.currentTimeMillis();
        if (!b.b())
        {
            Context context = getContext();
            if (context != null)
            {
                AlertDialogUtils.a("Cannot connect", context);
            }
        } else
        if (!a)
        {
            a = true;
            i.a(1.0F);
            e.setScaleX(0.0F);
            e.setScaleY(0.0F);
            int i1 = getResources().getDimensionPixelSize(0x7f090036);
            float f1 = 0.4F * (float)e.getWidth() + (float)(i1 * 2);
            updateViewLayout(f, new android.widget.FrameLayout.LayoutParams((int)f1, (int)f1));
            K.a(getMeasuredWidth());
            L.a(getMeasuredHeight());
            b.c();
            r();
            q();
            l.o();
            l.d(true);
            o();
            ConnectingRippleView connectingrippleview = t;
            boolean flag;
            if (a && !C)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            connectingrippleview.setRipplesEnabled(flag);
            F = 1.0F;
            E = true;
            n = QuickSnapCameraDecor.a(getContext());
            if (Camera.getNumberOfCameras() > 1)
            {
                u.setHeightThreshold((int)n);
                u.setVisibility(0);
                u.bringToFront();
                boolean flag1 = j();
                QuickSnapOnboardingOverlay quicksnaponboardingoverlay = u;
                com.snapchat.android.ui.QuickSnapOnboardingOverlay.OverlayMode overlaymode;
                if (flag1)
                {
                    overlaymode = com.snapchat.android.ui.QuickSnapOnboardingOverlay.OverlayMode.c;
                } else
                {
                    overlaymode = com.snapchat.android.ui.QuickSnapOnboardingOverlay.OverlayMode.a;
                }
                quicksnaponboardingoverlay.setOverlayMode(overlaymode);
            }
            M.a(new SetPagingEnabledEvent(false));
            invalidate();
            P.a();
            return;
        }
    }

    protected void c(DisconnectReason disconnectreason)
    {
        if (a)
        {
            a = false;
            if (!f.b())
            {
                M.a(new ChangePreviewQualityEvent(com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality.b));
                f();
                f.a();
                P.a(disconnectreason);
                return;
            }
        }
    }

    public boolean d()
    {
        return y;
    }

    protected void dispatchDraw(Canvas canvas)
    {
        g();
        super.dispatchDraw(canvas);
    }

    public boolean e()
    {
        return d;
    }

    protected void f()
    {
        J = false;
        b.d();
        h();
        q();
        l.d(false);
        o();
        t.setRipplesEnabled(false);
        u.setVisibility(8);
        M.a(new SetPagingEnabledEvent(true));
    }

    protected void g()
    {
        if (c == null || e == null || !d)
        {
            return;
        }
        float f1 = (float)(SystemClock.elapsedRealtime() - m) / 400F - 1.0F;
        float f2;
        float f3;
        boolean flag;
        float f4;
        float f5;
        int i1;
        boolean flag1;
        float f6;
        if (f.b())
        {
            f2 = 1.0F;
        } else
        if (-1F < f1 && f1 < 1.0F)
        {
            f2 = (float)Math.abs(Math.sin((3.1415926535897931D * (double)f1) / 2D));
        } else
        {
            f2 = 1.0F;
        }
        if (f1 > 0.0F)
        {
            G = false;
        }
        f3 = F;
        flag = E;
        f4 = 0.0F;
        if (flag)
        {
            f4 = 1.0F;
        }
        F = InterpolationUtils.a(f3, f4, 0.04F);
        if (F < 0.01F)
        {
            c(DisconnectReason.e);
        }
        if (g != null && g.getVisibility() == 0)
        {
            f5 = F * InterpolationUtils.a(e.getScaleX(), 0.3F, 0.08F);
        } else
        {
            f5 = F * InterpolationUtils.a(e.getScaleX(), 0.4F, 0.08F);
        }
        i1 = e.getScaleX() != f5;
        flag1 = false;
        if (i1 != 0)
        {
            flag1 = true;
        }
        e.setScaleX(f5);
        e.setScaleY(f2 * f5);
        if (flag1)
        {
            f.c();
        }
        f6 = ((float)e.getWidth() * e.getScaleX()) / 2.0F;
        t.setRippleScale(f6);
        i.a(1.0F);
        if (f.b())
        {
            e.setX(c.getRawX() - (float)(e.getWidth() / 2));
            i();
        } else
        {
            K.b(c.getRawX() - (float)(e.getWidth() / 2));
            float f7 = f5 * (0.9F * (float)e.getWidth());
            L.b(c.getRawY() - (float)(e.getHeight() / 2) - f7);
        }
        invalidate();
    }

    protected void h()
    {
        if (p != null)
        {
            p.cancel();
        }
        e.setVisibility(4);
        d = false;
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        M.c(this);
    }

    public void onCameraReadyEvent(CameraReadyEvent camerareadyevent)
    {
        if (camerareadyevent.a && !camerareadyevent.b)
        {
            m = SystemClock.elapsedRealtime();
            return;
        }
        if (camerareadyevent.a && camerareadyevent.b)
        {
            O = null;
        }
        G = true;
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        M.b(this);
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        f.d();
        f.c();
        i.a();
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = true;
        if (f != null) goto _L2; else goto _L1
_L1:
        flag = super.onTouchEvent(motionevent);
_L8:
        return flag;
_L2:
        int i1;
        if (f.b())
        {
            k();
            s();
        }
        i1 = motionevent.getActionMasked();
        if ((!f.b() || !f.b(motionevent) || i1 != 0) && !J) goto _L4; else goto _L3
_L3:
        i1;
        JVM INSTR lookupswitch 2: default 100
    //                   0: 138
    //                   5: 138;
           goto _L5 _L6 _L6
_L5:
        J = flag;
        a = flag;
        a(motionevent);
        if (i1 == 3 || i1 == flag || i1 == 6)
        {
            J = false;
            return flag;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        M.a(new SetPagingEnabledEvent(false));
        if (true) goto _L5; else goto _L4
_L4:
        q.onTouchEvent(motionevent);
        if (f.b())
        {
            ((View)getParent()).onTouchEvent(motionevent);
        }
        return f.b();
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void setCanStreamVideo(boolean flag, DisconnectReason disconnectreason)
    {
        boolean flag1;
        if (flag && D)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        E = flag1;
        if (!flag)
        {
            P.b(disconnectreason);
            f.a();
            f();
            M.a(new ChangePreviewQualityEvent(com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality.b));
        }
        P.b(flag);
    }

    public void setLiveChatProvider(LiveChatProvider livechatprovider)
    {
        b = livechatprovider;
    }

}
