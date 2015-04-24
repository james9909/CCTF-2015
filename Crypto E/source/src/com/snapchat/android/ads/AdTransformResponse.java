// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;


public class AdTransformResponse
{
    public static class Builder
    {

        private String a;
        private Exception b;

        public Builder a(Exception exception)
        {
            b = exception;
            return this;
        }

        public Builder a(String s)
        {
            a = s;
            return this;
        }

        public AdTransformResponse a()
        {
            return new AdTransformResponse(a, b);
        }

        public Builder()
        {
        }
    }


    private final String a;
    private final Exception b;

    private AdTransformResponse(String s, Exception exception)
    {
        a = s;
        b = exception;
    }


    public String a()
    {
        return a;
    }

    public Exception b()
    {
        return b;
    }
}
