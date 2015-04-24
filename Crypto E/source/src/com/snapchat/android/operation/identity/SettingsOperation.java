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

public class SettingsOperation extends BasicScRequestOperation
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public class SettingsOperationRequest extends AuthPayload
    {

        String a;
        String b;
        String c;
        final SettingsOperation d;

        public SettingsOperationRequest(String s, String s1, String s2)
        {
            d = SettingsOperation.this;
            super();
            a = s;
            if (TextUtils.equals(a, "pwConfirmPhoneNumber"))
            {
                c = s1;
                b = s2;
            }
        }
    }

    public class SettingsOperationResponse
    {

        boolean a;
        String b;
    }

    public class SettingsOperationsResult
    {

        public boolean a;
        public final String b;
        public final String c;
        public final String d;
        final SettingsOperation e;

        public SettingsOperationsResult(boolean flag, String s, String s1, String s2)
        {
            e = SettingsOperation.this;
            super();
            a = flag;
            b = s;
            c = s1;
            d = s2;
        }
    }


    public SettingsOperationsResult b;
    private final String c;
    private final String e;
    private final String f;
    private final UserPrefs g;

    public SettingsOperation(Intent intent)
    {
        this(intent, UserPrefs.a());
    }

    protected SettingsOperation(Intent intent, UserPrefs userprefs)
    {
        super(intent);
        g = userprefs;
        c = intent.getStringExtra("action");
        e = intent.getStringExtra("param");
        f = intent.getStringExtra("password");
        a(com/snapchat/android/operation/identity/SettingsOperation$SettingsOperationResponse, this);
    }

    private void a(SettingsOperationsResult settingsoperationsresult)
    {
        String s;
        byte byte0;
        s = c;
        byte0 = -1;
        s.hashCode();
        JVM INSTR lookupswitch 2: default 36
    //                   -1972488541: 75
    //                   1412610526: 61;
           goto _L1 _L2 _L3
_L1:
        byte0;
        JVM INSTR tableswitch 0 1: default 60
    //                   0 89
    //                   1 101;
           goto _L4 _L5 _L6
_L4:
        return;
_L3:
        if (s.equals("pwConfirmPhoneNumber"))
        {
            byte0 = 0;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (s.equals("verifyEmail"))
        {
            byte0 = 1;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        g.D(settingsoperationsresult.a);
        return;
_L6:
        if (!settingsoperationsresult.a || !TextUtils.isEmpty(g.aL())) goto _L4; else goto _L7
_L7:
        UserPrefs userprefs = g;
        g;
        userprefs.u(UserPrefs.v());
        return;
        if (true) goto _L1; else goto _L8
_L8:
    }

    public void a(SettingsOperationResponse settingsoperationresponse, NetworkResult networkresult)
    {
        if (networkresult.h() && settingsoperationresponse != null)
        {
            b = new SettingsOperationsResult(PrimitiveUtils.a(Boolean.valueOf(settingsoperationresponse.a)), c, e, settingsoperationresponse.b);
        } else
        {
            b = new SettingsOperationsResult(false, c, e, LocalizationUtils.a(0x7f0c0164, new Object[0]));
        }
        a(b);
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((SettingsOperationResponse)obj, networkresult);
    }

    public Object b()
    {
        return new SettingsOperationRequest(c, e, f);
    }

    protected String e()
    {
        return "/ph/settings";
    }

    public SettingsOperationsResult g()
    {
        return b;
    }
}
