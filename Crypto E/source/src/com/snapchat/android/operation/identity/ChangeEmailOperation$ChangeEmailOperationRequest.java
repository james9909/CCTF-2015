// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation.identity;

import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.operation.identity:
//            ChangeEmailOperation

public class a extends AuthPayload
{

    String a;
    final ChangeEmailOperation b;

    public (ChangeEmailOperation changeemailoperation, String s)
    {
        b = changeemailoperation;
        super();
        a = s;
    }
}