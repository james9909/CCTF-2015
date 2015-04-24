// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.MyPostToStory;
import com.snapchat.android.model.PostToStory;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.sendto.SendToItemCheckboxResourceProvider;
import com.snapchat.android.ui.viewholders.SendToViewHolder;
import com.snapchat.android.util.debug.ExceptionReporter;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToItem, SendToFilter

public class SendToAdapter extends ArrayAdapter
    implements StickyListHeadersAdapter, com.snapchat.android.util.listview.ScFilter.ScFilterInterface
{
    class HeaderViewHolder
    {

        TextView a;
        final SendToAdapter b;

        HeaderViewHolder()
        {
            b = SendToAdapter.this;
            super();
        }
    }

    public static interface SendToCheckedCallback
    {

        public abstract void a(SendToItem sendtoitem, boolean flag);

        public abstract boolean a(SendToItem sendtoitem);
    }


    protected ExceptionReporter a;
    private final Context b;
    private final List c;
    private final LayoutInflater d;
    private final com.snapchat.android.model.Friend.FriendListSectionizer e;
    private final SendToItemCheckboxResourceProvider f;
    private final SendToCheckedCallback g;
    private List h;
    private Filter i;

    public SendToAdapter(Context context, int j, ArrayList arraylist, com.snapchat.android.model.Friend.FriendListSectionizer friendlistsectionizer, SendToCheckedCallback sendtocheckedcallback, SendToItemCheckboxResourceProvider sendtoitemcheckboxresourceprovider)
    {
        super(context, j, arraylist);
        SnapchatApplication.e().a(this);
        h = arraylist;
        c = (List)arraylist.clone();
        d = (LayoutInflater)context.getSystemService("layout_inflater");
        b = context;
        e = friendlistsectionizer;
        g = sendtocheckedcallback;
        f = sendtoitemcheckboxresourceprovider;
    }

    private void a(View view, SendToItem sendtoitem)
    {
        if ((sendtoitem instanceof PostToStory) && !(sendtoitem instanceof MyPostToStory))
        {
            view.setBackgroundColor(getContext().getResources().getColor(0x7f080044));
            return;
        }
        if (g.a(sendtoitem))
        {
            view.setBackgroundColor(getContext().getResources().getColor(0x7f080043));
            return;
        } else
        {
            view.setBackgroundDrawable(null);
            return;
        }
    }

    private void a(SendToViewHolder sendtoviewholder, SendToItem sendtoitem)
    {
        sendtoviewholder.a(sendtoitem.f());
        if ((sendtoitem instanceof Friend) && ((Friend)sendtoitem).a().equals(UserPrefs.k()))
        {
            sendtoviewholder.a((new StringBuilder()).append(sendtoitem.f()).append(getContext().getString(0x7f0c0126)).toString());
        }
    }

    private void b(View view, SendToItem sendtoitem)
    {
        SendToViewHolder sendtoviewholder = (SendToViewHolder)view.getTag();
        sendtoviewholder.c(f.a(sendtoitem));
        sendtoviewholder.v();
        sendtoviewholder.a(sendtoitem, g);
    }

    public void a(Friend friend)
    {
        if (c.indexOf(friend) == -1)
        {
            c.add(0, friend);
            h = c;
            notifyDataSetChanged();
        }
    }

    public void a(List list)
    {
        if (list == null)
        {
            h = c;
        } else
        {
            h = list;
        }
        notifyDataSetChanged();
    }

    public void b(Friend friend)
    {
        boolean flag;
        if (c.remove(friend) || h.remove(friend))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            notifyDataSetChanged();
        }
    }

    public int getCount()
    {
        return h.size();
    }

    public Filter getFilter()
    {
        if (i == null)
        {
            List list = User.a(b).s();
            i = new SendToFilter(c, list, a, this);
        }
        return i;
    }

    public long getHeaderId(int j)
    {
        SendToItem sendtoitem = (SendToItem)h.get(j);
        if (sendtoitem instanceof Friend)
        {
            Friend friend = (Friend)sendtoitem;
            return (long)e.a(e.a(friend, j), friend, b).hashCode();
        } else
        {
            return (long)getContext().getString(0x7f0c0201).hashCode();
        }
    }

    public View getHeaderView(int j, View view, ViewGroup viewgroup)
    {
        HeaderViewHolder headerviewholder;
        SendToItem sendtoitem;
        if (view == null)
        {
            headerviewholder = new HeaderViewHolder();
            view = d.inflate(0x7f040008, viewgroup, false);
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
        sendtoitem = (SendToItem)h.get(j);
        if (sendtoitem instanceof Friend)
        {
            Friend friend = (Friend)sendtoitem;
            com.snapchat.android.util.FriendSectionizer.FriendSection friendsection = e.a(friend, j);
            String s = e.a(friendsection, friend, b);
            headerviewholder.a.setText(s);
            if (friendsection == com.snapchat.android.util.FriendSectionizer.FriendSection.DEFAULT)
            {
                ((TextView)view.findViewById(0x7f0a006d)).setText(0x7f0c0124);
                return view;
            }
            if (friendsection == com.snapchat.android.util.FriendSectionizer.FriendSection.BLOCKED)
            {
                ((TextView)view.findViewById(0x7f0a006d)).setTextColor(0xffff0000);
                return view;
            } else
            {
                ((TextView)view.findViewById(0x7f0a006d)).setTextColor(b.getResources().getColor(0x7f080005));
                return view;
            }
        } else
        {
            headerviewholder.a.setText(getContext().getString(0x7f0c0201));
            return view;
        }
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        SendToViewHolder sendtoviewholder;
        SendToItem sendtoitem;
        if (view == null)
        {
            view = d.inflate(0x7f040077, viewgroup, false);
            sendtoviewholder = new SendToViewHolder(view);
            view.setTag(sendtoviewholder);
        } else
        {
            sendtoviewholder = (SendToViewHolder)view.getTag();
        }
        sendtoviewholder.t();
        sendtoitem = (SendToItem)h.get(j);
        if (sendtoitem != null)
        {
            a(sendtoviewholder, sendtoitem);
            if ((sendtoitem instanceof Friend) && ((Friend)sendtoitem).E())
            {
                sendtoviewholder.a(0x7f020072, com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.SEND, com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.USERNAME, com.snapchat.android.analytics.AnalyticsEvents.AnalyticsParent.SEND.name(), (Friend)sendtoitem);
            } else
            {
                b(view, sendtoitem);
                view.setOnClickListener(new android.view.View.OnClickListener(sendtoviewholder) {

                    final SendToViewHolder a;
                    final SendToAdapter b;

                    public void onClick(View view1)
                    {
                        a.u();
                    }

            
            {
                b = SendToAdapter.this;
                a = sendtoviewholder;
                super();
            }
                });
            }
            a(view, sendtoitem);
        }
        return view;
    }
}
