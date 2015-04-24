// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import android.util.Log;
import android.widget.RadioGroup;

// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaptioningOptionsDialog

public class this._cls0
    implements android.widget.zeChangedListener
{

    final BrightcoveClosedCaptioningOptionsDialog this$0;

    private float getTextSize(int i)
    {
        float f = 1.0F;
        if (i != com.brightcove.player.edListener) goto _L2; else goto _L1
_L1:
        f = 0.5F;
_L4:
        Object aobj[] = new Object[1];
        aobj[0] = Float.valueOf(f);
        Log.i("TextSizeChangeListener", String.format("sizeMultipler is %f", aobj));
        return f * 14F;
_L2:
        if (i == com.brightcove.player.edListener)
        {
            f = 0.75F;
        } else
        if (i != com.brightcove.player.edListener)
        {
            if (i == com.brightcove.player.edListener)
            {
                f = 1.5F;
            } else
            if (i == com.brightcove.player.edListener)
            {
                f = 2.0F;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onCheckedChanged(RadioGroup radiogroup, int i)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        Log.d("TextSizeChangedListener", String.format("Text Size %d selected", aobj));
        BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0(getTextSize(i));
        updateCaptions();
    }

    protected ()
    {
        this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
        super();
    }
}
