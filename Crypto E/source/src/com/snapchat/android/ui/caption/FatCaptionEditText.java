// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.os.Handler;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.Window;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import com.snapchat.android.Timber;
import com.snapchat.android.ui.gesturedetectors.MultiTouchController;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.EditCaptionEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionEditText, FatCaptionLongClickListener, CaptionColorRange, SnapCaptionViewInterface, 
//            CaptionTypeEnums, CaptionAnalyticData

public class FatCaptionEditText extends CaptionEditText
    implements com.snapchat.android.ui.gesturedetectors.MultiTouchController.MultiTouchObjectCanvas
{

    private CaptionColorRange A;
    private ForegroundColorSpan B;
    protected double n;
    protected double o;
    protected float p;
    protected float q;
    protected double r;
    protected double s;
    protected boolean t;
    protected boolean u;
    protected boolean v;
    private MultiTouchController w;
    private final GestureDetector x;
    private final ScaleGestureDetector y;
    private boolean z;

    public FatCaptionEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        w = new MultiTouchController(this);
        p = 0.0F;
        q = 1.0F;
        r = -1D;
        s = -1D;
        t = false;
        u = false;
        z = false;
        v = false;
        setLayerType(1, null);
        setInputType(0x240c1);
        setGravity(51);
        x = new GestureDetector(context, new android.view.GestureDetector.SimpleOnGestureListener() {

            final FatCaptionEditText a;

            public void onLongPress(MotionEvent motionevent)
            {
                if (a.h && !a.v)
                {
                    FatCaptionEditText.a(a, null);
                    a.v = true;
                    a.performLongClick();
                }
            }

            public boolean onSingleTapConfirmed(MotionEvent motionevent)
            {
                a.v = false;
                FatCaptionEditText.a(a, null);
                return true;
            }

            
            {
                a = FatCaptionEditText.this;
                super();
            }
        });
        y = new ScaleGestureDetector(context, new android.view.ScaleGestureDetector.OnScaleGestureListener() {

            final FatCaptionEditText a;

            public boolean onScale(ScaleGestureDetector scalegesturedetector)
            {
                a.t = true;
                a.u = true;
                a.j = false;
                FatCaptionEditText.a(a, a.r * (double)scalegesturedetector.getScaleFactor());
                return true;
            }

            public boolean onScaleBegin(ScaleGestureDetector scalegesturedetector)
            {
                FatCaptionEditText.a(a, true);
                return true;
            }

            public void onScaleEnd(ScaleGestureDetector scalegesturedetector)
            {
                FatCaptionEditText.a(a, false);
            }

            
            {
                a = FatCaptionEditText.this;
                super();
            }
        });
        m = new TextWatcher() {

            final FatCaptionEditText a;
            private int b;

            public void afterTextChanged(Editable editable)
            {
                if (!a.e && !FatCaptionEditText.a(a))
                {
                    a.v = false;
                    a.a(editable);
                    String s1 = editable.toString();
                    int i = s1.length();
                    int i1 = b;
                    boolean flag = false;
                    if (i > i1)
                    {
                        flag = true;
                    }
                    if (flag && a.b != null)
                    {
                        a.b.a(s1);
                    }
                    b = s1.length();
                    a.k();
                    if (a.f && !a.i())
                    {
                        BusProvider.a().a(new ChangeOrientationEvent(-1));
                        return;
                    }
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int i1, int j1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int i1, int j1)
            {
            }

            
            {
                a = FatCaptionEditText.this;
                super();
                b = 0;
            }
        };
        addTextChangedListener(m);
        setOnLongClickListener(new FatCaptionLongClickListener());
    }

    private double a(double d1)
    {
        if (d1 > n)
        {
            d1 = n;
        } else
        if (d1 < o)
        {
            return o;
        }
        return d1;
    }

    static CaptionColorRange a(FatCaptionEditText fatcaptionedittext, CaptionColorRange captioncolorrange)
    {
        fatcaptionedittext.A = captioncolorrange;
        return captioncolorrange;
    }

    static void a(FatCaptionEditText fatcaptionedittext, double d1)
    {
        fatcaptionedittext.b(d1);
    }

    static boolean a(FatCaptionEditText fatcaptionedittext)
    {
        return fatcaptionedittext.z;
    }

    static boolean a(FatCaptionEditText fatcaptionedittext, boolean flag)
    {
        fatcaptionedittext.z = flag;
        return flag;
    }

    private void b(double d1)
    {
        double d2 = a(d1);
        if (h)
        {
            r = d2;
        } else
        {
            s = d2;
        }
        j();
    }

    public FatCaptionEditText a(com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
        if (!i)
        {
            this = null;
        }
        return this;
    }

    protected void a(Editable editable)
    {
        int i = editable.length();
        do
        {
label0:
            {
                if (i > 0)
                {
                    if (!editable.subSequence(i - 1, i).toString().equals("\n"))
                    {
                        break label0;
                    }
                    editable.replace(i - 1, i, "");
                    e();
                }
                return;
            }
            i--;
        } while (true);
    }

    protected void a(Editable editable, int i, int i1, int j1)
    {
        ForegroundColorSpan aforegroundcolorspan[] = (ForegroundColorSpan[])editable.getSpans(0, getText().length(), android/text/style/ForegroundColorSpan);
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        int k1 = aforegroundcolorspan.length;
        int l1 = 0;
        int i2 = j1;
        int j2 = i1;
        while (l1 < k1) 
        {
            ForegroundColorSpan foregroundcolorspan1 = aforegroundcolorspan[l1];
            int k2 = editable.getSpanStart(foregroundcolorspan1);
            int l2 = editable.getSpanEnd(foregroundcolorspan1);
            int i3 = foregroundcolorspan1.getForegroundColor();
            if (i3 == i && k2 <= i1 && l2 >= j1)
            {
                return;
            }
            boolean flag = false;
            if (k2 < i1)
            {
                flag = false;
                if (l2 > i1)
                {
                    flag = true;
                    if (i != i3)
                    {
                        arraylist1.add(new CaptionColorRange(i3, k2, i1));
                    } else
                    {
                        j2 = k2;
                    }
                }
            }
            if (k2 < j1 && l2 > j1)
            {
                flag = true;
                if (i != i3)
                {
                    arraylist1.add(new CaptionColorRange(i3, j1, l2));
                } else
                {
                    i2 = l2;
                }
            }
            if (flag)
            {
                arraylist.add(foregroundcolorspan1);
            }
            l1++;
        }
        arraylist1.add(new CaptionColorRange(i, j2, i2));
        ForegroundColorSpan foregroundcolorspan;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); editable.removeSpan(foregroundcolorspan))
        {
            foregroundcolorspan = (ForegroundColorSpan)iterator.next();
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(foregroundcolorspan.getForegroundColor());
            aobj[1] = Integer.valueOf(editable.getSpanStart(foregroundcolorspan));
            aobj[2] = Integer.valueOf(editable.getSpanEnd(foregroundcolorspan));
            Timber.c("FatCaptionEditText", "removing a color span: %s [%s, %s]", aobj);
        }

        a(editable, ((List) (arraylist1)));
    }

    protected void a(Editable editable, List list)
    {
        SpannableString spannablestring = new SpannableString(editable);
        CaptionColorRange captioncolorrange;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); spannablestring.setSpan(B, captioncolorrange.b(), captioncolorrange.c(), 34))
        {
            captioncolorrange = (CaptionColorRange)iterator.next();
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(captioncolorrange.a());
            aobj[1] = Integer.valueOf(captioncolorrange.b());
            aobj[2] = Integer.valueOf(captioncolorrange.c());
            Timber.c("FatCaptionEditText", "adding a new color span: %s [%s, %s]", aobj);
            B = new ForegroundColorSpan(captioncolorrange.a());
        }

        setText(spannablestring, android.widget.TextView.BufferType.SPANNABLE);
    }

    public void a(FatCaptionEditText fatcaptionedittext, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
    }

    public void a(FatCaptionEditText fatcaptionedittext, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PositionAndScale positionandscale)
    {
        float f1;
        if (j)
        {
            f1 = fatcaptionedittext.getX();
        } else
        {
            f1 = fatcaptionedittext.getLastSelectedPositionX();
        }
        positionandscale.a(f1, fatcaptionedittext.getY(), true, fatcaptionedittext.getScaleX(), true, fatcaptionedittext.getScaleX(), fatcaptionedittext.getScaleY(), true, (float)Math.toRadians(fatcaptionedittext.getRotation()));
    }

    public volatile void a(Object obj, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
        a((FatCaptionEditText)obj, pointinfo);
    }

    public volatile void a(Object obj, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PositionAndScale positionandscale)
    {
        a((FatCaptionEditText)obj, positionandscale);
    }

    protected void a(boolean flag)
    {
        if (z)
        {
            return;
        }
        h = true;
        j();
        m();
        if (!flag)
        {
            Runnable runnable = new Runnable() {

                final FatCaptionEditText a;

                public void run()
                {
                    if (!a.a() && a.h)
                    {
                        a.c = -1;
                        a.a(true);
                    }
                }

            
            {
                a = FatCaptionEditText.this;
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
        setMaxHeight(c - b.getPreviewCloseButtonBottom());
    }

    protected boolean a(MotionEvent motionevent)
    {
        boolean flag = y.onTouchEvent(motionevent);
        if (!z)
        {
            flag = x.onTouchEvent(motionevent);
            if (!v)
            {
                return super.a(motionevent);
            }
        }
        return flag;
    }

    public boolean a(FatCaptionEditText fatcaptionedittext, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PositionAndScale positionandscale, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
        float f1 = 5F;
        float f2 = positionandscale.c();
        float f3;
        if (f2 <= f1)
        {
            f1 = f2;
        }
        if (j)
        {
            f3 = positionandscale.a();
        } else
        {
            f3 = fatcaptionedittext.getLastSelectedPositionX();
        }
        fatcaptionedittext.a(f3, positionandscale.b());
        p = (float)((double)(180F * positionandscale.d()) / 3.1415926535897931D);
        q = f1;
        fatcaptionedittext.setRotation(p);
        fatcaptionedittext.setScaleX(q);
        fatcaptionedittext.setScaleY(q);
        if (p != 0.0F || q != 1.0F)
        {
            j = true;
        }
        return true;
    }

    public volatile boolean a(Object obj, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PositionAndScale positionandscale, com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
        return a((FatCaptionEditText)obj, positionandscale, pointinfo);
    }

    public Object b(com.snapchat.android.ui.gesturedetectors.MultiTouchController.PointInfo pointinfo)
    {
        return a(pointinfo);
    }

    protected void b(int i)
    {
        setLayoutParams(new android.widget.FrameLayout.LayoutParams(i, -2));
        invalidate();
    }

    protected void b(MotionEvent motionevent)
    {
        w.a(motionevent);
    }

    public void b(boolean flag)
    {
        h = false;
        v = false;
        if (t)
        {
            s = r;
            l();
            t = false;
        }
        m();
        ((Activity)getContext()).getWindow().setSoftInputMode(16);
        getKeyboardManager().hideSoftInputFromWindow(getWindowToken(), 0);
        setRotation(p);
        setScaleX(q);
        setScaleY(q);
        if (c())
        {
            setVisibility(4);
        }
        clearFocus();
        getRootView().requestFocus();
        setCursorVisible(false);
        if (flag)
        {
            Animation animation = getCloseAnimation();
            if (animation != null)
            {
                startAnimation(animation);
            }
        } else
        {
            a((int)getLastSelectedPositionX(), (int)getLastSelectedPositionY());
        }
        BusProvider.a().a(new EditCaptionEvent(false));
        if (!c())
        {
            g();
            setMaxHeight((k + getHeight()) - l);
        }
    }

    public boolean c(MotionEvent motionevent)
    {
        Matrix matrix = new Matrix();
        getMatrix().invert(matrix);
        float af[] = new float[2];
        af[0] = motionevent.getX();
        af[1] = motionevent.getY();
        matrix.mapPoints(af);
        return af[1] < (float)getHeight() && af[1] > 0.0F && af[0] < (float)getWidth() && af[0] > 0.0F;
    }

    protected void d()
    {
        setRotation(0.0F);
        setScaleX(1.0F);
        setScaleY(1.0F);
        a(0, getCaptionEditPosition());
    }

    protected void f()
    {
        d();
        super.f();
        setSelection(getText().length());
        setCursorVisible(true);
        setMaxHeight(c - b.getPreviewCloseButtonBottom());
    }

    protected CaptionAnalyticData getAnalyticsDetails()
    {
        CaptionTypeEnums captiontypeenums = CaptionTypeEnums.b;
        boolean flag = j;
        boolean flag1;
        if (getColorSpans().size() > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return new CaptionAnalyticData(captiontypeenums, flag, flag1, u);
    }

    protected int getCaptionEditPosition()
    {
        return c - Math.min(getHeight(), c - b.getPreviewCloseButtonBottom());
    }

    protected Animation getCloseAnimation()
    {
        if (c())
        {
            return new CaptionEditText.FadeAnimation(this, false);
        } else
        {
            return new CaptionEditText.SlideAnimation(this, 0, (int)getLastSelectedPositionX(), getCaptionEditPosition(), Math.min((int)getLastSelectedPositionY(), k), true);
        }
    }

    protected ArrayList getColorSpans()
    {
        ArrayList arraylist = new ArrayList();
        ForegroundColorSpan aforegroundcolorspan[] = (ForegroundColorSpan[])getText().getSpans(0, getText().length(), android/text/style/ForegroundColorSpan);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(aforegroundcolorspan.length);
        Timber.c("FatCaptionEditText", "Total colors : %s", aobj);
        int i = aforegroundcolorspan.length;
        int i1 = 0;
        int k1;
        for (int j1 = 0; i1 < i; j1 = k1)
        {
            ForegroundColorSpan foregroundcolorspan = aforegroundcolorspan[i1];
            Object aobj1[] = new Object[4];
            k1 = j1 + 1;
            aobj1[0] = Integer.valueOf(j1);
            aobj1[1] = Integer.valueOf(foregroundcolorspan.getForegroundColor());
            aobj1[2] = Integer.valueOf(getText().getSpanStart(foregroundcolorspan));
            aobj1[3] = Integer.valueOf(getText().getSpanEnd(foregroundcolorspan));
            Timber.c("FatCaptionEditText", "[%s] color : %s (%s, %s)", aobj1);
            arraylist.add(new CaptionColorRange(foregroundcolorspan.getForegroundColor(), getText().getSpanStart(foregroundcolorspan), getText().getSpanEnd(foregroundcolorspan)));
            i1++;
        }

        return arraylist;
    }

    protected double getMaxFontSize()
    {
        return n;
    }

    protected Animation getOpenAnimation()
    {
        return new CaptionEditText.SlideAnimation(this, (int)getLastSelectedPositionX(), 0, (int)getLastSelectedPositionY(), getCaptionEditPosition(), true);
    }

    protected void j()
    {
        DisplayMetrics displaymetrics = getContext().getResources().getDisplayMetrics();
        if (!h) goto _L2; else goto _L1
_L1:
        if (r >= 0.0D) goto _L4; else goto _L3
_L3:
        k();
_L6:
        return;
_L4:
        if (Math.abs(r - (double)getTextSize()) > 1.0D)
        {
            setTextSize(1, (float)r / displaymetrics.density);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (s < 0.0D)
        {
            k();
            return;
        }
        if (Math.abs(s - (double)getTextSize()) > 1.0D)
        {
            setTextSize(1, (float)s / displaymetrics.density);
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void k()
    {
        String s1 = getText().toString();
        if (TextUtils.isEmpty(s1))
        {
            return;
        }
        StringTokenizer stringtokenizer = new StringTokenizer(s1);
        String s2 = "";
        while (stringtokenizer.hasMoreTokens()) 
        {
            String s3 = stringtokenizer.nextToken();
            DisplayMetrics displaymetrics;
            if (getPaint().measureText(s3) <= getPaint().measureText(s2))
            {
                s3 = s2;
            }
            s2 = s3;
        }
        displaymetrics = getContext().getResources().getDisplayMetrics();
        b((getPaint().getTextSize() / getPaint().measureText(s2)) * (float)(-15 + (ViewUtils.a(displaymetrics, f) - getPaddingLeft() - getPaddingRight())));
    }

    protected void l()
    {
        q = 1.0F;
        p = 0.0F;
        setCaptionPositionX(0.0F);
    }

    protected void m()
    {
        byte byte0;
        if (h)
        {
            byte0 = -1;
        } else
        {
            byte0 = -2;
        }
        b(byte0);
    }

    public void setColor(int i)
    {
label0:
        {
label1:
            {
                int i1 = 0;
                v = false;
                int j1 = getSelectionStart();
                int k1 = getSelectionEnd();
                if (j1 != -1 && k1 != -1)
                {
                    boolean flag;
                    if (j1 == k1)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    List list;
                    if (flag)
                    {
                        k1 = getText().length();
                    } else
                    {
                        i1 = j1;
                    }
                    if (A == null || A.b() != i1 || A.c() != k1 || A.a() == i)
                    {
                        break label0;
                    }
                    if (B != null)
                    {
                        getText().removeSpan(B);
                    }
                    B = new ForegroundColorSpan(i);
                    A = new CaptionColorRange(i, i1, k1);
                    getText().setSpan(B, i1, k1, 34);
                    setText(getText(), android.widget.TextView.BufferType.SPANNABLE);
                    if (!flag)
                    {
                        break label1;
                    }
                    setSelection(getText().length());
                }
                return;
            }
            setSelection(i1, k1);
            return;
        }
        if (A == null)
        {
            if (flag)
            {
                getText().clearSpans();
                list = Collections.singletonList(new CaptionColorRange(i, i1, k1));
                a(getText(), list);
                setSelection(getText().length());
            } else
            {
                a(getText(), i, i1, k1);
                setSelection(i1, k1);
            }
        }
        A = new CaptionColorRange(i, i1, k1);
    }

    protected void setColorSpans(ArrayList arraylist)
    {
        SpannableString spannablestring = new SpannableString(getText());
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            CaptionColorRange captioncolorrange = (CaptionColorRange)iterator.next();
            if (captioncolorrange.c() <= getText().length())
            {
                spannablestring.setSpan(new ForegroundColorSpan(captioncolorrange.a()), captioncolorrange.b(), captioncolorrange.c(), 34);
            }
        } while (true);
        setText(spannablestring, android.widget.TextView.BufferType.SPANNABLE);
    }

    protected void setMaxFontSize(double d1)
    {
        n = d1;
    }

    protected void setMinFontSize(double d1)
    {
        o = d1;
    }
}
