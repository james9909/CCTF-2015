// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.view.View;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.AlertDialogUtils;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            BlockedUsersAdapter

class a
    implements com.snapchat.android.util.ertListener
{

    final a a;

    public void a(com.snapchat.android.util.tion tion)
    {
        if (tion == com.snapchat.android.util.tion.a)
        {
            BlockedUsersAdapter.a(a.a, a.a, a.a);
        }
    }

    Holder(Holder holder)
    {
        a = holder;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/BlockedUsersAdapter$1

/* anonymous class */
    class BlockedUsersAdapter._cls1
        implements android.view.View.OnClickListener
    {

        final BlockedUsersAdapter.ViewHolder a;
        final Friend b;
        final BlockedUsersAdapter c;

        public void onClick(View view)
        {
            AlertDialogUtils.a(BlockedUsersAdapter.a(c), null, BlockedUsersAdapter.b(c), new BlockedUsersAdapter._cls1._cls1(this));
        }

            
            {
                c = blockedusersadapter;
                a = viewholder;
                b = friend;
                super();
            }
    }

}
