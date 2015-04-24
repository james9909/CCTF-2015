// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.EditCaptionEvent;
import com.snapchat.android.util.eventbus.GlobalLayoutEvent;

// Referenced classes of package com.snapchat.android.ui.caption:
//            SnapCaptionView, FatCaptionParcelableState, FatCaptionEditText, CaptionTypeEnums, 
//            CaptionColorPickedEvent, CaptionEditText

public class FatCaptionView extends SnapCaptionView
{

    private double f;

    public FatCaptionView(Context context)
    {
        super(context);
        f = getOrientationAngle();
    }

    private float[] a(double d, float f1, float f2, int i, int j)
    {
        double d1 = Math.cos(d);
        double d2 = Math.sin(d);
        double d3 = d1 * (double)f1 - d2 * (double)f2;
        double d4 = d2 * (double)f1 + d1 * (double)f2;
        if (d1 - d2 < 0.0D)
        {
            d3 += this.d;
        }
        if (d1 + d2 < 0.0D)
        {
            d4 += c;
        }
        return (new float[] {
            (float)d3 - (float)(i / 2), (float)d4 - (float)(j / 2)
        });
    }

    public Bundle a()
    {
        Bundle bundle = super.a();
        bundle.putFloat("captionPreviousXPercentageOnScreen", (float)getCaptionPositionX() / (float)d);
        bundle.putParcelable("captionPositionState", new FatCaptionParcelableState((FatCaptionEditText)b));
        bundle.putDouble("captionLastOrientationAngle", f);
        bundle.putBoolean("captionInFreeMode", ((FatCaptionEditText)b).j);
        bundle.putBoolean("captionScaleEdited", ((FatCaptionEditText)b).t);
        return bundle;
    }

    protected FatCaptionEditText a(Context context)
    {
        return new FatCaptionEditText(context, getAttributes());
    }

    protected void a(Bundle bundle, double d, FatCaptionEditText fatcaptionedittext)
    {
        fatcaptionedittext.j = bundle.getBoolean("captionInFreeMode", false);
        fatcaptionedittext.t = bundle.getBoolean("captionScaleEdited", false);
        FatCaptionParcelableState fatcaptionparcelablestate = (FatCaptionParcelableState)bundle.getParcelable("captionPositionState");
        fatcaptionedittext.s = fatcaptionparcelablestate.h;
        fatcaptionedittext.r = fatcaptionparcelablestate.i;
        if (!fatcaptionedittext.j)
        {
            super.a(bundle, false, fatcaptionedittext);
            fatcaptionedittext.setCaptionPositionX(bundle.getFloat("captionPreviousXPercentageOnScreen") * (float)this.d);
            return;
        }
        float f1;
        float f2;
        double d1;
        float f3;
        float f4;
        int i;
        int j;
        float af[];
        DisplayMetrics displaymetrics;
        if (fatcaptionparcelablestate != null)
        {
            f1 = fatcaptionparcelablestate.a;
        } else
        {
            f1 = 0.0F;
        }
        if (fatcaptionparcelablestate != null)
        {
            f2 = fatcaptionparcelablestate.b;
        } else
        {
            f2 = 1.0F;
        }
        d1 = bundle.getDouble("captionLastOrientationAngle") - d;
        f = d;
        f3 = fatcaptionparcelablestate.c[0];
        f4 = fatcaptionparcelablestate.c[1];
        i = fatcaptionparcelablestate.f;
        j = fatcaptionparcelablestate.g;
        af = a(d1, f3, f4, i, j);
        fatcaptionedittext.a(af[0], af[1]);
        fatcaptionedittext.p = f1 + (float)Math.toDegrees(d1);
        fatcaptionedittext.q = f2;
        fatcaptionedittext.setRotation(fatcaptionedittext.p);
        fatcaptionedittext.setScaleX(fatcaptionedittext.q);
        fatcaptionedittext.setScaleY(fatcaptionedittext.q);
        fatcaptionedittext.setMaxWidth(i);
        fatcaptionedittext.setMaxHeight(j);
        displaymetrics = getContext().getResources().getDisplayMetrics();
        fatcaptionedittext.setTextSize(1, (float)fatcaptionparcelablestate.h / displaymetrics.density);
    }

