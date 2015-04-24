// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.content.Context;
import android.util.AttributeSet;
import java.util.ArrayList;

// Referenced classes of package com.snapchat.android.ui.caption:
//            FatCaptionEditText, CaptionTypeEnums, CaptionAnalyticData

public class FatCenterCaptionEditText extends FatCaptionEditText
{

    public FatCenterCaptionEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setGravity(49);
    }

    protected void f()
    {
        super.f();
        setGravity(49);
    }

    protected CaptionAnalyticData getAnalyticsDetails()
    {
        CaptionTypeEnums captiontypeenums = CaptionTypeEnums.c;
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
}
