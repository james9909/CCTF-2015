// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;


public class CaptionParameters
{

    private long mOrientation;
    private double mPosition;
    private String mText;

    public CaptionParameters()
    {
    }

    public CaptionParameters(String s, long l, double d)
    {
        mText = s;
        mOrientation = l;
        mPosition = d;
    }

    public long getOrientation()
    {
        return mOrientation;
    }

    public double getPosition()
    {
        return mPosition;
    }

    public String getText()
    {
        return mText;
    }

    public void setOrientation(long l)
    {
        mOrientation = l;
    }

    public void setPosition(double d)
    {
        mPosition = d;
    }

    public void setText(String s)
    {
        mText = s;
    }
}
