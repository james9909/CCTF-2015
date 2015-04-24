// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewTreeObserver;
import com.snapchat.android.util.eventbus.EditCaptionEvent;
import com.snapchat.android.util.eventbus.GlobalLayoutEvent;

// Referenced classes of package com.snapchat.android.ui.caption:
//            FatCaptionView, FatCaptionEditText, FatCaptionParcelableState, FatCenterCaptionEditText, 
//            CaptionTypeEnums, CaptionEditText, CaptionColorPickedEvent

public class FatCenterCaptionView extends FatCaptionView
{

    public FatCenterCaptionView(Context context)
    {
        super(context);
    }

    protected FatCaptionEditText a(Context context)
    {
        return c(context);
    }

    protected volatile void a(Bundle bundle, boolean flag, CaptionEditText captionedittext)
    {
        a(bundle, flag, (FatCaptionEditText)captionedittext);
    }

    protected void a(Bundle bundle, boolean flag, FatCaptionEditText fatcaptionedittext)
    {
        super.a(bundle, flag, fatcaptionedittext);
        FatCaptionParcelableState fatcaptionparcelablestate = (FatCaptionParcelableState)bundle.getParcelable("captionPositionState");
        if (flag && !g() && fatcaptionparcelablestate != null)
        {
            int i = fatcaptionparcelablestate.f;
            fatcaptionedittext.setCaptionPositionX((d - i) / 2);
        }
    }

    public void a(boolean flag)
    {
        boolean flag1;
        if (flag && ((FatCaptionEditText)b).j)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        super.a(flag1);
        if (!((FatCaptionEditText)b).j)
        {
            ViewTreeObserver viewtreeobserver = getViewTreeObserver();
            viewtreeobserver.addOnPreDrawListener(new android.view.ViewTreeObserver.OnPreDrawListener(viewtreeobserver) {

                final ViewTreeObserver a;
                final FatCenterCaptionView b;

                public boolean onPreDraw()
                {
                    int i = ((FatCaptionEditText)b.b).getWidth();
                    b.setCaptionPositionX((b.d - i) / 2);
                    if (a.isAlive())
                    {
                        a.removeOnPreDrawListener(this);
                    }
                    return false;
                }

            
            {
                b = FatCenterCaptionView.this;
                a = viewtreeobserver;
                super();
            }
            });
        }
    }

    protected CaptionEditText b(Context context)
    {
        return c(context);
    }

    protected FatCenterCaptionEditText c(Context context)
    {
        return new FatCenterCaptionEditText(getContext(), getAttributes());
    }

    public CaptionTypeEnums getCaptionType()
    {
        return CaptionTypeEnums.c;
    }

    public void onCaptionColorPickedEvent(CaptionColorPickedEvent captioncolorpickedevent)
    {
        super.onCaptionColorPickedEvent(captioncolorpickedevent);
    }

    public void onEditCaptionEvent(EditCaptionEvent editcaptionevent)
    {
        super.onEditCaptionEvent(editcaptionevent);
    }

    public void onGlobalLayoutEvent(GlobalLayoutEvent globallayoutevent)
    {
        super.onGlobalLayoutEvent(globallayoutevent);
    }
}
