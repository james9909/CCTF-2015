// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;


// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload, HideSharedStoryTask

public class hide extends AuthPayload
{

    final String friend;
    final boolean hide;
    final HideSharedStoryTask this$0;

    ()
    {
        this$0 = HideSharedStoryTask.this;
        super();
        friend = HideSharedStoryTask.a(HideSharedStoryTask.this);
        hide = HideSharedStoryTask.b(HideSharedStoryTask.this);
    }
}
