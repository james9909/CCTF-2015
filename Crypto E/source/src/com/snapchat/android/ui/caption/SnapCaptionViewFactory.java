// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.content.Context;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionTypeEnums, VanillaCaptionView, FatCaptionView, FatCenterCaptionView, 
//            SnapCaptionView

public class SnapCaptionViewFactory
{

    public SnapCaptionViewFactory()
    {
    }

    public static SnapCaptionView a(CaptionTypeEnums captiontypeenums, Context context)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[CaptionTypeEnums.values().length];
                try
                {
                    a[CaptionTypeEnums.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[CaptionTypeEnums.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[CaptionTypeEnums.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[captiontypeenums.ordinal()])
        {
        default:
            throw new IllegalArgumentException(String.format("[%s] Caption Type is not valid", new Object[] {
                captiontypeenums
            }));

        case 1: // '\001'
            return new VanillaCaptionView(context);

        case 2: // '\002'
            return new FatCaptionView(context);

        case 3: // '\003'
            return new FatCenterCaptionView(context);
        }
    }
}
