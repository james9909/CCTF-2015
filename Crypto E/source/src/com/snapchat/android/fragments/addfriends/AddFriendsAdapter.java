// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.debug.ExceptionReporter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsViewHolder, AddFriendsFilter, SharedStorySearchResult, AddFriendsTextProvider

public class AddFriendsAdapter extends ArrayAdapter
    implements StickyListHeadersAdapter, com.snapchat.android.util.listview.ScFilter.ScFilterInterface
{
    public static interface AddFriendsAdapterInterface
    {

        public abstract boolean a(Friend friend);

        public abstract com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext getAnalyticsContext();

        public abstract String getAnalyticsParent();
    }

    class HeaderViewHolder
    {

        TextView a;
        View b;
        final AddFriendsAdapter c;

        HeaderViewHolder()
        {
            c = AddFriendsAdapter.this;
            super();
        }
    }

    public static class SelectionStatus
    {

        private Friend a;

        private void a()
        {
            a = null;
        }

        public boolean a(Friend friend)
        {
            return friend.equals(a);
        }

        public void b(Friend friend)
        {
            if (a(friend))
            {
                a();
                return;
            } else
            {
                a = friend;
                return;
            }
        }

        public SelectionStatus()
        {
        }
    }


    private boolean A;
    private boolean B;
    protected ExceptionReporter a;
    private final Handler b = new Handler() {

        final AddFriendsAdapter a;

        public void handleMessage(Message message)
        {
label0:
            {
                if (message.obj instanceof FriendAction)
                {
                    FriendAction friendaction = (FriendAction)message.obj;
                    switch (_cls3.a[friendaction.ordinal()])
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

            
            {
                a = AddFriendsAdapter.this;
                super();
            }
    };
    private final int c;
    private final Context d;
    private List e;
    private List f;
    private final LayoutInflater g;
    private FriendSectionizer h;
    private final AddFriendsAdapterInterface i;
    private AddFriendsFilter j;
    private Friend k;
    private HashSet l;
    private final Resources m;
    private final int n;
    private final int o;
    private AddFriendsTextProvider p;
    private final Provider q;
    private final SelectionStatus r = new SelectionStatus();
    private final Set s = new HashSet();
    private final Set t = new HashSet();
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    public AddFriendsAdapter(Context context, List list, FriendSectionizer friendsectionizer, AddFriendsAdapterInterface addfriendsadapterinterface, boolean flag, AddFriendsTextProvider addfriendstextprovider, Provider provider)
    {
        super(context, 0x7f040001, list);
        k = null;
        l = new HashSet();
        y = false;
        z = false;
        A = false;
        B = false;
        SnapchatApplication.e().a(this);
        d = context;
        f = list;
        e = list;
        g = (LayoutInflater)context.getSystemService("layout_inflater");
        h = friendsectionizer;
        i = addfriendsadapterinterface;
        int i1;
        if (flag)
        {
            i1 = 0x7f020072;
        } else
        {
            i1 = 0x7f020073;
        }
        c = i1;
        m = d.getResources();
        n = m.getColor(0x7f080028);
        o = m.getColor(0x7f080029);
        p = addfriendstextprovider;
        q = provider;
    }

    private String a(Friend friend, int i1)
    {
        com.snapchat.android.util.FriendSectionizer.FriendSection friendsection = h.a(friend, i1);
        return h.a(friendsection, friend, d);
    }

    static Set a(AddFriendsAdapter addfriendsadapter)
    {
        return addfriendsadapter.s;
    }

    static Set b(AddFriendsAdapter addfriendsadapter)
    {
        return addfriendsadapter.t;
    }

    static List c(AddFriendsAdapter addfriendsadapter)
    {
        return addfriendsadapter.e;
    }

    static Context d(AddFriendsAdapter addfriendsadapter)
    {
        return addfriendsadapter.d;
    }

    public int a()
    {
        return l.size();
    }

    public void a(int i1)
    {
        if (i1 < getCount() && i1 >= 0)
        {
            Friend friend = (Friend)getItem(i1);
            if (friend != null)
            {
                r.b(friend);
                notifyDataSetChanged();
            }
        }
    }

    public void a(View view, int i1, boolean flag)
    {
        Friend friend;
        Object obj;
        if (flag)
        {
            friend = null;
        } else
        {
            friend = (Friend)getItem(i1);
        }
        k = friend;
        obj = view.getTag();
        if (obj instanceof AddFriendsViewHolder)
        {
            AddFriendsViewHolder addfriendsviewholder = (AddFriendsViewHolder)obj;
            boolean flag1;
            if (!flag)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            addfriendsviewholder.b(flag1);
        }
        notifyDataSetChanged();
    }

    public void a(AddFriendsTextProvider addfriendstextprovider)
    {
        p = addfriendstextprovider;
    }

    public void a(AddFriendsViewHolder addfriendsviewholder, Friend friend, FriendAction friendaction)
    {
        (new FriendActionTask(friend, friendaction, friendaction, friend, addfriendsviewholder) {

            final FriendAction a;
            final Friend b;
            final AddFriendsViewHolder c;
            final AddFriendsAdapter d;

            protected void a(ServerResponse serverresponse)
            {
                super.a(serverresponse);
                static class _cls3
                {

                    static final int a[];

                    static 
                    {
                        a = new int[FriendAction.values().length];
                        try
                        {
                            a[FriendAction.DELETE.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror) { }
                        try
                        {
                            a[FriendAction.UNBLOCK.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            a[FriendAction.SET_DISPLAY_NAME.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror2) { }
                        try
                        {
                            a[FriendAction.BLOCK.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror3) { }
                        try
                        {
                            a[FriendAction.HIDE.ordinal()] = 5;
                        }
                        catch (NoSuchFieldError nosuchfielderror4) { }
                        try
                        {
                            a[FriendAction.IGNORE.ordinal()] = 6;
                        }
                        catch (NoSuchFieldError nosuchfielderror5)
                        {
                            return;
                        }
                    }
                }

                switch (_cls3.a[a.ordinal()])
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

            protected void a(String s1, int i1)
            {
                super.a(s1, i1);
                switch (_cls3.a[a.ordinal()])
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
                c.a(new Runnable(this) {

                    final _cls2 a;

                    public void run()
                    {
                        _cls3.a[a.a.ordinal()];
                        JVM INSTR tableswitch 4 4: default 32
                    //                                   4 43;
                           goto _L1 _L2
_L1:
                        a.d.notifyDataSetChanged();
                        return;
_L2:
                        AddFriendsAdapter.c(a.d).remove(a.b);
                        if (true) goto _L1; else goto _L3
_L3:
                    }

            
            {
                a = _pcls2;
                super();
            }
                });
            }

            protected void onPostExecute(Object obj)
            {
                a((ServerResponse)obj);
            }

            protected void onPreExecute()
            {
                super.onPreExecute();
                switch (_cls3.a[a.ordinal()])
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
                d = AddFriendsAdapter.this;
                a = friendaction1;
                b = friend1;
                c = addfriendsviewholder;
                super(friend, friendaction);
            }
        }).a(b()).a(com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.USERNAME).executeOnExecutor(ScExecutors.b, new String[0]);
    }

    public void a(Friend friend)
    {
        if (r.a(friend))
        {
            r.b(friend);
        }
        notifyDataSetChanged();
    }

    public void a(FriendSectionizer friendsectionizer)
    {
        h = friendsectionizer;
    }

    public void a(List list)
    {
        if (list == null)
        {
            e = f;
        } else
        {
            e = list;
        }
        notifyDataSetChanged();
    }

    public void a(boolean flag)
    {
        u = flag;
    }

    public com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext b()
    {
        return i.getAnalyticsContext();
    }

    public void b(boolean flag)
    {
        v = flag;
    }

    public String c()
    {
        if (j == null)
        {
            return null;
        } else
        {
            return j.a();
        }
    }

    public void c(boolean flag)
    {
        w = flag;
    }

    public void d(boolean flag)
    {
        A = flag;
    }

    public void e(boolean flag)
    {
        x = flag;
    }

    public void f(boolean flag)
    {
        y = flag;
    }

    public void g(boolean flag)
    {
        z = flag;
    }

    public int getCount()
    {
        if (e == null)
        {
            return 0;
        } else
        {
            return e.size();
        }
    }

    public Filter getFilter()
    {
        if (j == null)
        {
            j = new AddFriendsFilter(f, a, this);
        }
        j.a(u);
        j.b(v);
        j.c(w);
        j.d(x);
        return j;
    }

    public long getHeaderId(int i1)
    {
        Friend friend = (Friend)e.get(i1);
        if (friend instanceof SharedStorySearchResult)
        {
            return (long)"shared story".hashCode();
        } else
        {
            return (long)a(friend, i1).hashCode();
        }
    }

    public View getHeaderView(int i1, View view, ViewGroup viewgroup)
    {
        HeaderViewHolder headerviewholder;
        Friend friend;
        String s1;
        if (view == null)
        {
            headerviewholder = new HeaderViewHolder();
            view = g.inflate(0x7f040070, viewgroup, false);
            headerviewholder.a = (TextView)view.findViewById(0x7f0a006d);
            headerviewholder.b = view.findViewById(0x7f0a006e);
            view.setTag(headerviewholder);
        } else
        {
            headerviewholder = (HeaderViewHolder)view.getTag();
        }
        friend = (Friend)e.get(i1);
        s1 = a(friend, i1);
        if ((friend instanceof SharedStorySearchResult) || TextUtils.isEmpty(s1))
        {
            headerviewholder.a.setVisibility(8);
            headerviewholder.b.setVisibility(8);
            return view;
        } else
        {
            headerviewholder.a.setVisibility(0);
            headerviewholder.b.setVisibility(0);
            headerviewholder.a.setText(s1);
            return view;
        }
    }

    public View getView(int i1, View view, ViewGroup viewgroup)
    {
        Friend friend = (Friend)e.get(i1);
        if (friend == null)
        {
            return view;
        }
        AddFriendsViewHolder addfriendsviewholder;
        View view1;
        if (view == null)
        {
            View view2 = g.inflate(0x7f040001, viewgroup, false);
            if (view2 == null)
            {
                throw new RuntimeException("Failed to inflate add_friends_item");
            }
            addfriendsviewholder = new AddFriendsViewHolder(this, view2, g, s, t, B, y, z, p, r, q);
            view2.setTag(addfriendsviewholder);
            view1 = view2;
        } else
        {
            addfriendsviewholder = (AddFriendsViewHolder)view.getTag();
            view1 = view;
        }
        addfriendsviewholder.e(A);
        addfriendsviewholder.u = i1;
        if (friend instanceof SharedStorySearchResult)
        {
            addfriendsviewholder.a(view1, (SharedStorySearchResult)friend, i, c, f);
        } else
        {
            Friend friend1 = k;
            int j1 = o;
            int k1 = n;
            int l1 = c;
            List list = f;
            AddFriendsAdapterInterface addfriendsadapterinterface = i;
            HashSet hashset = l;
            addfriendsviewholder.a(friend, friend1, j1, k1, l1, list, addfriendsadapterinterface, hashset);
        }
        addfriendsviewholder.a(friend, i1, b.obtainMessage());
        return view1;
    }

    public void h(boolean flag)
    {
        B = flag;
    }
}
