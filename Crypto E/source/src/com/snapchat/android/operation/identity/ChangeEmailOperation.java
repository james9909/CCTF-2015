// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation.identity;

import android.content.Intent;
import android.text.TextUtils;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.operation.BasicScRequestOperation;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.PrimitiveUtils;
import com.snapchat.data.gson.identity.SettingOperationResponse;

public class ChangeEmailOperation extends BasicScRequestOperation
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public class ChangeEmailOperationRequest extends AuthPayload
    {

        String a;
        final ChangeEmailOperation b;

        public ChangeEmailOperationRequest(String s)
        {
            b = ChangeEmailOperation.this;
            super();
            a = s;
        }
    }


    private final String b;
    private final UserPrefs c;
    private SettingOperationResponse e;
    private boolean f;

    public ChangeEmailOperation(Intent intent)
    {
        this(intent, UserPrefs.a());
    }

    protected ChangeEmailOperation(Intent intent, UserPrefs userprefs)
    {
        super(intent);
        f = false;
        c = userprefs;
        b = intent.getStringExtra("email");
        a(com/snapchat/data/gson/identity/SettingOperationResponse, this);
    }

    public void a(SettingOperationResponse settingoperationresponse, NetworkResult networkresult)
    {
label0:
        {
label1:
            {
                if (!networkresult.h() && networkresult.j() != 400 || settingoperationresponse == null)
                {
                    break label0;
                }
                e = settingoperationresponse;
                if (PrimitiveUtils.a(settingoperationresponse.a()))
                {
                    String s = b;
                    UserPrefs _tmp = c;
                    if (!TextUtils.equals(s, UserPrefs.v()) || !c.aJ())
                    {
                        break label1;
                    }
                    c.u(null);
                }
                return;
            }
            c.u(b);
            return;
        }
        if (networkresult.j() == 403)
        {
            f = true;
            return;
        } else
        {
            e = (new SettingOperationResponse()).a(Boolean.valueOf(false)).a(LocalizationUtils.a(0x7f0c0164, new Object[0]));
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((SettingOperationResponse)obj, networkresult);
    }

    public Object b()
    {
        return new ChangeEmailOperationRequest(b);
    }

    protected String e()
    {
        return "/loq/and/change_email";
    }

    public boolean g()
    {
        return f;
    }

    public SettingOperationResponse i()
    {
        return e;
    }
}
