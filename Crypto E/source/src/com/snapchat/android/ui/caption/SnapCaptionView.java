// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Xml;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import com.snapchat.android.Timber;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.EditCaptionEvent;
import com.snapchat.android.util.eventbus.HardwareKeyEvent;
import com.squareup.otto.Bus;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionEditText, CaptionTypeEnums, CaptionAnalyticData, SnapCaptionViewInterface

public abstract class SnapCaptionView extends FrameLayout
{

    protected XmlResourceParser a;
    protected CaptionEditText b;
    protected int c;
    protected int d;
    protected boolean e;

    public SnapCaptionView(Context context)
    {
        super(context);
        e = false;
        if (isInEditMode())
        {
            return;
        } else
        {
            InputMethodManager inputmethodmanager = (InputMethodManager)context.getSystemService("input_method");
            setFocusable(true);
            setFocusableInTouchMode(true);
            a = getLayout();
            b = b(context);
            b.e = true;
            d();
            c();
            b.e = false;
            b.setKeyboardManager(inputmethodmanager);
            addView(b);
            return;
        }
    }

    private void a(int k)
    {
        if (i())
        {
            return;
        } else
        {
            b.setCaptionPositionY(k);
            b.a(false);
            return;
        }
    }

    public static int d(Context context)
    {
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        return (int)Math.ceil(1.6659999999999999D * (double)((float)Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels) * (0.053125F / displaymetrics.density)) * (double)displaymetrics.density);
    }

    protected float a(float f1, int k)
    {
        float f2 = f1 * (float)c;
        float f3 = (f2 + (float)k) - (float)c;
        if (f3 > 0.0F)
        {
            f2 -= f3;
        }
        return f2;
    }

    public Bundle a()
    {
        UserPrefs.a(e, b.getKeyboardHeight());
        Bundle bundle = new Bundle();
        bundle.putFloat("captionPreviousYPercentageOnScreen", (float)getCaptionPositionY() / (float)c);
        bundle.putString("captionViewText", getText());
        bundle.putBoolean("isEditing", b.h);
        bundle.putInt("captionType", getCaptionType().ordinal());
        bundle.putInt("keyboardHeight", b.getKeyboardHeight());
        bundle.putParcelableArrayList("captionInitializationColorSpans", b.getColorSpans());
        if (b.g > 0)
        {
            bundle.putInt("captionMaxLength", b.g);
        }
        return bundle;
    }

    public void a(Bundle bundle, boolean flag)
    {
        boolean flag1 = false;
        if (bundle != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        b.setKeyboardHeight(bundle.getInt("keyboardHeight"));
        String s = bundle.getString("captionViewText");
        if (s != null)
        {
            b.e = true;
            b.setText(s);
            b.e = false;
        }
        java.util.ArrayList arraylist;
        if (!flag && TextUtils.isEmpty(s))
        {
            b.setVisibility(4);
        } else
        {
            b.setVisibility(0);
        }
        b.setCursorVisible(false);
        b.h = bundle.getBoolean("isEditing");
        arraylist = bundle.getParcelableArrayList("captionInitializationColorSpans");
        b.setColorSpans(arraylist);
        a(bundle, flag, b);
        if (!g())
        {
            break MISSING_BLOCK_LABEL_206;
        }
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        b.f();
_L4:
        if (flag1)
        {
            BusProvider.a().a(new EditCaptionEvent(g()));
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        b.d();
        b.setSelection(getText().length());
        b.setCursorVisible(true);
        flag1 = true;
          goto _L4
    }

    protected void a(Bundle bundle, boolean flag, CaptionEditText captionedittext)
    {
        captionedittext.setCaptionPositionY(a(bundle.getFloat("captionPreviousYPercentageOnScreen"), captionedittext.getHeight()));
    }

    public void a(MotionEvent motionevent)
    {
        if (b.getVisibility() == 0 && !b.c(motionevent))
        {
            return;
        } else
        {
            a((int)motionevent.getY());
            return;
        }
    }

    public void a(boolean flag)
    {
        if (!g() || i())
        {
            return;
        } else
        {
            b.b(flag);
            return;
        }
    }

    protected abstract CaptionEditText b(Context context);

    protected void b()
    {
        b.setCaptionPositionY((getCaptionPositionY() * c) / d);
    }

    public void b(boolean flag)
    {
        b.c(flag);
    }

    public boolean b(MotionEvent motionevent)
    {
        if (b.getVisibility() != 0)
        {
            return false;
        } else
        {
            return b.c(motionevent);
        }
    }

    protected void c()
    {
    }

    public boolean d()
    {
        boolean flag = true;
        boolean flag1 = e;
        boolean flag2;
        DisplayMetrics displaymetrics;
        if (!ViewUtils.d(getContext()))
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        e = flag2;
        if (e == flag1)
        {
            flag = false;
        }
        displaymetrics = getContext().getResources().getDisplayMetrics();
        d = ViewUtils.a(displaymetrics, e);
        c = ViewUtils.b(displaymetrics, e);
        b.setLandscapeMode(e);
        b.setKeyboardHeight(UserPrefs.t(e));
        if (flag)
        {
            b();
        }
        return flag;
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        return b.dispatchTouchEvent(motionevent);
    }

    public void e()
    {
        a(c / 2);
    }

    public void f()
    {
        a(true);
    }

    public boolean g()
    {
        return b.h;
    }

    protected AttributeSet getAttributes()
    {
        int k = 0;
_L5:
        int i1 = a.next();
        int l = i1;
_L2:
        if (l == 2 && TextUtils.equals(a.getName(), "EditText"))
        {
            return Xml.asAttributeSet(a);
        }
        break; /* Loop/switch isn't completed */
        Object obj;
        obj;
_L3:
        Timber.a("SnapCaptionView", ((Throwable) (obj)));
        l = k;
        if (true) goto _L2; else goto _L1
_L1:
label0:
        {
            if (l == 1)
            {
                return null;
            }
            break label0;
        }
        obj;
          goto _L3
        k = l;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public CaptionAnalyticData getCaptionAnalyticsDetails()
    {
        return b.getAnalyticsDetails();
    }

    protected int getCaptionPositionX()
    {
        return (int)b.getLastSelectedPositionX();
    }

    protected int getCaptionPositionY()
    {
        return (int)b.getLastSelectedPositionY();
    }

    public int getCaptionTop()
    {
        return b.getTop();
    }

    public abstract CaptionTypeEnums getCaptionType();

    protected abstract XmlResourceParser getLayout();

    public String getText()
    {
        if (b.isInEditMode())
        {
            return b.getEditableText().toString();
        } else
        {
            return b.getText().toString();
        }
    }

    public boolean h()
    {
        return b.i;
    }

    public boolean i()
    {
        return b.d;
    }

    public boolean j()
    {
        return b.c();
    }

    public void onKeyDownEvent(HardwareKeyEvent hardwarekeyevent)
    {
        while (b.h || hardwarekeyevent.b.getUnicodeChar() == 0) 
        {
            return;
        }
        setCaptionPositionY((int)(0.62D * (double)c));
        b.a(true);
        b.append(String.valueOf((char)hardwarekeyevent.b.getUnicodeChar()));
    }

    protected void setCaptionPositionX(int k)
    {
        b.setCaptionPositionX(k);
    }

    protected void setCaptionPositionY(int k)
    {
        b.setCaptionPositionY(k);
    }

    public void setInterface(SnapCaptionViewInterface snapcaptionviewinterface)
    {
        b.setInterface(snapcaptionviewinterface);
    }

    public void setIsVideoSnap(boolean flag)
    {
        b.setIsVideoSnap(flag);
    }

    public void setText(String s)
    {
        b.setText(s);
        b.setVisibility(0);
        int k = ViewUtils.b(b);
        int l = PreferenceManager.getDefaultSharedPreferences(getContext()).getInt(SharedPreferenceKey.ab.a(), -1);
        if (l == -1)
        {
            setCaptionPositionY((int)(0.6F * (float)c));
        } else
        {
            setCaptionPositionY(l - k);
        }
        b.a(0, getCaptionPositionY());
    }
}
