// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import android.graphics.Color;
import android.util.Log;
import android.widget.RadioGroup;

// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaptioningStyle, BrightcoveClosedCaptioningOptionsDialog

public class optionsType
    implements android.widget.orChangedListener
{

    protected final this._cls0 optionsType;
    final BrightcoveClosedCaptioningOptionsDialog this$0;

    protected int getColorWithOpacity(int i)
    {
        int j = getCurrentColor();
        if (i == com.brightcove.player.edListener.getCurrentColor)
        {
            j = Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_TRANSPARENT, Color.red(j), Color.green(j), Color.blue(j));
        } else
        {
            if (i == com.brightcove.player.edListener.getCurrentColor)
            {
                return Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT, Color.red(j), Color.green(j), Color.blue(j));
            }
            if (i == com.brightcove.player.edListener.getCurrentColor)
            {
                return Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT_LIGHT, Color.red(j), Color.green(j), Color.blue(j));
            }
            if (i == com.brightcove.player.HT)
            {
                return Color.argb(255, Color.red(j), Color.green(j), Color.blue(j));
            }
        }
        return j;
    }

    protected int getCurrentColor()
    {
        switch (yer.captioning.BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType[optionsType.inal()])
        {
        default:
            String s = BrightcoveClosedCaptioningOptionsDialog.access$100();
            Object aobj[] = new Object[1];
            aobj[0] = optionsType.tring();
            Log.e(s, String.format("Unknown CC Options Type: %s", aobj));
            return -1;

        case 1: // '\001'
            return BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0();

        case 2: // '\002'
            return BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0();

        case 3: // '\003'
            return BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0();

        case 4: // '\004'
            return BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0();
        }
    }

    public void onCheckedChanged(RadioGroup radiogroup, int i)
    {
        setBuilderColor(getColorWithOpacity(i));
        updateCaptions();
    }

    protected void setBuilderColor(int i)
    {
        switch (yer.captioning.BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType[optionsType.inal()])
        {
        default:
            return;

        case 1: // '\001'
            BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0(i);
            return;

        case 2: // '\002'
            BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0(i);
            return;

        case 3: // '\003'
            BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0(i);
            return;

        case 4: // '\004'
            BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0(i);
            break;
        }
    }

    public ( )
    {
        this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
        super();
        optionsType = ;
    }
}
