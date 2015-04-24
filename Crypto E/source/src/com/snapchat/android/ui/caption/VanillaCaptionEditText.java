// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.app.Activity;
import android.content.Context;
import android.graphics.Matrix;
import android.os.Handler;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import com.snapchat.android.ui.gesturedetectors.MultiTouchController;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.EditCaptionEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionEditText, CaptionAnalyticData, CaptionTypeEnums, SnapCaptionViewInterface

public class VanillaCaptionEditText extends CaptionEditText
    implements com.snapchat.android.ui.gesturedetectors.MultiTouchController.MultiTouchObjectCanvas
{

    private MultiTouchController n;
    private int o;
    private int p;

    public VanillaCaptionEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        n = new MultiTouchController(this);
        setInputType(16577);
        m = new TextWatcher() {

            final VanillaCaptionEditText a;
            private int b;

            public void afterTextChanged(Editable editable)
            {
                boolean flag = true;
                if (!a.e) goto _L2; else goto _L1
_L1:
                return;
_L2:
                String s;
                s = editable.toString();
                String s1 = a.a(s);
                if (TextUtils.equals(s, s1))
                {
                    break; /* Loop/switch isn't completed */
                }
                a.setMaxTextLengthInputFilter(s1.length());
                a.e = flag;
                editable.clear();
                editable.append(s1);
                a.g = s1.length();
                a.e = false;
_L4:
                if (a.f)
                {
                    if (a.j())
                    {
                        BusProvider.a().a(new ChangeOrientationEvent(6));
                        return;
                    }
                    continue; /* Loop/switch isn't completed */
                }
                if (true) goto _L1; else goto _L3
_L3:
                if (a.g > 0)
                {
                    a.g = Math.max(a.g, s.length());
                }
                if (s.length() <= b)
                {
                    flag = false;
                }
                b = s.length();
                if (flag && a.b != null)
                {
                    a.b.a(s);
                }
                  goto _L4
                if (a.i()) goto _L1; else goto _L5
_L5:
                BusProvider.a().a(new ChangeOrientationEvent(-1));
                return;
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int k, int l)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int k, int l)
            {
            }

            
            {
                a = VanillaCaptionEditText.this;
                super();
                b = 0;
            }
        };
        addTextChangedListener(m);
    }

    private float a(float f1)
    {
        if (f1 < (float)l)
        {
            f1 = l;
        }
        if (f1 > (float)k)
        {
            f1 = k;
        }
        return f1;
    }

    public VanillaCaptionEditText a(com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
        return this;
    }

    protected String a(String s)
    {
        for (; b(s); s = s.substring(0, -1 + s.length())) { }
        return s;
    }

    public void a(VanillaCaptionEditText vanillacaptionedittext, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
    }

    public void a(VanillaCaptionEditText vanillacaptionedittext, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PositionAndScale positionandscale)
    {
        positionandscale.a(0.0F, vanillacaptionedittext.getY(), false, vanillacaptionedittext.getScaleX(), false, vanillacaptionedittext.getScaleX(), vanillacaptionedittext.getScaleY(), false, 0.0F);
    }

    public volatile void a(Object obj, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
        a((VanillaCaptionEditText)obj, pointinfo);
    }

    public volatile void a(Object obj, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PositionAndScale positionandscale)
    {
        a((VanillaCaptionEditText)obj, positionandscale);
    }

    protected void a(boolean flag)
    {
        h = true;
        if (!flag)
        {
            Runnable runnable = new Runnable() {

                final VanillaCaptionEditText a;

                public void run()
                {
                    if (!a.a() && a.h)
                    {
                        a.c = -1;
                        a.a(true);
                    }
                }

            
            {
                a = VanillaCaptionEditText.this;
                super();
            }
            };
            (new Handler()).postDelayed(runnable, 600L);
            if (c == -1)
            {
                getKeyboardManager().toggleSoftInput(2, 0);
                b();
                return;
            }
        }
        super.a(flag);
        e = true;
    }

    public boolean a(VanillaCaptionEditText vanillacaptionedittext, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PositionAndScale positionandscale, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
        vanillacaptionedittext.a(0.0F, a(positionandscale.b()));
        return true;
    }

    public volatile boolean a(Object obj, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PositionAndScale positionandscale, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
        return a((VanillaCaptionEditText)obj, positionandscale, pointinfo);
    }

    public Object b(com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
        return a(pointinfo);
    }

    protected void b(MotionEvent motionevent)
    {
        n.a(motionevent);
    }

    public void b(boolean flag)
    {
        h = false;
        boolean flag1 = a();
        getKeyboardManager().hideSoftInputFromWindow(getWindowToken(), 0, a);
        if (c() || flag1)
        {
            setVisibility(4);
        }
        clearFocus();
        getRootView().requestFocus();
        setCursorVisible(false);
        setGravity(17);
        if (!flag) goto _L2; else goto _L1
_L1:
        Animation animation = getCloseAnimation();
        if (animation != null)
        {
            startAnimation(animation);
        }
_L4:
        BusProvider.a().a(new EditCaptionEvent(false));
        return;
_L2:
        if (!c())
        {
            a((int)getLastSelectedPositionY());
            setVisibility(0);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected boolean b(String s)
    {
        return getPaint().measureText(s) > 0.975F * (float)p;
    }

    public boolean c(MotionEvent motionevent)
    {
        Matrix matrix = new Matrix();
        getMatrix().invert(matrix);
        float af[] = new float[2];
        af[0] = motionevent.getX();
        af[1] = motionevent.getY();
        matrix.mapPoints(af);
        return af[1] < (float)getHeight() && af[1] > 0.0F;
    }

    protected void d()
    {
        setGravity(3);
    }

    protected void f()
    {
        ((Activity)getContext()).getWindow().setSoftInputMode(16);
        super.f();
        setGravity(3);
        requestFocus();
        setSelection(getText().length());
        setCursorVisible(true);
    }

    protected CaptionAnalyticData getAnalyticsDetails()
    {
        return new CaptionAnalyticData(CaptionTypeEnums.a, false, false, false);
    }

    protected int getCaptionEditPosition()
    {
        return c - getHeight();
    }

    protected Animation getCloseAnimation()
    {
        if (c())
        {
            return new CaptionEditText.FadeAnimation(this, false);
        } else
        {
            return new CaptionEditText.SlideAnimation(this, 0, 0, getCaptionEditPosition(), (int)getLastSelectedPositionY(), true);
        }
    }

    protected Animation getOpenAnimation()
    {
        return new CaptionEditText.SlideAnimation(this, 0, 0, (int)getLastSelectedPositionY(), getCaptionEditPosition(), true);
    }

    protected boolean j()
    {
        return getPaint().measureText(getText().toString()) > 0.975F * (float)Math.min(p, o);
    }

    protected void setHeightPixels(int i)
    {
        o = i;
    }

    protected void setWidthPixels(int i)
    {
        p = i;
    }
}
