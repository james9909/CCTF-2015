// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import android.content.Context;
import android.graphics.Typeface;

// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaptioningStyle

public static class mEdgeColor
{

    private int mBackgroundColor;
    private ttribute mEdgeAttribute;
    private int mEdgeColor;
    private int mHighlightColor;
    private int mTextColor;
    private float mTextSize;
    private Typeface mTypeface;

    public mEdgeColor copyFrom(BrightcoveClosedCaptioningStyle brightcoveclosedcaptioningstyle)
    {
        setBackgroundColor(brightcoveclosedcaptioningstyle.backgroundColor);
        setHighlightColor(brightcoveclosedcaptioningstyle.highlightColor);
        setTypeface(brightcoveclosedcaptioningstyle.typeface);
        setTextColor(brightcoveclosedcaptioningstyle.textColor);
        setTextSize(brightcoveclosedcaptioningstyle.textSize);
        setEdgeAttribute(brightcoveclosedcaptioningstyle.edgeAttribute);
        setEdgeColor(brightcoveclosedcaptioningstyle.edgeColor);
        return this;
    }

    public BrightcoveClosedCaptioningStyle create()
    {
        return new BrightcoveClosedCaptioningStyle(mBackgroundColor, mHighlightColor, mTypeface, mTextColor, mTextSize, mEdgeAttribute, mEdgeColor);
    }

    public int getBackgroundColor()
    {
        return mBackgroundColor;
    }

    public ttribute getEdgeAttribute()
    {
        return mEdgeAttribute;
    }

    public int getEdgeColor()
    {
        return mEdgeColor;
    }

    public int getHighlightColor()
    {
        return mHighlightColor;
    }

    public int getTextColor()
    {
        return mTextColor;
    }

    public float getTextSize()
    {
        return mTextSize;
    }

    public Typeface getTypeface()
    {
        return mTypeface;
    }

    public mTypeface setBackgroundColor(int i)
    {
        mBackgroundColor = i;
        return this;
    }

    public ttribute setEdgeAttribute(ttribute ttribute)
    {
        mEdgeAttribute = ttribute;
        return this;
    }

    public mEdgeAttribute setEdgeColor(int i)
    {
        mEdgeColor = i;
        return this;
    }

    public mEdgeColor setHighlightColor(int i)
    {
        mHighlightColor = i;
        return this;
    }

    public mHighlightColor setTextColor(int i)
    {
        mTextColor = i;
        return this;
    }

    public mTextColor setTextSize(float f)
    {
        mTextSize = f;
        return this;
    }

    public mTextSize setTypeface(Typeface typeface)
    {
        mTypeface = typeface;
        return this;
    }

    protected ttribute(Context context)
    {
        mBackgroundColor = 0;
        mHighlightColor = 0;
        mTypeface = BrightcoveClosedCaptioningStyle.DEFAULT_TYPEFACE;
        mTextColor = -1;
        mTextSize = 14F;
        mEdgeAttribute = BrightcoveClosedCaptioningStyle.DEFAULT_EDGE_ATTRIBUTE;
        mEdgeColor = 0;
    }
}
