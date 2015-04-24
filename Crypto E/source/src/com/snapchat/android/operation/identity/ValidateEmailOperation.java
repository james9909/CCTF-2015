// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation.identity;

import android.content.Intent;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.operation.BasicScRequestOperation;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ValidationEmailEvent;
import com.snapchat.data.gson.identity.ValidateEmailResponse;
import com.squareup.otto.Bus;

public class ValidateEmailOperation extends BasicScRequestOperation
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public class ValidateEmailPayload extends AuthPayload
    {

        String a;
        final ValidateEmailOperation b;

        public ValidateEmailPayload()
        {
            b = ValidateEmailOperation.this;
            super();
            a = ValidateEmailOperation.a(b);
        }
    }


    private final String b;

    public ValidateEmailOperation(Intent intent)
    {
        super(intent);
        b = intent.getStringExtra("email");
        a(com/snapchat/data/gson/identity/ValidateEmailResponse, this);
    }

    static String a(ValidateEmailOperation validateemailoperation)
    {
        return validateemailoperation.b;
    }

    public void a(ValidateEmailResponse validateemailresponse, NetworkResult networkresult)
    {
        if (networkresult.h() && validateemailresponse != null)
        {
            BusProvider.a().a(new ValidationEmailEvent(b, validateemailresponse));
            return;
        } else
        {
            ValidateEmailResponse validateemailresponse1 = (new ValidateEmailResponse()).a(Boolean.valueOf(false)).a(LocalizationUtils.a(0x7f0c0132, new Object[0]));
            BusProvider.a().a(new ValidationEmailEvent(b, validateemailresponse1));
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ValidateEmailResponse)obj, networkresult);
    }

    public Object b()
    {
        return new ValidateEmailPayload();
    }

    protected String e()
    {
        return "/bq/validate_email";
    }
}
