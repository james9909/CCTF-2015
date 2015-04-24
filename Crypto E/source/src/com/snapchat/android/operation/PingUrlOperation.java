// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.content.Context;
import android.content.Intent;
import com.snapchat.android.util.HttpUtils;

// Referenced classes of package com.snapchat.android.operation:
//            Operation

public class PingUrlOperation
    implements Operation
{

    private final Intent a;
    private final String b;

    public PingUrlOperation(Intent intent)
    {
        a = intent;
        b = intent.getStringExtra("url");
    }

    public Intent a()
    {
        return a;
    }

    public void a(Context context)
    {
        HttpUtils.b(b);
    }

    public void b(Context context)
    {
    }
}
