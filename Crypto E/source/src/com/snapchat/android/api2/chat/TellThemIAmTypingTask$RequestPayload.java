// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;

import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.util.GsonWrapper;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.chat:
//            TellThemIAmTypingTask

public class recipientUsernames extends AuthPayload
{

    private String recipientUsernames;
    final TellThemIAmTypingTask this$0;

    public I(List list)
    {
        this$0 = TellThemIAmTypingTask.this;
        super();
        recipientUsernames = TellThemIAmTypingTask.a(TellThemIAmTypingTask.this).a(list);
    }
}
