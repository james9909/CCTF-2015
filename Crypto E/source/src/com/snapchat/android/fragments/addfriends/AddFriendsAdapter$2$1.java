// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsAdapter, AddFriendsViewHolder

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        a[a.a.ordinal()];
        JVM INSTR tableswitch 4 4: default 32
    //                   4 43;
           goto _L1 _L2
_L1:
        a.a.notifyDataSetChanged();
        return;
_L2:
        AddFriendsAdapter.c(a.a).remove(a.a);
        if (true) goto _L1; else goto _L3
_L3:
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/addfriends/AddFriendsAdapter$2

/* anonymous class */
    class AddFriendsAdapter._cls2 extends FriendActionTask
    {

        final FriendAction a;
        final Friend b;
        final AddFriendsViewHolder c;
        final AddFriendsAdapter d;

        protected void a(ServerResponse serverresponse)
        {
            super.a(serverresponse);
            switch (AddFriendsAdapter._cls3.a[a.ordinal()])
            {
            default:
                return;

            case 4: // '\004'
                AddFriendsAdapter.a(d).remove(b);
                c.a(b);
                return;

            case 5: // '\005'
            case 6: // '\006'
                AddFriendsAdapter.b(d).remove(b);
                break;
            }
            c.b(b);
        }

        protected void a(String s, int i)
        {
            super.a(s, i);
            switch (AddFriendsAdapter._cls3.a[a.ordinal()])
            {
            default:
                return;

            case 4: // '\004'
                AlertDialogUtils.a(0x7f0c00ef, AddFriendsAdapter.d(d));
                break;
            }
        }

        protected void b(ServerResponse serverresponse)
        {
            super.b(serverresponse);
            c.a(new AddFriendsAdapter._cls2._cls1(this));
        }

        protected void onPostExecute(Object obj)
        {
            a((ServerResponse)obj);
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            switch (AddFriendsAdapter._cls3.a[a.ordinal()])
            {
            default:
                return;

            case 4: // '\004'
                AddFriendsAdapter.a(d).add(b);
                c.a(b);
                return;

            case 5: // '\005'
            case 6: // '\006'
                AddFriendsAdapter.b(d).add(b);
                break;
            }
            c.b(b);
        }

            
            {
                d = addfriendsadapter;
                a = friendaction1;
                b = friend1;
                c = addfriendsviewholder;
                super(friend, friendaction);
            }
    }

}
