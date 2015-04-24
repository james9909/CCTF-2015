// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.AuthPayload;

// Referenced classes of package com.snapchat.android.api2.cash:
//            MarkTransactionsAsViewedTask

class this._cls0 extends AuthPayload
{

    String conversationId;
    final MarkTransactionsAsViewedTask this$0;
    String transactionIds;

    ()
    {
        this$0 = MarkTransactionsAsViewedTask.this;
        super();
        transactionIds = MarkTransactionsAsViewedTask.a(MarkTransactionsAsViewedTask.this);
        conversationId = MarkTransactionsAsViewedTask.b(MarkTransactionsAsViewedTask.this);
    }
}
