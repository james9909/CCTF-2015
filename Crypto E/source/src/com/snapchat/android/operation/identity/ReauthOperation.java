// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation.identity;

import android.content.Intent;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.operation.BasicScRequestOperation;
import com.snapchat.android.util.LocalizationUtils;

public class ReauthOperation extends BasicScRequestOperation
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public class ReauthOperationRequest extends AuthPayload
    {

        String a;
        final ReauthOperation b;

        public ReauthOperationRequest(String s)
        {
            b = ReauthOperation.this;
            super();
            a = s;
        }
    }

    public class ReauthOperationResponse
    {

        String a;
    }


    private final String b;
    private boolean c;
    private String e;

    public ReauthOperation(Intent intent)
    {
        super(intent);
        c = false;
        b = intent.getStringExtra("password");
        a(com/snapchat/android/operation/identity/ReauthOperation$ReauthOperationResponse, this);
    }

    public void a(ReauthOperationResponse reauthoperationresponse, NetworkResult networkresult)
    {
        if (networkresult.h())
        {
            c = true;
            return;
        }
        c = false;
        String s;
        if (reauthoperationresponse != null)
        {
            s = reauthoperationresponse.a;
        } else
        {
            s = LocalizationUtils.a(0x7f0c0164, new Object[0]);
        }
        e = s;
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ReauthOperationResponse)obj, networkresult);
    }

    public Object b()
    {
        return new ReauthOperationRequest(b);
    }

    protected String e()
    {
        return "/bq/reauth";
    }

    public boolean g()
    {
        return c;
    }

    public String i()
    {
        return e;
    }
}
