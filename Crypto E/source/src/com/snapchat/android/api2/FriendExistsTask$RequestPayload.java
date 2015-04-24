// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.model.Friend;

// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload, FriendExistsTask

public class this._cls0 extends AuthPayload
{

    String request_username;
    final FriendExistsTask this$0;

    public ()
    {
        this$0 = FriendExistsTask.this;
        super();
        request_username = FriendExistsTask.a(FriendExistsTask.this).a();
    }
}
