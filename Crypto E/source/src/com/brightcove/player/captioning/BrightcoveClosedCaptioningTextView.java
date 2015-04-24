// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;

// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaptioningStyle

public class BrightcoveClosedCaptioningTextView extends TextView
{
    public static final class EdgeAttribute extends Enum
    {

        private static final EdgeAttribute $VALUES[];
        public static final EdgeAttribute DEPRESSED;
        public static final EdgeAttribute DROP_SHADOW;
        public static final EdgeAttribute NONE;
        public static final EdgeAttribute RAISED;
        public static final EdgeAttribute UNIFORM;

        public static EdgeAttribute valueOf(String s)
        {
            return (EdgeAttribute)Enum.valueOf(com/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute, s);
        }

        public static EdgeAttribute[] values()
        {
            return (EdgeAttribute[])$VALUES.clone();
        }

        static 
        {
            NONE = new EdgeAttribute("NONE", 0);
            RAISED = new EdgeAttribute("RAISED", 1);
            DEPRESSED = new EdgeAttribute("DEPRESSED", 2);
            UNIFORM = new EdgeAttribute("UNIFORM", 3);
            DROP_SHADOW = new EdgeAttribute("DROP_SHADOW", 4);
            EdgeAttribute aedgeattribute[] = new EdgeAttribute[5];
            aedgeattribute[0] = NONE;
            aedgeattribute[1] = RAISED;
            aedgeattribute[2] = DEPRESSED;
            aedgeattribute[3] = UNIFORM;
            aedgeattribute[4] = DROP_SHADOW;
            $VALUES = aedgeattribute;
        }

        private EdgeAttribute(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String TAG = com/brightcove/player/captioning/BrightcoveClosedCaptioningTextView.getSimpleName();
    private BrightcoveClosedCaptioningStyle captionsStyle;
    private EdgeAttribute edgeAttribute;
    private int edgeColor;
    private float edgeSize;
    private int playerHeightPx;

    public BrightcoveClosedCaptioningTextView(Context context)
    {
        super(context);
        edgeAttribute = EdgeAttribute.NONE;
        edgeColor = 0;
        edgeSize = 1.0F;
        initCaptionsTextView();
    }

    public BrightcoveClosedCaptioningTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        edgeAttribute = EdgeAttribute.NONE;
        edgeColor = 0;
        edgeSize = 1.0F;
        initCaptionsTextView();
    }

    public BrightcoveClosedCaptioningTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        edgeAttribute = EdgeAttribute.NONE;
        edgeColor = 0;
        edgeSize = 1.0F;
        initCaptionsTextView();
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        if (edgeAttribute == EdgeAttribute.UNIFORM)
        {
            for (int i = 0; i < 5; i++)
            {
                super.draw(canvas);
            }

        }
    }

    protected void initCaptionsTextView()
    {
        setSingleLine(false);
        setPadding(3, 3, 3, 3);
        setStyle(BrightcoveClosedCaptioningStyle.newBuilder(getContext()).create());
    }

    public void setEdgeAttribute(EdgeAttribute edgeattribute)
    {
        edgeAttribute = edgeattribute;
    }

    public void setEdgeColor(int i)
    {
        edgeColor = i;
    }

    public void setEdgeSize(float f)
    {
        if (edgeAttribute == EdgeAttribute.DROP_SHADOW || edgeAttribute == EdgeAttribute.UNIFORM)
        {
            edgeSize = 2.0F;
            return;
        } else
        {
            edgeSize = f;
            return;
        }
    }

    public void setStyle(BrightcoveClosedCaptioningStyle brightcoveclosedcaptioningstyle)
    {
        setEdgeColor(brightcoveclosedcaptioningstyle.edgeColor);
        setEdgeAttribute(brightcoveclosedcaptioningstyle.edgeAttribute);
        setEdgeSize(edgeSize);
        setBackgroundColor(brightcoveclosedcaptioningstyle.highlightColor);
        setTypeface(brightcoveclosedcaptioningstyle.typeface);
        setTextSize(0, (int)(0.0533F * (float)playerHeightPx * (brightcoveclosedcaptioningstyle.textSize / 14F)));
        setTextColor(brightcoveclosedcaptioningstyle.textColor);
        captionsStyle = brightcoveclosedcaptioningstyle;
        if (edgeAttribute == EdgeAttribute.NONE)
        {
            setShadowLayer(0.0F, 0.0F, 0.0F, 0);
        } else
        {
            if (edgeAttribute == EdgeAttribute.RAISED)
            {
                setShadowLayer(0.01F, edgeSize, 0.0F, edgeColor);
                return;
            }
            if (edgeAttribute == EdgeAttribute.DEPRESSED)
            {
                setShadowLayer(0.01F, -edgeSize, 0.0F, edgeColor);
                return;
            }
            if (edgeAttribute == EdgeAttribute.UNIFORM)
            {
                setShadowLayer(3F, 0.0F, 0.0F, edgeColor);
                return;
            }
            if (edgeAttribute == EdgeAttribute.DROP_SHADOW)
            {
                setShadowLayer(0.01F, edgeSize, edgeSize, edgeColor);
                return;
            }
        }
    }

    public void setVideoPlayerHeightPx(int i)
    {
        playerHeightPx = i;
    }

}
