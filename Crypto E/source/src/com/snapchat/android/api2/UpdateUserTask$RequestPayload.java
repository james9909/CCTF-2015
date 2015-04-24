// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.google.gson.Gson;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.GsonUtil;

// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload, UpdateUserTask

public class this._cls0 extends AuthPayload
{

    String clientProperties;
    String seenTooltips;
    final UpdateUserTask this$0;
    String username;

    public ()
    {
        this$0 = UpdateUserTask.this;
        super();
        username = UserPrefs.k();
        seenTooltips = GsonUtil.a().toJson(UpdateUserTask.a(UpdateUserTask.this));
        clientProperties = GsonUtil.a().toJson(UpdateUserTask.b(UpdateUserTask.this));
    }
}
