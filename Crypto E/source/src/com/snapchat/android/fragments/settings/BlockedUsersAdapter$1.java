// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.view.View;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.AlertDialogUtils;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            BlockedUsersAdapter

class b
    implements android.view.ings.BlockedUsersAdapter._cls1
{

    final ewHolder a;
    final Friend b;
    final BlockedUsersAdapter c;

    public void onClick(View view)
    {
        AlertDialogUtils.a(BlockedUsersAdapter.a(c), null, BlockedUsersAdapter.b(c), new com.snapchat.android.util.AlertDialogUtils.YesNoAlertListener() {

            final BlockedUsersAdapter._cls1 a;

            public void a(com.snapchat.android.util.AlertDialogUtils.YesNoOption yesnooption)
            {
                if (yesnooption == com.snapchat.android.util.AlertDialogUtils.YesNoOption.a)
                {
                    BlockedUsersAdapter.a(a.c, a.a, a.b);
                }
            }

            
            {
                a = BlockedUsersAdapter._cls1.this;
                super();
            }
        });
    }

    ewHolder(BlockedUsersAdapter blockedusersadapter, ewHolder ewholder, Friend friend)
    {
        c = blockedusersadapter;
        a = ewholder;
        b = friend;
        super();
    }
}
