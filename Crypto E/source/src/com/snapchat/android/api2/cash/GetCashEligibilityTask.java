// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.BasicScRequestTask;

public class GetCashEligibilityTask extends BasicScRequestTask
{
    class RequestPayload extends AuthPayload
    {

        String recipient;
        final GetCashEligibilityTask this$0;

        RequestPayload()
        {
            this$0 = GetCashEligibilityTask.this;
            super();
            recipient = GetCashEligibilityTask.a(GetCashEligibilityTask.this);
        }
    }


    private final String mFriendName;

    public GetCashEligibilityTask(String s)
    {
        mFriendName = s;
    }

    static String a(GetCashEligibilityTask getcasheligibilitytask)
    {
        return getcasheligibilitytask.mFriendName;
    }

    public Object b()
    {
        return new RequestPayload();
    }

    protected String d()
    {
        return "/cash/check_recipient_eligible";
    }
}
