// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation.identity;

import android.text.TextUtils;
import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.operation.identity:
//            SettingsOperation

public class b extends AuthPayload
{

    String a;
    String b;
    String c;
    final SettingsOperation d;

    public (SettingsOperation settingsoperation, String s, String s1, String s2)
    {
        d = settingsoperation;
        super();
        a = s;
        if (TextUtils.equals(a, "pwConfirmPhoneNumber"))
        {
            c = s1;
            b = s2;
        }
    }
}
