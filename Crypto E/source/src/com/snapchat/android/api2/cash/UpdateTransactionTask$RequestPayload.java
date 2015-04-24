// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.api2.cash:
//            UpdateTransactionTask

class this._cls0 extends AuthPayload
{

    String conversationId;
    Boolean saved;
    final UpdateTransactionTask this$0;
    String transactionId;
    Integer version;

    I()
    {
        this$0 = UpdateTransactionTask.this;
        super();
        transactionId = UpdateTransactionTask.a(UpdateTransactionTask.this);
        conversationId = UpdateTransactionTask.b(UpdateTransactionTask.this);
        saved = UpdateTransactionTask.c(UpdateTransactionTask.this);
        version = UpdateTransactionTask.d(UpdateTransactionTask.this);
    }
}
