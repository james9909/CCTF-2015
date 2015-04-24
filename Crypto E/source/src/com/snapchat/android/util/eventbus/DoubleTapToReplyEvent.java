// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


// Referenced classes of package com.snapchat.android.util.eventbus:
//            ReplyEventInterface

public class DoubleTapToReplyEvent
    implements ReplyEventInterface
{

    public String a;
    public int b;

    public DoubleTapToReplyEvent(String s, int i)
    {
        a = s;
        b = i;
    }

    public int a()
    {
        return b;
    }

    public boolean b()
    {
        return true;
    }
}
