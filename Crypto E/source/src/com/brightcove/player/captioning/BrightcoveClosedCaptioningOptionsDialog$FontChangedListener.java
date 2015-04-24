// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import android.graphics.Typeface;
import android.widget.RadioGroup;

// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaptioningOptionsDialog

public class this._cls0
    implements android.widget.ntChangedListener
{

    final BrightcoveClosedCaptioningOptionsDialog this$0;

    private Typeface getTypeface(int i)
    {
        if (i == com.brightcove.player.edListener)
        {
            return Typeface.DEFAULT;
        }
        if (i == com.brightcove.player.edListener)
        {
            return Typeface.MONOSPACE;
        }
        if (i == com.brightcove.player.edListener)
        {
            return Typeface.SERIF;
        }
        if (i == com.brightcove.player.edListener)
        {
            return Typeface.SANS_SERIF;
        } else
        {
            return Typeface.DEFAULT;
        }
    }

    public void onCheckedChanged(RadioGroup radiogroup, int i)
    {
        BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0(getTypeface(i));
        updateCaptions();
    }

    protected ()
    {
        this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
        super();
    }
}
