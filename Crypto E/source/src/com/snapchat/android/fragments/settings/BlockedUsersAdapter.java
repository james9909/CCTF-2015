// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.ScExecutors;
import java.util.List;

public class BlockedUsersAdapter extends android.support.v7.widget.RecyclerView.Adapter
{
    public static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder
    {

        public TextView i;
        public View j;
        public View k;

        public void t()
        {
            j.setVisibility(8);
            k.setVisibility(0);
        }

        public void u()
        {
            j.setVisibility(0);
            k.setVisibility(8);
        }

        public ViewHolder(View view)
        {
            super(view);
            i = (TextView)view.findViewById(0x7f0a006a);
            j = view.findViewById(0x7f0a006b);
            k = view.findViewById(0x7f0a006c);
        }
    }


    private final Context a;
    private final List b;
    private final String c;

    public BlockedUsersAdapter(Context context, List list)
    {
        a = context;
        b = list;
        c = a.getString(0x7f0c00c7);
    }

    static Context a(BlockedUsersAdapter blockedusersadapter)
    {
        return blockedusersadapter.a;
    }

    private void a(ViewHolder viewholder, Friend friend)
    {
        viewholder.t();
        (new FriendActionTask(friend, FriendAction.UNBLOCK, viewholder, friend) {

            final ViewHolder a;
            final Friend b;
            final BlockedUsersAdapter c;

            protected void a(ServerResponse serverresponse)
            {
                super.a(serverresponse);
                a.u();
            }

            protected void a(String s, int i)
            {
                AlertDialogUtils.a(0x7f0c00f1, BlockedUsersAdapter.a(c));
            }

            protected void b(ServerResponse serverresponse)
            {
                super.b(serverresponse);
                int i = BlockedUsersAdapter.c(c).indexOf(b);
                c.d(i);
                UserPrefs.ak();
            }

            protected void onPostExecute(Object obj)
            {
                a((ServerResponse)obj);
            }

            
            {
                c = BlockedUsersAdapter.this;
                a = viewholder;
                b = friend1;
                super(friend, friendaction);
            }
        }).a(com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.SETTINGS).executeOnExecutor(ScExecutors.b, new String[0]);
    }

    static void a(BlockedUsersAdapter blockedusersadapter, ViewHolder viewholder, Friend friend)
    {
        blockedusersadapter.a(viewholder, friend);
    }

    static String b(BlockedUsersAdapter blockedusersadapter)
    {
        return blockedusersadapter.c;
    }

    static List c(BlockedUsersAdapter blockedusersadapter)
    {
        return blockedusersadapter.b;
    }

    public int a()
    {
        return b.size();
    }

    public android.support.v7.widget.RecyclerView.ViewHolder a(ViewGroup viewgroup, int i)
    {
        return c(viewgroup, i);
    }

    public volatile void a(android.support.v7.widget.RecyclerView.ViewHolder viewholder, int i)
    {
        a((ViewHolder)viewholder, i);
    }

    public void a(ViewHolder viewholder, int i)
    {
        Friend friend = (Friend)b.get(i);
        viewholder.i.setText(friend.o());
        viewholder.j.setOnClickListener(new android.view.View.OnClickListener(viewholder, friend) {

            final ViewHolder a;
            final Friend b;
            final BlockedUsersAdapter c;

            public void onClick(View view)
            {
                AlertDialogUtils.a(BlockedUsersAdapter.a(c), null, BlockedUsersAdapter.b(c), new com.snapchat.android.util.AlertDialogUtils.YesNoAlertListener(this) {

                    final _cls1 a;

                    public void a(com.snapchat.android.util.AlertDialogUtils.YesNoOption yesnooption)
                    {
                        if (yesnooption == com.snapchat.android.util.AlertDialogUtils.YesNoOption.a)
                        {
                            BlockedUsersAdapter.a(a.c, a.a, a.b);
                        }
                    }

            
            {
                a = _pcls1;
                super();
            }
                });
            }

            
            {
                c = BlockedUsersAdapter.this;
                a = viewholder;
                b = friend;
                super();
            }
        });
    }

    public ViewHolder c(ViewGroup viewgroup, int i)
    {
        return new ViewHolder(LayoutInflater.from(viewgroup.getContext()).inflate(0x7f040007, viewgroup, false));
    }

    protected void d(int i)
    {
        if (i >= 0 && i < a())
        {
            b.remove(i);
            c(i);
            return;
        } else
        {
            c();
            return;
        }
    }
}