    public void a(Bundle bundle, boolean flag)
    {
        if (bundle != null && bundle.containsKey("captionMaxLength"))
        {
            ((FatCaptionEditText)b).setMaxTextLengthInputFilter(bundle.getInt("captionMaxLength"));
        }
        super.a(bundle, flag);
        c();
    }

    protected volatile void a(Bundle bundle, boolean flag, CaptionEditText captionedittext)
    {
        a(bundle, flag, (FatCaptionEditText)captionedittext);
    }

    protected void a(Bundle bundle, boolean flag, FatCaptionEditText fatcaptionedittext)
    {
        if (!flag)
        {
            a(bundle, getOrientationAngle(), fatcaptionedittext);
            return;
        } else
        {
            super.a(bundle, flag, fatcaptionedittext);
            fatcaptionedittext.l();
            return;
        }
    }

    protected CaptionEditText b(Context context)
    {
        return a(context);
    }

    protected void b()
    {
        if (!((FatCaptionEditText)b).j)
        {
            ((FatCaptionEditText)b).a((getCaptionPositionX() * d) / c, (getCaptionPositionY() * c) / d);
        }
    }

    protected void c()
    {
        ((FatCaptionEditText)b).setMaxFontSize(3F * (0.053125F * (float)Math.min(d, c)));
        ((FatCaptionEditText)b).setMinFontSize(((FatCaptionEditText)b).getMaxFontSize() / 4D);
        if (!((FatCaptionEditText)b).j)
        {
            ((FatCaptionEditText)b).m();
        }
        ((FatCaptionEditText)b).setVerticalFadingEdgeEnabled(true);
        ((FatCaptionEditText)b).setFadingEdgeLength(45);
        ((FatCaptionEditText)b).g();
        if (!((FatCaptionEditText)b).j)
        {
            ((FatCaptionEditText)b).j();
        }
    }

    public CaptionTypeEnums getCaptionType()
    {
        return CaptionTypeEnums.b;
    }

    protected XmlResourceParser getLayout()
    {
        return getResources().getLayout(0x7f040014);
    }

    protected double getOrientationAngle()
    {
        switch (ViewUtils.c(getContext()))
        {
        case 0: // '\0'
        default:
            return 0.0D;

        case 1: // '\001'
            return 1.5707963267948966D;

        case 2: // '\002'
            return 3.1415926535897931D;

        case 3: // '\003'
            return -1.5707963267948966D;
        }
    }

    public void onCaptionColorPickedEvent(CaptionColorPickedEvent captioncolorpickedevent)
    {
        ((FatCaptionEditText)b).setColor(captioncolorpickedevent.a());
    }

    public void onEditCaptionEvent(EditCaptionEvent editcaptionevent)
    {
        if (editcaptionevent.a())
        {
            setBackgroundColor(getResources().getColor(0x7f080009));
            return;
        } else
        {
            setBackgroundColor(0);
            return;
        }
    }

    public void onGlobalLayoutEvent(GlobalLayoutEvent globallayoutevent)
    {
        if (!((FatCaptionEditText)b).j)
        {
            ((FatCaptionEditText)b).j();
        }
        if (!((FatCaptionEditText)b).e && ((FatCaptionEditText)b).h)
        {
            ((FatCaptionEditText)b).d();
        }
        View view = getRootView();
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        int i = view.getHeight() - (rect.bottom - rect.top);
        if (i > 100)
        {
            int j = c - i;
            if (((FatCaptionEditText)b).getKeyboardHeight() != j)
            {
                ((FatCaptionEditText)b).setKeyboardHeight(j);
                if (((FatCaptionEditText)b).h)
                {
                    ((FatCaptionEditText)b).a(false);
                }
            }
        }
    }
}
