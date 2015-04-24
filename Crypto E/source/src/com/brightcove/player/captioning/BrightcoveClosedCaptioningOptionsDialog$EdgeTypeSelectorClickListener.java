// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import android.widget.RadioGroup;

// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaptioningOptionsDialog

public class optionsType
    implements android.widget.ctorClickListener
{

    protected getSelectedEdgeType optionsType;
    final BrightcoveClosedCaptioningOptionsDialog this$0;

    private optionsType getSelectedEdgeType(int i)
    {
        if (i == com.brightcove.player.ckListener)
        {
            return optionsType;
        }
        if (i == com.brightcove.player.ckListener)
        {
            return optionsType;
        }
        if (i == com.brightcove.player.W)
        {
            return optionsType;
        }
        if (i == com.brightcove.player.W)
        {
            return optionsType;
        }
        if (i == com.brightcove.player.W)
        {
            return optionsType;
        } else
        {
            return optionsType;
        }
    }

    private void setBuilderEdgeAttribute(optionsType optionstype)
    {
        if (optionsType == GE_TYPE)
        {
            BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this)._mth0(optionstype);
        }
    }

    public void onCheckedChanged(RadioGroup radiogroup, int i)
    {
        setBuilderEdgeAttribute(getSelectedEdgeType(i));
        updateCaptions();
    }

    public ( )
    {
        this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
        super();
        optionsType = ;
    }
}
