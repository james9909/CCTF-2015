// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;

public class DiscoverUserState
{

    private final ChannelPage a;
    private final DSnapPage b;

    public DiscoverUserState()
    {
        a = null;
        b = null;
    }

    public DiscoverUserState(ChannelPage channelpage, DSnapPage dsnappage)
    {
        a = channelpage;
        b = dsnappage;
    }

    public ChannelPage a()
    {
        return a;
    }

    public DSnapPage b()
    {
        return b;
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        Object obj;
        Object obj1;
        if (a != null)
        {
            obj = a;
        } else
        {
            obj = "None";
        }
        aobj[0] = obj;
        if (b != null)
        {
            obj1 = b;
        } else
        {
            obj1 = "None";
        }
        aobj[1] = obj1;
        return String.format("(%s, %s)", aobj);
    }
}
