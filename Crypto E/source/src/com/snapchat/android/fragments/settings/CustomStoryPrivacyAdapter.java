// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Filter;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.ScTextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CustomStoryPrivacyAdapter extends ArrayAdapter
    implements StickyListHeadersAdapter
{
    public static interface FriendCheckedCallback
    {

        public abstract boolean a(Friend friend);

        public abstract void b(Friend friend);

        public abstract void c(Friend friend);
    }

    class FriendFilter extends Filter
    {

        final CustomStoryPrivacyAdapter a;

        private List a(String s)
        {
            if (s == null || s.length() == 0)
            {
                return CustomStoryPrivacyAdapter.b(a);
            }
            ArrayList arraylist = new ArrayList();
            Iterator iterator = CustomStoryPrivacyAdapter.c(a).iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Friend friend = (Friend)iterator.next();
                if (!friend.x() && ScTextUtils.a(true, friend.a(), s) || ScTextUtils.a(true, friend.b(), s))
                {
                    arraylist.add(friend);
                }
            } while (true);
            return arraylist;
        }

        protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
        {
            List list = a(charsequence.toString());
            android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
            filterresults.values = list;
            return filterresults;
        }

        protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
        {
            CustomStoryPrivacyAdapter.a(a, (List)filterresults.values);
            a.notifyDataSetChanged();
        }

        private FriendFilter()
        {
            a = CustomStoryPrivacyAdapter.this;
            super();
        }

    }

    class HeaderViewHolder
    {

        TextView a;
        final CustomStoryPrivacyAdapter b;

        HeaderViewHolder()
        {
            b = CustomStoryPrivacyAdapter.this;
            super();
        }
    }


    private Context a;
    private List b;
    private List c;
    private List d;
    private LayoutInflater e;
    private com.snapchat.android.model.Friend.FriendListSectionizer f;
    private Filter g;
    private FriendCheckedCallback h;

    public CustomStoryPrivacyAdapter(Context context, int i, ArrayList arraylist, com.snapchat.android.model.Friend.FriendListSectionizer friendlistsectionizer, FriendCheckedCallback friendcheckedcallback)
    {
        super(context, i, arraylist);
        b = arraylist;
        d = (List)arraylist.clone();
        c = User.c().s();
        e = (LayoutInflater)context.getSystemService("layout_inflater");
        a = context;
        f = friendlistsectionizer;
        h = friendcheckedcallback;
    }

    static FriendCheckedCallback a(CustomStoryPrivacyAdapter customstoryprivacyadapter)
    {
        return customstoryprivacyadapter.h;
    }

    static List a(CustomStoryPrivacyAdapter customstoryprivacyadapter, List list)
    {
        customstoryprivacyadapter.b = list;
        return list;
    }

    private void a(View view, Friend friend)
    {
        TextView textview = (TextView)view.findViewById(0x7f0a004c);
        if (textview == null || !friend.s()) goto _L2; else goto _L1
_L1:
        if (!friend.y()) goto _L4; else goto _L3
_L3:
        if (!friend.r_()) goto _L6; else goto _L5
_L5:
        textview.setText(friend.b());
_L2:
        return;
_L6:
        textview.setText(friend.a());
        return;
_L4:
        if (friend.r_())
        {
            textview.setText(friend.b());
        } else
        {
            textview.setText(friend.a());
        }
        if (friend.a().equals(UserPrefs.k()))
        {
            textview.append(getContext().getString(0x7f0c0126));
            return;
        }
        if (true) goto _L2; else goto _L7
_L7:
    }

    static List b(CustomStoryPrivacyAdapter customstoryprivacyadapter)
    {
        return customstoryprivacyadapter.d;
    }

    private void b(View view, Friend friend)
    {
        CheckBox checkbox = (CheckBox)view.findViewById(0x7f0a0169);
        if (checkbox == null)
        {
            return;
        }
        checkbox.setOnCheckedChangeListener(null);
        if (h.a(friend))
        {
            checkbox.setChecked(true);
        } else
        {
            checkbox.setChecked(false);
        }
        checkbox.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener(friend) {

            final Friend a;
            final CustomStoryPrivacyAdapter b;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (flag)
                {
                    CustomStoryPrivacyAdapter.a(b).b(a);
                    return;
                } else
                {
                    CustomStoryPrivacyAdapter.a(b).c(a);
                    return;
                }
            }

            
            {
                b = CustomStoryPrivacyAdapter.this;
                a = friend;
                super();
            }
        });
    }

    static List c(CustomStoryPrivacyAdapter customstoryprivacyadapter)
    {
        return customstoryprivacyadapter.c;
    }

    public int getCount()
    {
        return b.size();
    }

    public Filter getFilter()
    {
        if (g == null)
        {
            g = new FriendFilter();
        }
        return g;
    }

    public long getHeaderId(int i)
    {
        Friend friend = (Friend)b.get(i);
        return (long)f.a(f.a(friend, i), friend, a).hashCode();
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
            view = e.inflate(0x7f040054, viewgroup, false);
            headerviewholder.a = (TextView)view.findViewById(0x7f0a006d);
            view.setTag(headerviewholder);
        } else
        {
            headerviewholder = (HeaderViewHolder)view.getTag();
        }
        friend = (Friend)b.get(i);
        friendsection = f.a(friend, i);
        s = f.a(friendsection, friend, a);
        headerviewholder.a.setText(s);
        return view;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = e.inflate(0x7f04003b, viewgroup, false);
        }
        Friend friend = (Friend)b.get(i);
        if (friend != null)
        {
            a(view, friend);
            b(view, friend);
        }
        if (h.a(friend))
        {
            view.setBackgroundResource(0x7f080043);
            return view;
        } else
        {
            view.setBackgroundColor(-1);
            return view;
        }
    }
}
