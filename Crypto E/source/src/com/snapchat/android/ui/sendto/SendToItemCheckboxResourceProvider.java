// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.sendto;

import com.snapchat.android.fragments.sendto.SendToItem;
import com.snapchat.android.model.Friend;

public class SendToItemCheckboxResourceProvider
{

    public SendToItemCheckboxResourceProvider()
    {
    }

    private int a(Friend friend)
    {
        return !friend.v() || !friend.G() ? 0x7f0201bc : 0x7f0201ba;
    }

    public int a(SendToItem sendtoitem)
    {
        if (sendtoitem instanceof Friend)
        {
            return a((Friend)sendtoitem);
        } else
        {
            return 0x7f0201bc;
        }
    }
}
