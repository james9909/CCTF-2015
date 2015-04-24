// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.api2.framework.BasicScRequestTask;

// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload

public class HideSharedStoryTask extends BasicScRequestTask
{
    public class RequestPayload extends AuthPayload
    {

        final String friend;
        final boolean hide;
        final HideSharedStoryTask this$0;

        RequestPayload()
        {
            this$0 = HideSharedStoryTask.this;
            super();
            friend = HideSharedStoryTask.a(HideSharedStoryTask.this);
            hide = HideSharedStoryTask.b(HideSharedStoryTask.this);
        }
    }


    private final String mFriend;
    private final boolean mHide;

    public HideSharedStoryTask(String s)
    {
        this(s, true);
    }

    public HideSharedStoryTask(String s, boolean flag)
    {
        mFriend = s;
        mHide = flag;
    }

    static String a(HideSharedStoryTask hidesharedstorytask)
    {
        return hidesharedstorytask.mFriend;
    }

    static boolean b(HideSharedStoryTask hidesharedstorytask)
    {
        return hidesharedstorytask.mHide;
    }

    public Object b()
    {
        return e();
    }

    protected String d()
    {
        return "/loq/friend_hide";
    }

    public RequestPayload e()
    {
        return new RequestPayload();
    }
}
