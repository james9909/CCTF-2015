// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class VerifyPhoneNumberForPaymentEvent
{

    private com.snapchat.android.fragments.addfriends.ReturningUserPhoneVerificationFragment.ReturningUserPhoneVerificationFragmentListener a;

    public VerifyPhoneNumberForPaymentEvent(com.snapchat.android.fragments.addfriends.ReturningUserPhoneVerificationFragment.ReturningUserPhoneVerificationFragmentListener returninguserphoneverificationfragmentlistener)
    {
        a = returninguserphoneverificationfragmentlistener;
    }

    public com.snapchat.android.fragments.addfriends.ReturningUserPhoneVerificationFragment.ReturningUserPhoneVerificationFragmentListener a()
    {
        return a;
    }
}
