// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.os.Handler;
import android.os.Message;
import com.snapchat.android.model.FriendAction;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsAdapter

class a extends Handler
{

    final AddFriendsAdapter a;

    public void handleMessage(Message message)
    {
label0:
        {
            if (message.obj instanceof FriendAction)
            {
                FriendAction friendaction = (FriendAction)message.obj;
                switch (a[friendaction.ordinal()])
                {
                default:
                    super.handleMessage(message);
                    break;

                case 1: // '\001'
                case 2: // '\002'
                case 3: // '\003'
                case 4: // '\004'
                    break label0;
                }
            }
            return;
        }
        a.notifyDataSetChanged();
    }

    (AddFriendsAdapter addfriendsadapter)
    {
        a = addfriendsadapter;
        super();
    }
}
