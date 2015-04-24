// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.debug.ExceptionReporter;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatWithFilter

public class ChatWithAdapter extends ArrayAdapter
    implements StickyListHeadersAdapter, com.snapchat.android.util.listview.ScFilter.ScFilterInterface
{
    static interface ChatWithSearchInterface
    {

        public abstract void a(List list);
    }

    public static class FriendViewHolder
    {

        TextView a;
        Friend b;

        protected FriendViewHolder()
        {
        }
    }

    static class HeaderViewHolder
    {

        TextView a;

        private HeaderViewHolder()
        {
        }

    }


    protected ExceptionReporter a;
    private final Context b;
    private final LayoutInflater c;
    private List d;
    private final List e;
    private final com.snapchat.android.model.Friend.FriendListSectionizer f;
    private final Filter g;
    private final ChatWithSearchInterface h;

    public ChatWithAdapter(Context context, List list, com.snapchat.android.model.Friend.FriendListSectionizer friendlistsectionizer, ChatWithSearchInterface chatwithsearchinterface)
    {
        super(context, 0x7f04002c, list);
        SnapchatApplication.e().a(this);
        b = context;
        c = (LayoutInflater)context.getSystemService("layout_inflater");
        d = list;
        e = list;
        f = friendlistsectionizer;
        g = new ChatWithFilter(e, a, this);
        h = chatwithsearchinterface;
    }

    public void a(List list)
    {
        if (list == null)
        {
            d = e;
        } else
        {
            d = list;
        }
        h.a(d);
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return d.size();
    }

    public Filter getFilter()
    {
        return g;
    }

    public long getHeaderId(int i)
    {
        Friend friend = (Friend)d.get(i);
        return (long)f.a(f.a(friend, i), friend, b).hashCode();
    }

    public View getHeaderView(int i, View view, ViewGroup viewgroup)
    {
        HeaderViewHolder headerviewholder;
        Friend friend;
        com.snapchat.android.util.FriendSectionizer.FriendSection friendsection;
        String s;
        if (view == null)
        {
            headerviewholder = new HeaderViewHolder();
            view = c.inflate(0x7f040008, viewgroup, false);
            if (view == null)
            {
                throw new NullPointerException();
            }
            headerviewholder.a = (TextView)view.findViewById(0x7f0a006d);
            view.setTag(headerviewholder);
        } else
        {
            headerviewholder = (HeaderViewHolder)view.getTag();
        }
        friend = (Friend)d.get(i);
        friendsection = f.a(friend, i);
        s = f.a(friendsection, friend, b);
        headerviewholder.a.setText(s);
        return view;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        FriendViewHolder friendviewholder;
        Friend friend;
        if (view == null)
        {
            view = c.inflate(0x7f04002c, viewgroup, false);
            friendviewholder = new FriendViewHolder();
            friendviewholder.a = (TextView)view.findViewById(0x7f0a004c);
            view.setTag(friendviewholder);
        } else
        {
            friendviewholder = (FriendViewHolder)view.getTag();
        }
        friend = (Friend)d.get(i);
        friendviewholder.a.setText(friend.o());
        friendviewholder.b = friend;
        return view;
    }
}
