// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


public class UnviewedContentCount
{
    public static class Builder
    {

        int numWithOnlyUnviewedCash;
        int numWithOnlyUnviewedChats;
        int numWithUnviewedContent;

        public Builder a(int i)
        {
            numWithUnviewedContent = i;
            return this;
        }

        public UnviewedContentCount a()
        {
            return new UnviewedContentCount(this);
        }

        public Builder b(int i)
        {
            numWithOnlyUnviewedChats = i;
            return this;
        }

        public Builder c(int i)
        {
            numWithOnlyUnviewedCash = i;
            return this;
        }

        public Builder()
        {
        }
    }


    private int mNumWithOnlyUnreadChats;
    private int mNumWithOnlyUnviewedCash;
    private int mNumWithUnviewedContent;

    private UnviewedContentCount(Builder builder)
    {
        mNumWithUnviewedContent = builder.numWithUnviewedContent;
        mNumWithOnlyUnreadChats = builder.numWithOnlyUnviewedChats;
        mNumWithOnlyUnviewedCash = builder.numWithOnlyUnviewedCash;
    }


    public int a()
    {
        return mNumWithUnviewedContent;
    }

    public int b()
    {
        return mNumWithOnlyUnreadChats;
    }

    public int c()
    {
        return mNumWithOnlyUnviewedCash;
    }
}
