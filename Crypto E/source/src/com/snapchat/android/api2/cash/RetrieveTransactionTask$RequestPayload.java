// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.api2.cash:
//            RetrieveTransactionTask

class this._cls0 extends AuthPayload
{

    String conversationId;
    final RetrieveTransactionTask this$0;
    String transactionId;

    ()
    {
        this$0 = RetrieveTransactionTask.this;
        super();
        transactionId = RetrieveTransactionTask.a(RetrieveTransactionTask.this);
        conversationId = RetrieveTransactionTask.b(RetrieveTransactionTask.this);
    }
}
