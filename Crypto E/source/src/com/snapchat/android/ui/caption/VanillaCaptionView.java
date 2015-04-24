// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.InputFilter;
import android.util.DisplayMetrics;
import android.view.View;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.GlobalLayoutEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.caption:
//            SnapCaptionView, VanillaCaptionEditText, CaptionTypeEnums, CaptionEditText

public class VanillaCaptionView extends SnapCaptionView
{

    public VanillaCaptionView(Context context)
    {
        super(context);
    }

    protected VanillaCaptionEditText a(Context context)
    {
        VanillaCaptionEditText vanillacaptionedittext = new VanillaCaptionEditText(context, getAttributes());
        vanillacaptionedittext.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -2));
        return vanillacaptionedittext;
    }

    public void a(Bundle bundle, boolean flag)
    {
        if (bundle != null && bundle.containsKey("captionMaxLength"))
        {
            ((VanillaCaptionEditText)b).g = bundle.getInt("captionMaxLength");
        }
        super.a(bundle, flag);
        if (!((VanillaCaptionEditText)b).h)
        {
            ((VanillaCaptionEditText)b).setGravity(17);
        }
        if (((VanillaCaptionEditText)b).j())
        {
            BusProvider.a().a(new ChangeOrientationEvent(6));
        }
    }

    protected CaptionEditText b(Context context)
    {
        return a(context);
    }

    protected void b()
    {
        super.b();
        ((VanillaCaptionEditText)b).setWidthPixels(d);
        ((VanillaCaptionEditText)b).setHeightPixels(c);
        ((VanillaCaptionEditText)b).setFilters(new InputFilter[0]);
    }

    protected void c()
    {
        ((VanillaCaptionEditText)b).setWidthPixels(d);
        ((VanillaCaptionEditText)b).setHeightPixels(c);
        ((VanillaCaptionEditText)b).setLandscapeMode(e);
        DisplayMetrics displaymetrics = ((VanillaCaptionEditText)b).getContext().getResources().getDisplayMetrics();
        ((VanillaCaptionEditText)b).setTextSize((0.053125F * (float)Math.min(d, c)) / displaymetrics.density);
    }

    public CaptionTypeEnums getCaptionType()
    {
        return CaptionTypeEnums.a;
    }

    protected XmlResourceParser getLayout()
    {
        return getResources().getLayout(0x7f040015);
    }

    public void onGlobalLayoutEvent(GlobalLayoutEvent globallayoutevent)
    {
        if (!((VanillaCaptionEditText)b).e && ((VanillaCaptionEditText)b).h && ((VanillaCaptionEditText)b).getTop() != ((VanillaCaptionEditText)b).getCaptionEditPosition())
        {
            ((VanillaCaptionEditText)b).a(((VanillaCaptionEditText)b).getCaptionEditPosition());
        }
        View view = getRootView();
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        int i = view.getHeight() - (rect.bottom - rect.top);
        if (i > 100)
        {
            int j = c - i;
            if (((VanillaCaptionEditText)b).getKeyboardHeight() != j)
            {
                ((VanillaCaptionEditText)b).setKeyboardHeight(j);
                if (((VanillaCaptionEditText)b).h)
                {
                    ((VanillaCaptionEditText)b).a(false);
                }
            }
        }
    }
}
