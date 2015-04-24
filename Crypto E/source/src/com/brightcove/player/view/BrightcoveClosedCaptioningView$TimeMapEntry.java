// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.view.ViewGroup;
import com.brightcove.player.captioning.BrightcoveClosedCaption;

// Referenced classes of package com.brightcove.player.view:
//            BrightcoveClosedCaptioningView

public class block
{

    public ViewGroup block;
    public BrightcoveClosedCaption closedCaption;
    final BrightcoveClosedCaptioningView this$0;

    public (BrightcoveClosedCaption brightcoveclosedcaption, ViewGroup viewgroup)
    {
        this$0 = BrightcoveClosedCaptioningView.this;
        super();
        closedCaption = brightcoveclosedcaption;
        block = viewgroup;
    }
}
