// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation.identity;

import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.operation.identity:
//            ValidateEmailOperation

public class b extends AuthPayload
{

    String a;
    final ValidateEmailOperation b;

    public Y(ValidateEmailOperation validateemailoperation)
    {
        b = validateemailoperation;
        super();
        a = ValidateEmailOperation.a(b);
    }
}
