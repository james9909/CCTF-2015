// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.cash.QuasiRandomPointGenerator;
import com.snapchat.android.ui.cash.ParticleSparkleView;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.MathUtils;
import com.snapchat.android.util.ViewUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CashSwiperView extends LinearLayout
{
    public static abstract class AnimationEndListener
        implements android.animation.Animator.AnimatorListener
    {

        public void onAnimationCancel(Animator animator)
        {
        }

        public void onAnimationRepeat(Animator animator)
        {
        }

        public void onAnimationStart(Animator animator)
        {
        }

        public AnimationEndListener()
        {
        }
    }

    public static interface CashSwiperListener
    {

        public abstract void r();

        public abstract void s();

        public abstract void t();
    }

    class DollarGestureDetectorListener extends android.view.GestureDetector.SimpleOnGestureListener
    {

        final CashSwiperView a;

        public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
        {
            if (ViewUtils.b(f2, a.getContext()) < -1500F)
            {
                CashSwiperView.b(a, f2);
            }
            return true;
        }

        private DollarGestureDetectorListener()
        {
            a = CashSwiperView.this;
            super();
        }

    }

    public static final class SwipeActivationMethod extends Enum
    {

        public static final SwipeActivationMethod a;
        public static final SwipeActivationMethod b;
        private static final SwipeActivationMethod c[];

        public static SwipeActivationMethod valueOf(String s1)
        {
            return (SwipeActivationMethod)Enum.valueOf(com/snapchat/android/ui/CashSwiperView$SwipeActivationMethod, s1);
        }

        public static SwipeActivationMethod[] values()
        {
            return (SwipeActivationMethod[])c.clone();
        }

        static 
        {
            a = new SwipeActivationMethod("DOLLARS", 0);
            b = new SwipeActivationMethod("HOLD", 1);
            SwipeActivationMethod aswipeactivationmethod[] = new SwipeActivationMethod[2];
            aswipeactivationmethod[0] = a;
            aswipeactivationmethod[1] = b;
            c = aswipeactivationmethod;
        }

        private SwipeActivationMethod(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    public static final String a = (new StringBuilder()).append("android.resource://").append(SnapchatApplication.e().getPackageName()).append('/').append(0x7f060000).toString();
    private long A;
    private Handler B;
    private ParticleSparkleView C;
    private QuasiRandomPointGenerator D;
    private GestureDetector b;
    private View c;
    private View d;
    private float e;
    private CashSwiperListener f;
    private int g;
    private TextView h;
    private VelocityTracker i;
    private List j;
    private ViewPropertyAnimator k;
    private ViewPropertyAnimator l;
    private float m;
    private Handler n;
    private boolean o;
    private List p;
    private List q;
    private ViewGroup r;
    private List s;
    private List t;
    private MediaPlayer u;
    private android.animation.ValueAnimator.AnimatorUpdateListener v;
    private ValueAnimator w;
    private Handler x;
    private boolean y;
    private boolean z;

    public CashSwiperView(Context context)
    {
        super(context);
        D = null;
        a(context);
    }

    public CashSwiperView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        D = null;
        a(context);
    }

    public CashSwiperView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        D = null;
        a(context);
    }

    static float a(CashSwiperView cashswiperview, float f1)
    {
        cashswiperview.m = f1;
        return f1;
    }

    static MediaPlayer a(CashSwiperView cashswiperview, MediaPlayer mediaplayer)
    {
        cashswiperview.u = mediaplayer;
        return mediaplayer;
    }

    static View a(CashSwiperView cashswiperview)
    {
        return cashswiperview.c;
    }

    private void a(float f1)
    {
        if (s.contains(c))
        {
            return;
        }
        a(5000);
        n.removeCallbacksAndMessages(null);
        n.postDelayed(new Runnable() {

            final CashSwiperView a;

            public void run()
            {
                CashSwiperView.e(a);
            }

            
            {
                a = CashSwiperView.this;
                super();
            }
        }, 1000L);
        if (g < 9999)
        {
            g = 1 + g;
            b(f1);
            return;
        } else
        {
            m();
            return;
        }
    }

    private void a(float f1, View view)
    {
        int ai[] = {
            255, 255, 255
        };
        int ai1[] = {
            255, 240, 128
        };
        int ai2[] = new int[3];
        float f2 = Math.max(f1 - 0.5F, 0.0F);
        for (int i1 = 0; i1 < 3; i1++)
        {
            ai2[i1] = (int)((float)ai[i1] * (1.0F - f2) + f2 * (float)ai1[i1]);
        }

        setBackgroundColor(0xf2000000 | ai2[0] << 16 | ai2[1] << 8 | ai2[2]);
        ((ImageView)view.findViewById(0x7f0a01a0)).getDrawable().setColorFilter(ViewUtils.a(1.5203D * (double)f1, 1.0D + 0.51032D * (double)f1));
    }

    private void a(View view)
    {
        if (!s.contains(view))
        {
            k = c.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator());
            l = d.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator());
        }
        i();
    }

    static void a(CashSwiperView cashswiperview, View view)
    {
        cashswiperview.b(view);
    }

    private boolean a(MotionEvent motionevent, View view)
    {
        float f1;
        boolean flag;
        if (!z)
        {
            return false;
        }
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        if (motionevent.getActionMasked() == 0 && !rect.contains((int)motionevent.getX(), (int)motionevent.getY()))
        {
            return true;
        }
        if (k != null)
        {
            k.cancel();
            l.cancel();
        }
        if (motionevent.getActionMasked() == 0)
        {
            e = motionevent.getY(0) - view.getTranslationY();
        }
        f1 = motionevent.getY(0) - e;
        if (motionevent.getActionMasked() == 2)
        {
            if (f1 >= 0.0F)
            {
                d.setTranslationY(f1);
                setAlpha(Math.max(0.0F, 1.0F - f1 / (float)(getHeight() / 2)));
            } else
            {
                setAlpha(1.0F);
            }
            view.setTranslationY(f1);
        }
        if (motionevent.getActionMasked() == 6)
        {
            if (motionevent.getActionIndex() == 0)
            {
                e = motionevent.getY(1) - view.getTranslationY();
            }
            return true;
        }
        i.addMovement(motionevent);
        b.onTouchEvent(motionevent);
        flag = s.contains(view);
        if (motionevent.getActionMasked() != 1) goto _L2; else goto _L1
_L1:
        float f2 = ViewUtils.b(f1, getContext());
        if (f2 >= -150F) goto _L4; else goto _L3
_L3:
        if (!flag)
        {
            i.computeCurrentVelocity(1000);
            a(i.getYVelocity());
        }
_L6:
        if (!flag)
        {
            a(0);
        }
        i.clear();
_L2:
        return true;
_L4:
        if (f2 > 150F)
        {
            if (!flag)
            {
                i.computeCurrentVelocity(1000);
                c();
            }
        } else
        {
            a(view);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    static boolean a(CashSwiperView cashswiperview, MotionEvent motionevent, View view)
    {
        return cashswiperview.a(motionevent, view);
    }

    static boolean a(CashSwiperView cashswiperview, boolean flag)
    {
        cashswiperview.o = flag;
        return flag;
    }

    static MediaPlayer b(CashSwiperView cashswiperview)
    {
        return cashswiperview.u;
    }

    private void b(float f1)
    {
        j();
        if (g == 1)
        {
            A = SystemClock.elapsedRealtime();
        }
        if (!o)
        {
            j.add(Long.valueOf(SystemClock.elapsedRealtime()));
        }
        n();
        c.setEnabled(false);
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(c, "alpha", new float[] {
            0.0F
        });
        float f2 = c.getTranslationY() + (1.5F * (float)200 * Math.min(1.5F * f1, -3000F)) / 1000F;
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(c, "translationY", new float[] {
            f2
        });
        ObjectAnimator objectanimator2 = ObjectAnimator.ofFloat(d, "scaleX", new float[] {
            1.0F
        });
        ObjectAnimator objectanimator3 = ObjectAnimator.ofFloat(d, "scaleY", new float[] {
            1.0F
        });
        View view = c;
        s.add(view);
        c = d;
        d = g();
        setUpDollarViewOnBottom(d);
        f.r();
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.setDuration(200);
        animatorset.addListener(new AnimationEndListener(view) {

            final View a;
            final CashSwiperView b;

            public void onAnimationEnd(Animator animator)
            {
                CashSwiperView.f(b).remove(a);
                CashSwiperView.a(b, a);
            }

            
            {
                b = CashSwiperView.this;
                a = view;
                super();
            }
        });
        animatorset.playTogether(new Animator[] {
            objectanimator, objectanimator1, objectanimator3, objectanimator2
        });
        animatorset.start();
    }

    private void b(View view)
    {
        view.setVisibility(8);
        p.add(view);
        q.remove(view);
    }

    static void b(CashSwiperView cashswiperview, float f1)
    {
        cashswiperview.a(f1);
    }

    static boolean b(CashSwiperView cashswiperview, boolean flag)
    {
        cashswiperview.y = flag;
        return flag;
    }

    static List c(CashSwiperView cashswiperview)
    {
        return cashswiperview.t;
    }

    static TextView d(CashSwiperView cashswiperview)
    {
        return cashswiperview.h;
    }

    static void e(CashSwiperView cashswiperview)
    {
        cashswiperview.h();
    }

    static List f(CashSwiperView cashswiperview)
    {
        return cashswiperview.s;
    }

    static void g(CashSwiperView cashswiperview)
    {
        cashswiperview.l();
    }

    private String getBlingtonePath()
    {
        return a;
    }

    private void h()
    {
        if (o)
        {
            return;
        } else
        {
            o = true;
            j.clear();
            ObjectAnimator objectanimator = ObjectAnimator.ofFloat(this, "coolness", new float[] {
                1.0F
            });
            objectanimator.setInterpolator(new DecelerateInterpolator());
            objectanimator.setDuration(1000L);
            objectanimator.addListener(new AnimationEndListener() {

                final CashSwiperView a;

                public void onAnimationEnd(Animator animator)
                {
                    CashSwiperView.c(a).clear();
                    CashSwiperView.a(a, false);
                    CashSwiperView.a(a, 0.0F);
                }

            
            {
                a = CashSwiperView.this;
                super();
            }
            });
            C.b();
            objectanimator.start();
            return;
        }
    }

    static void h(CashSwiperView cashswiperview)
    {
        cashswiperview.j();
    }

    static Handler i(CashSwiperView cashswiperview)
    {
        return cashswiperview.B;
    }

    private void i()
    {
        float f1 = getAlpha();
        if (f1 != 1.0F)
        {
            animate().alpha(1.0F).setListener(null).setDuration((int)(f1 * 500F)).start();
        }
    }

    static CashSwiperListener j(CashSwiperView cashswiperview)
    {
        return cashswiperview.f;
    }

    private void j()
    {
        if (g == 0)
        {
            k();
            return;
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = String.valueOf(g);
            setBarTextWithFade(LocalizationUtils.a(0x7f0c0203, aobj));
            return;
        }
    }

    private void k()
    {
        setBarTextWithFade(LocalizationUtils.a(0x7f0c0205, new Object[0]));
    }

    static void k(CashSwiperView cashswiperview)
    {
        cashswiperview.p();
    }

    static ValueAnimator l(CashSwiperView cashswiperview)
    {
        return cashswiperview.w;
    }

    private void l()
    {
        setBarTextWithFade(LocalizationUtils.a(0x7f0c0204, new Object[0]));
    }

    private void m()
    {
        c.animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator());
        i();
    }

    static void m(CashSwiperView cashswiperview)
    {
        cashswiperview.o();
    }

    private void n()
    {
        r();
        if (getHotness() == 1.0F)
        {
            C.a();
        }
    }

    static boolean n(CashSwiperView cashswiperview)
    {
        return cashswiperview.y;
    }

    private void o()
    {
        int i1;
        if (u.getCurrentPosition() > u.getDuration() / 2)
        {
            i1 = u.getCurrentPosition() - u.getDuration();
        } else
        {
            i1 = u.getCurrentPosition();
        }
        x.postDelayed(new Runnable() {

            final CashSwiperView a;

            public void run()
            {
                if (!CashSwiperView.n(a))
                {
                    CashSwiperView.o(a);
                    CashSwiperView.l(a).start();
                    CashSwiperView.l(a).addListener(new AnimationEndListener(this) {

                        final _cls11 a;

                        public void onAnimationEnd(Animator animator)
                        {
                            if (!CashSwiperView.n(a.a))
                            {
                                CashSwiperView.m(a.a);
                                CashSwiperView.k(a.a);
                                CashSwiperView.l(a.a).start();
                            }
                        }

            
            {
                a = _pcls11;
                super();
            }
                    });
                }
            }

            
            {
                a = CashSwiperView.this;
                super();
            }
        }, (-500 + u.getDuration()) - i1);
    }

    static void o(CashSwiperView cashswiperview)
    {
        cashswiperview.q();
    }

    private void p()
    {
        float f1 = 1.0F;
        if (w != null)
        {
            f1 = ((Float)w.getAnimatedValue()).floatValue();
            w.cancel();
        }
        w = ValueAnimator.ofFloat(new float[] {
            f1, 2.718282F
        });
        w.addUpdateListener(v);
        w.setDuration(500L);
    }

    private void q()
    {
        float f1 = 2.718282F;
        if (w != null)
        {
            f1 = ((Float)w.getAnimatedValue()).floatValue();
            w.cancel();
        }
        w = ValueAnimator.ofFloat(new float[] {
            f1, 1.0F
        });
        w.addUpdateListener(v);
        w.setDuration(500L);
    }

    private void r()
    {
        if (D != null)
        {
            return;
        } else
        {
            int i1 = (int)ViewUtils.a(48F, getContext());
            com.snapchat.android.cash.QuasiRandomPointGenerator.Builder builder = new com.snapchat.android.cash.QuasiRandomPointGenerator.Builder();
            builder.b(C.getHeight() - i1).a(C.getWidth()).c((int)ViewUtils.a(125F, getContext()) / 2);
            D = builder.a();
            C.a(D);
            return;
        }
    }

    private void setBarTextWithFade(String s1)
    {
        if (!z)
        {
            h.setText(s1);
            return;
        } else
        {
            AnimatorSet animatorset = new AnimatorSet();
            ObjectAnimator objectanimator = ObjectAnimator.ofFloat(h, ALPHA, new float[] {
                0.0F
            });
            objectanimator.setDuration(100L);
            objectanimator.addListener(new AnimationEndListener(s1) {

                final String a;
                final CashSwiperView b;

                public void onAnimationEnd(Animator animator)
                {
                    CashSwiperView.d(b).setText(a);
                }

            
            {
                b = CashSwiperView.this;
                a = s1;
                super();
            }
            });
            ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(h, ALPHA, new float[] {
                1.0F
            });
            objectanimator1.setDuration(100L);
            animatorset.playSequentially(new Animator[] {
                objectanimator, objectanimator1
            });
            animatorset.start();
            return;
        }
    }

    private void setUpDollarViewOnBottom(View view)
    {
        ViewUtils.f(view);
        view.setTranslationY(0.0F);
        view.setAlpha(1.0F);
        view.setScaleX(0.88F);
        view.setScaleY(0.88F);
        view.setEnabled(true);
        if (!o)
        {
            float f1 = getHotness();
            t.add(Float.valueOf(f1));
            a(f1, view);
        }
    }

    private void setUpDollarViewOnTop(View view)
    {
        r.bringChildToFront(view);
        view.setEnabled(true);
        view.setTranslationY(0.0F);
        view.setAlpha(1.0F);
        view.setScaleX(1.0F);
        view.setScaleY(1.0F);
    }

    public void a()
    {
        s.clear();
        j.clear();
        t.clear();
        setUpDollarViewOnTop(c);
        setUpDollarViewOnBottom(d);
        g = 0;
        k();
    }

    public void a(int i1)
    {
        B.removeCallbacksAndMessages(null);
        Runnable runnable = new Runnable() {

            final CashSwiperView a;

            public void run()
            {
                CashSwiperView.g(a);
                CashSwiperView.i(a).postDelayed(new Runnable(this) {

                    final _cls8 a;

                    public void run()
                    {
                        CashSwiperView.h(a.a);
                    }

            
            {
                a = _pcls8;
                super();
            }
                }, 3000L);
            }

            
            {
                a = CashSwiperView.this;
                super();
            }
        };
        if (i1 == 0)
        {
            B.post(runnable);
            return;
        } else
        {
            B.postDelayed(runnable, i1);
            return;
        }
    }

    public void a(Context context)
    {
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f04001f, this, true);
        setOnTouchListener(new android.view.View.OnTouchListener() {

            final CashSwiperView a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return true;
            }

            
            {
                a = CashSwiperView.this;
                super();
            }
        });
        C = (ParticleSparkleView)findViewById(0x7f0a00e9);
        r = (ViewGroup)findViewById(0x7f0a00e7);
        r.setOnTouchListener(new android.view.View.OnTouchListener() {

            final CashSwiperView a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return CashSwiperView.a(a, motionevent, CashSwiperView.a(a));
            }

            
            {
                a = CashSwiperView.this;
                super();
            }
        });
        t = new ArrayList();
        s = new ArrayList();
        p = new ArrayList();
        q = new ArrayList();
        c = g();
        d = g();
        h = (TextView)findViewById(0x7f0a00e8);
        b = new GestureDetector(context, new DollarGestureDetectorListener());
        n = new Handler(Looper.getMainLooper());
        j = new ArrayList();
        i = VelocityTracker.obtain();
        x = new Handler();
        v = new android.animation.ValueAnimator.AnimatorUpdateListener() {

            final CashSwiperView a;

            public void onAnimationUpdate(ValueAnimator valueanimator)
            {
                float f1 = MathUtils.a(0.0F, 1.0F, (float)Math.log(((Float)valueanimator.getAnimatedValue()).floatValue()));
                if (CashSwiperView.b(a) != null)
                {
                    CashSwiperView.b(a).setVolume(f1, f1);
                }
            }

            
            {
                a = CashSwiperView.this;
                super();
            }
        };
        setEnabled(false);
        B = new Handler(Looper.getMainLooper());
        setUpDollarViewOnBottom(d);
        setUpDollarViewOnTop(c);
    }

    public void b()
    {
        setAlpha(0.0F);
        setEnabled(true);
        setVisibility(0);
        animate().alpha(1.0F).setListener(null).setDuration(500L).start();
        e();
        a(5000);
    }

    public void c()
    {
        setEnabled(false);
        f.t();
        AnimatorSet animatorset = new AnimatorSet();
        float f1 = c.getTranslationY() + (750F * i.getYVelocity()) / 1000F;
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(this, ALPHA, new float[] {
            0.0F
        });
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(c, TRANSLATION_Y, new float[] {
            f1
        });
        ObjectAnimator objectanimator2 = ObjectAnimator.ofFloat(d, TRANSLATION_Y, new float[] {
            f1
        });
        animatorset.setDuration((int)(500F * getAlpha()));
        animatorset.addListener(new AnimationEndListener() {

            final CashSwiperView a;

            public void onAnimationEnd(Animator animator)
            {
                a.setVisibility(8);
                a.a();
                CashSwiperView.j(a).s();
            }

            
            {
                a = CashSwiperView.this;
                super();
            }
        });
        animatorset.playTogether(new Animator[] {
            objectanimator, objectanimator1, objectanimator2
        });
        animatorset.start();
        f();
    }

    public void d()
    {
        setVisibility(8);
        a();
        setEnabled(false);
        f.s();
        f();
    }

    public void e()
    {
        y = false;
        if (u != null)
        {
            p();
            w.start();
            u.start();
            return;
        }
        u = new MediaPlayer();
        u.setLooping(true);
        Uri uri = Uri.parse(a);
        u.setAudioStreamType(3);
        try
        {
            u.setDataSource(getContext(), uri);
        }
        catch (IOException ioexception)
        {
            return;
        }
        u.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() {

            final CashSwiperView a;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                CashSwiperView.k(a);
                CashSwiperView.l(a).start();
                if (CashSwiperView.b(a) != null)
                {
                    CashSwiperView.b(a).start();
                    if (CashSwiperView.b(a).getDuration() > 5000)
                    {
                        CashSwiperView.m(a);
                    }
                }
            }

            
            {
                a = CashSwiperView.this;
                super();
            }
        });
        u.prepareAsync();
    }

    public void f()
    {
        y = true;
        x.removeCallbacksAndMessages(null);
        q();
        w.addListener(new AnimationEndListener() {

            final CashSwiperView a;

            public void onAnimationEnd(Animator animator)
            {
                if (CashSwiperView.b(a) != null && CashSwiperView.n(a))
                {
                    CashSwiperView.b(a).stop();
                    CashSwiperView.b(a).release();
                    CashSwiperView.a(a, null);
                }
                CashSwiperView.b(a, false);
            }

            
            {
                a = CashSwiperView.this;
                super();
            }
        });
        w.start();
    }

    protected View g()
    {
        if (p.isEmpty())
        {
            ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f040042, r);
            p.add(r.getChildAt(-1 + r.getChildCount()));
        }
        View view = (View)p.get(0);
        view.setVisibility(0);
        q.add(view);
        p.remove(view);
        return view;
    }

    public float getCoolness()
    {
        return m;
    }

    public int getDollarsSwiped()
    {
        return g;
    }

    public long getFirstSwipeMillis()
    {
        return A;
    }

    protected float getHotness()
    {
        long l1 = SystemClock.elapsedRealtime();
        Iterator iterator = j.iterator();
        int i1 = 0;
        while (iterator.hasNext()) 
        {
            int j1;
            if (((Long)iterator.next()).longValue() > l1 - 5000L)
            {
                j1 = i1 + 1;
            } else
            {
                j1 = i1;
            }
            i1 = j1;
        }
        return Math.min((float)i1 / 15F, 1.0F);
    }

    public void setCoolness(float f1)
    {
        m = f1;
        float f2;
        Iterator iterator;
        if (t.size() < 2)
        {
            f2 = 0.0F;
        } else
        {
            f2 = ((Float)t.get(-2 + t.size())).floatValue() * (1.0F - f1);
        }
        for (iterator = q.iterator(); iterator.hasNext(); a(f2, (View)iterator.next())) { }
    }

    protected void setDollarsSwiped(int i1)
    {
        g = i1;
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        z = flag;
    }

    public void setListener(CashSwiperListener cashswiperlistener)
    {
        f = cashswiperlistener;
    }

    public void setSwipeTimes(List list)
    {
        j = new ArrayList(list);
    }

}
