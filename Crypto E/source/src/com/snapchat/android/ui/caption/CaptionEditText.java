// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.view.MotionEventCompat;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.snapchat.android.Timber;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.EditCaptionEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;

// Referenced classes of package com.snapchat.android.ui.caption:
//            SnapCaptionViewInterface, CaptionAnalyticData

public abstract class CaptionEditText extends EditText
{
    public class FadeAnimation extends AlphaAnimation
    {

        final CaptionEditText a;

        FadeAnimation(boolean flag)
        {
            float f1 = 1.0F;
            a = CaptionEditText.this;
            float f2;
            if (flag)
            {
                f2 = 0.0F;
            } else
            {
                f2 = f1;
            }
            if (!flag)
            {
                f1 = 0.0F;
            }
            super(f2, f1);
            setDuration(410L);
            setFillAfter(true);
            setAnimationListener(new _cls1(this, CaptionEditText.this, flag));
        }
    }

    class IMMResult extends ResultReceiver
    {

        final CaptionEditText a;

        public void onReceiveResult(int i1, Bundle bundle)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i1);
            Timber.c("CaptionEditText", "CaptionDebug: result from IME is %d", aobj);
            if (i1 == 2 || i1 == 0)
            {
                CaptionEditText.b(a, true);
            } else
            if (i1 == 3 || i1 == 1)
            {
                CaptionEditText.b(a, false);
                return;
            }
        }

        public IMMResult()
        {
            a = CaptionEditText.this;
            super(null);
        }
    }

    public class SlideAnimation extends TranslateAnimation
    {

        final CaptionEditText a;

        SlideAnimation(int i1, int j1, int k1, int l1, boolean flag)
        {
            a = CaptionEditText.this;
            super(0, i1, 0, j1, 0, k1, 0, l1);
            setDuration(410L);
            setFillAfter(true);
            setInterpolator(new DecelerateInterpolator());
            CaptionEditText.this.a(0, 0);
            setAnimationListener(new _cls1(this, CaptionEditText.this, flag, j1, l1));
        }
    }


    private static final double n = Math.tan(Math.toRadians(30D));
    private ArrayList A;
    protected IMMResult a;
    protected SnapCaptionViewInterface b;
    protected int c;
    protected boolean d;
    protected boolean e;
    protected boolean f;
    protected int g;
    protected boolean h;
    protected boolean i;
    protected boolean j;
    protected int k;
    protected int l;
    protected TextWatcher m;
    private boolean o;
    private InputMethodManager p;
    private boolean q;
    private boolean r;
    private boolean s;
    private float t;
    private float u;
    private float v;
    private float w;
    private float x;
    private float y;
    private float z;

    public CaptionEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        o = false;
        a = new IMMResult();
        c = -1;
        q = false;
        d = false;
        e = false;
        r = false;
        f = false;
        g = -1;
        A = new ArrayList();
        h = false;
        i = false;
        j = false;
        k = -1;
        l = -1;
        setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final CaptionEditText a;

            public boolean onEditorAction(TextView textview, int i1, KeyEvent keyevent)
            {
                if (i1 == 0 || i1 == 6)
                {
                    a.e();
                }
                return false;
            }

            
            {
                a = CaptionEditText.this;
                super();
            }
        });
        x = ViewConfiguration.get(context).getScaledTouchSlop();
        setVisibility(4);
        clearFocus();
        getRootView().requestFocus();
    }

    static boolean a(CaptionEditText captionedittext, boolean flag)
    {
        captionedittext.q = flag;
        return flag;
    }

    static boolean b(CaptionEditText captionedittext, boolean flag)
    {
        captionedittext.o = flag;
        return flag;
    }

    protected void a(float f1, float f2)
    {
        setCaptionPositionX(f1);
        setCaptionPositionY(f2);
    }

    protected void a(int i1)
    {
        setY(i1);
    }

    protected void a(int i1, int j1)
    {
        setX(i1);
        setY(j1);
    }

    protected void a(boolean flag)
    {
        d();
        h = true;
        q = false;
        setVisibility(0);
        setAlpha(1.0F);
        invalidate();
        if (i)
        {
            i = false;
            return;
        }
        requestFocus();
        setCursorVisible(false);
        Object obj;
        if (flag)
        {
            a((int)getLastSelectedPositionY());
            obj = new FadeAnimation(true);
        } else
        {
            obj = getOpenAnimation();
        }
        startAnimation(((Animation) (obj)));
        p.showSoftInput(this, 2, a);
        setSelection(getText().length());
        setCursorVisible(true);
        BusProvider.a().a(new EditCaptionEvent(true));
    }

    protected boolean a()
    {
        return o;
    }

    protected boolean a(MotionEvent motionevent)
    {
        if (MotionEventCompat.getActionMasked(motionevent) == 1)
        {
            if (!q)
            {
                int i1 = getOffsetForPosition(motionevent.getX(), motionevent.getY() - (float)getCaptionEditPosition());
                if (i1 >= 0)
                {
                    setSelection(i1);
                }
            }
            q = false;
            return true;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
    }

    protected void b()
    {
        boolean flag;
        if (!o)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        o = flag;
    }

    protected abstract void b(MotionEvent motionevent);

    public abstract void b(boolean flag);

    public void c(boolean flag)
    {
        r = flag;
    }

    public boolean c()
    {
        return TextUtils.isEmpty(getText());
    }

    public boolean c(MotionEvent motionevent)
    {
        return motionevent.getRawY() > (float)(-75 + getTop()) && motionevent.getY() < (float)(75 + getBottom());
    }

    protected abstract void d();

    public void e()
    {
        b(true);
    }

    protected void f()
    {
        h = true;
        q = false;
        requestFocus();
        BusProvider.a().a(new EditCaptionEvent(true));
        p.showSoftInput(this, 2, a);
    }

    public void g()
    {
        DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        k = Math.min((int)(((float)displaymetrics.heightPixels / 2.0F + (1.5F * (float)displaymetrics.widthPixels) / 2.0F) - (float)getHeight()), displaymetrics.heightPixels - getHeight());
        l = Math.max((int)((float)displaymetrics.heightPixels / 2.0F - (1.5F * (float)displaymetrics.widthPixels) / 2.0F), 0);
    }

    protected abstract CaptionAnalyticData getAnalyticsDetails();

    protected abstract int getCaptionEditPosition();

    protected abstract Animation getCloseAnimation();

    protected ArrayList getColorSpans()
    {
        return A;
    }

    protected int getKeyboardHeight()
    {
        return c;
    }

    protected InputMethodManager getKeyboardManager()
    {
        return p;
    }

    protected float[] getLastSelectedCenterPoint()
    {
        float af[] = new float[2];
        af[0] = getLastSelectedPositionX() + (float)(getWidth() / 2);
        af[1] = getLastSelectedPositionY() + (float)(getHeight() / 2);
        return af;
    }

    protected float getLastSelectedPositionX()
    {
        return t;
    }

    protected float getLastSelectedPositionY()
    {
        return u;
    }

    protected abstract Animation getOpenAnimation();

    protected boolean h()
    {
        return r;
    }

    protected boolean i()
    {
        return s;
    }

    public boolean onKeyPreIme(int i1, KeyEvent keyevent)
    {
        if (h && keyevent.getAction() == 1 && i1 == 4)
        {
            e();
        }
        if (h && !a() && i1 == 67 && c())
        {
            e();
        }
        return super.onKeyPreIme(i1, keyevent);
    }

    protected void onScrollChanged(int i1, int j1, int k1, int l1)
    {
        super.onScrollChanged(i1, j1, k1, l1);
        q = true;
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        if (h)
        {
            setVisibility(0);
            p.showSoftInput(this, 2, a);
            requestFocus();
        } else
        if (!c() && h() && j1 + getTop() >= k)
        {
            post(new Runnable(new Handler(), new Runnable() {

                final CaptionEditText a;

                public void run()
                {
                    a.g();
                    int i2 = Math.min((int)a.getLastSelectedPositionY(), a.k);
                    if (i2 != a.getTop())
                    {
                        a.setCaptionPositionY(i2);
                    }
                    a.setVisibility(0);
                }

            
            {
                a = CaptionEditText.this;
                super();
            }
            }) {

                final Handler a;
                final Runnable b;
                final CaptionEditText c;

                public void run()
                {
                    c.setVisibility(4);
                    c.a(0);
                    a.postDelayed(b, 10L);
                }

            
            {
                c = CaptionEditText.this;
                a = handler;
                b = runnable;
                super();
            }
            });
            c(false);
            return;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        int i1;
        flag = true;
        i1 = MotionEventCompat.getActionMasked(motionevent);
        if (!hasFocus() || !h) goto _L2; else goto _L1
_L1:
        flag = a(motionevent);
_L8:
        return flag;
_L2:
        i1;
        JVM INSTR tableswitch 0 2: default 56
    //                   0 70
    //                   1 265
    //                   2 93;
           goto _L3 _L4 _L5 _L6
_L5:
        break MISSING_BLOCK_LABEL_265;
_L3:
        break; /* Loop/switch isn't completed */
_L4:
        break; /* Loop/switch isn't completed */
_L9:
        if (!h)
        {
            b(motionevent);
            return flag;
        }
        if (true) goto _L8; else goto _L7
_L7:
        v = motionevent.getRawY();
        w = motionevent.getRawX();
        g();
          goto _L9
_L6:
        float f1 = motionevent.getRawY();
        float f2 = motionevent.getRawX();
        float f3 = f2 - w;
        float f4 = f1 - v;
        y = y + Math.abs(f3);
        z = z + Math.abs(f4);
        if (Math.abs(f3) >= x || Math.abs(f4) >= x || y >= x || z >= x)
        {
            i = flag;
        }
        if (!j)
        {
            int j1 = (double)Math.abs(y) != (double)z * n;
            boolean flag1 = false;
            if (j1 > 0)
            {
                flag1 = flag;
            }
            j = flag1;
        }
        v = f1;
        w = f2;
          goto _L9
        y = 0.0F;
        z = 0.0F;
        if (i)
        {
            i = false;
        } else
        {
            a(false);
        }
          goto _L9
    }

    protected void setCaptionPositionX(float f1)
    {
        setX(f1);
        t = f1;
    }

    protected void setCaptionPositionY(float f1)
    {
        setY(f1);
        u = f1;
    }

    protected void setColorSpans(ArrayList arraylist)
    {
        A = arraylist;
    }

    public void setInterface(SnapCaptionViewInterface snapcaptionviewinterface)
    {
        b = snapcaptionviewinterface;
    }

    protected void setIsVideoSnap(boolean flag)
    {
        s = flag;
    }

    protected void setKeyboardHeight(int i1)
    {
        c = i1;
    }

    protected void setKeyboardManager(InputMethodManager inputmethodmanager)
    {
        p = inputmethodmanager;
    }

    protected void setLandscapeMode(boolean flag)
    {
        f = flag;
    }

    protected void setMaxTextLengthInputFilter(int i1)
    {
        Timber.c("CaptionEditText", (new StringBuilder()).append("Set Input filter with max text length: ").append(i1).toString(), new Object[0]);
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(i1);
        setFilters(ainputfilter);
        g = i1;
    }


    // Unreferenced inner class com/snapchat/android/ui/caption/CaptionEditText$FadeAnimation$1

/* anonymous class */
    class FadeAnimation._cls1
        implements android.view.animation.Animation.AnimationListener
    {

        final CaptionEditText a;
        final boolean b;
        final FadeAnimation c;

        public void onAnimationEnd(Animation animation)
        {
            if (b)
            {
                c.a.setVisibility(0);
                c.a.setAlpha(1.0F);
                c.a.setCursorVisible(true);
            } else
            {
                c.a.setVisibility(4);
                c.a.setAlpha(0.0F);
            }
            c.a.invalidate();
            c.a.clearAnimation();
            c.a.e = false;
            c.a.d = false;
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
            c.a.d = true;
        }

            
            {
                c = fadeanimation;
                a = captionedittext;
                b = flag;
                super();
            }
    }


    // Unreferenced inner class com/snapchat/android/ui/caption/CaptionEditText$SlideAnimation$1

/* anonymous class */
    class SlideAnimation._cls1
        implements android.view.animation.Animation.AnimationListener
    {

        final CaptionEditText a;
        final boolean b;
        final int c;
        final int d;
        final SlideAnimation e;

        public void onAnimationEnd(Animation animation)
        {
            if (b)
            {
                e.a.setVisibility(0);
                e.a.setAlpha(1.0F);
                e.a.setCursorVisible(true);
            } else
            {
                e.a.setVisibility(4);
                e.a.setAlpha(0.0F);
            }
            e.a.invalidate();
            e.a.a(c, d);
            e.a.clearAnimation();
            e.a.e = false;
            e.a.d = false;
            CaptionEditText.a(e.a, false);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
            e.a.d = true;
        }

            
            {
                e = slideanimation;
                a = captionedittext;
                b = flag;
                c = i1;
                d = j1;
                super();
            }
    }

}
