// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


// Referenced classes of package com.snapchat.android.util.eventbus:
//            ReplyEventInterface

public class StoryReplyEvent
    implements ReplyEventInterface
{

    public String a;

    public StoryReplyEvent(String s)
    {
        a = s;
    }

    public int a()
    {
        return 3;
    }

    public boolean b()
    {
        return false;
    }
}
