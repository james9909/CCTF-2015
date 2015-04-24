// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import android.content.Context;
import android.graphics.Typeface;

public class BrightcoveClosedCaptioningStyle
{
    public static class Builder
    {

        private int mBackgroundColor;
        private BrightcoveClosedCaptioningTextView.EdgeAttribute mEdgeAttribute;
        private int mEdgeColor;
        private int mHighlightColor;
        private int mTextColor;
        private float mTextSize;
        private Typeface mTypeface;

        public Builder copyFrom(BrightcoveClosedCaptioningStyle brightcoveclosedcaptioningstyle)
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

        public BrightcoveClosedCaptioningTextView.EdgeAttribute getEdgeAttribute()
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

        public Builder setBackgroundColor(int i)
        {
            mBackgroundColor = i;
            return this;
        }

        public Builder setEdgeAttribute(BrightcoveClosedCaptioningTextView.EdgeAttribute edgeattribute)
        {
            mEdgeAttribute = edgeattribute;
            return this;
        }

        public Builder setEdgeColor(int i)
        {
            mEdgeColor = i;
            return this;
        }

        public Builder setHighlightColor(int i)
        {
            mHighlightColor = i;
            return this;
        }

        public Builder setTextColor(int i)
        {
            mTextColor = i;
            return this;
        }

        public Builder setTextSize(float f)
        {
            mTextSize = f;
            return this;
        }

        public Builder setTypeface(Typeface typeface1)
        {
            mTypeface = typeface1;
            return this;
        }

        protected Builder(Context context)
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


    public static final int DEFAULT_BACKGROUND_COLOR = 0;
    public static final BrightcoveClosedCaptioningTextView.EdgeAttribute DEFAULT_EDGE_ATTRIBUTE;
    public static final int DEFAULT_EDGE_COLOR = 0;
    public static final int DEFAULT_HIGHLIGHT_COLOR = 0;
    public static final int DEFAULT_TEXT_COLOR = -1;
    public static final float DEFAULT_TEXT_SIZE = 14F;
    public static final Typeface DEFAULT_TYPEFACE;
    public static final int OPACITY_OPAQUE = 255;
    public static final int OPACITY_SEMI_TRANSPARENT = Math.round(191.25F);
    public static final int OPACITY_SEMI_TRANSPARENT_LIGHT = Math.round(63.75F);
    public static final int OPACITY_TRANSPARENT = Math.round(0.0F);
    public final int backgroundColor;
    public final BrightcoveClosedCaptioningTextView.EdgeAttribute edgeAttribute;
    public final int edgeColor;
    public final int highlightColor;
    public final int textColor;
    public final float textSize;
    public final Typeface typeface;

    protected BrightcoveClosedCaptioningStyle(int i, int j, Typeface typeface1, int k, float f, BrightcoveClosedCaptioningTextView.EdgeAttribute edgeattribute, int l)
    {
        backgroundColor = i;
        highlightColor = j;
        typeface = typeface1;
        textColor = k;
        textSize = f;
        edgeAttribute = edgeattribute;
        edgeColor = l;
    }

    public static Builder newBuilder(Context context)
    {
        return new Builder(context);
    }

    public String toString()
    {
        return (new StringBuilder()).append("<CaptionsStyle ").append("backgroundColor=").append(backgroundColor).append(", ").append("highlightColor=").append(highlightColor).append(", ").append("typeface=").append(typeface).append(", ").append("textSize=").append(textSize).append(", ").append("textColor=").append(textColor).append(", ").append("edgeAttribute=").append(edgeAttribute).append(", ").append("edgeColor=").append(edgeColor).append(">").toString();
    }

    static 
    {
        DEFAULT_TYPEFACE = Typeface.MONOSPACE;
        DEFAULT_EDGE_ATTRIBUTE = BrightcoveClosedCaptioningTextView.EdgeAttribute.NONE;
    }
}
