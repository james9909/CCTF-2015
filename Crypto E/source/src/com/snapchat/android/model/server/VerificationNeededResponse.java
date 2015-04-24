// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;


public class VerificationNeededResponse
{

    private static final String NEEDS_CAPTCHA_STRING = "needs_captcha";
    private static final String NEEDS_PHONE_VERIFIED_STRING = "needs_phone_verified";
    private String mPrompt;
    private String mType;

    public VerificationNeededResponse()
    {
    }

    public String getPrompt()
    {
        return mPrompt;
    }

    public boolean needsCaptcha()
    {
        return mType.equals("needs_captcha");
    }

    public boolean needsPhoneVerification()
    {
        return mType.equals("needs_phone_verified");
    }

    public String toString()
    {
        return (new StringBuilder()).append("CaptchaResponse {type=").append(mType).append(",prompt=").append(mPrompt).append("}").toString();
    }
}
