// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.content.Context;
import android.util.AttributeSet;
import com.snapchat.android.ui.ColorPickerView;
import com.snapchat.android.util.eventbus.BusProvider;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionColorPickedEvent

public class CaptionColorPickerView extends ColorPickerView
{

    public CaptionColorPickerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void a(int i)
    {
        BusProvider.a().a(new CaptionColorPickedEvent(i));
    }
}
