// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import com.google.gson.Gson;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.util.GsonUtil;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.operation:
//            FindFriendsOperation

public class c extends AuthPayload
{

    String a;
    String b;
    final FindFriendsOperation c;

    public (FindFriendsOperation findfriendsoperation)
    {
        c = findfriendsoperation;
        super();
        a = GsonUtil.a().toJson(c.b);
        b = c.c.toUpperCase(Locale.US);
    }
}
