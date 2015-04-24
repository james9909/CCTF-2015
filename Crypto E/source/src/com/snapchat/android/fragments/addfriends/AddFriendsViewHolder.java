// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendProfileInfo;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.dialog.OneButtonDialog;
import com.snapchat.android.ui.viewholders.AddFriendViewHolder;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.TelephonyUtils;
import com.snapchat.android.util.ViewUtils;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            SharedStorySearchResult, AddFriendsAdapter, AddFriendsTextProvider

public class AddFriendsViewHolder extends AddFriendViewHolder
{

    private final Set A;
    private final boolean B;
    private final boolean C;
    private final boolean D;
    private final AddFriendsTextProvider E;
    private final AddFriendsAdapter.SelectionStatus F;
    private final Provider G;
    final RelativeLayout i;
    final CheckBox j;
    final TextView k;
    final Button l;
    final View m;
    final Button n;
    final View o;
    final Button p;
    final Button q;
    final Button r;
    final View s;
    final View t;
    int u;
    private final LayoutInflater v;
    private final AddFriendsAdapter w;
    private final View x;
    private final Context y;
    private final Set z;

    public AddFriendsViewHolder(AddFriendsAdapter addfriendsadapter, View view, LayoutInflater layoutinflater, Set set, Set set1, boolean flag, boolean flag1, 
            boolean flag2, AddFriendsTextProvider addfriendstextprovider, AddFriendsAdapter.SelectionStatus selectionstatus, Provider provider)
    {
        super(view);
        w = addfriendsadapter;
        x = view;
        v = layoutinflater;
        y = view.getContext();
        z = set;
        A = set1;
        D = flag;
        B = flag1;
        C = flag2;
        E = addfriendstextprovider;
        F = selectionstatus;
        G = provider;
        i = (RelativeLayout)view.findViewById(0x7f0a0044);
        l = (Button)view.findViewById(0x7f0a0047);
        j = (CheckBox)view.findViewById(0x7f0a0049);
        k = (TextView)view.findViewById(0x7f0a004d);
        m = view.findViewById(0x7f0a0046);
        n = (Button)view.findViewById(0x7f0a004b);
        o = view.findViewById(0x7f0a003e);
        p = (Button)view.findViewById(0x7f0a003f);
        q = (Button)view.findViewById(0x7f0a0041);
        r = (Button)view.findViewById(0x7f0a0042);
        s = view.findViewById(0x7f0a0040);
        t = view.findViewById(0x7f0a0043);
    }

    static View a(AddFriendsViewHolder addfriendsviewholder)
    {
        return addfriendsviewholder.x;
    }

    private void a(Friend friend, int i1, AddFriendsAdapter.AddFriendsAdapterInterface addfriendsadapterinterface, Set set)
    {
        z();
        A();
        j.setVisibility(0);
        j.setBackgroundResource(i1);
        j.setChecked(set.contains(friend.u()));
        j.setOnClickListener(new android.view.View.OnClickListener(friend, set, addfriendsadapterinterface) {

            final Friend a;
            final Set b;
            final AddFriendsAdapter.AddFriendsAdapterInterface c;
            final AddFriendsViewHolder d;

            public void onClick(View view)
            {
                d.j.setChecked(true);
                String s1 = a.u();
                Context context = AddFriendsViewHolder.d(d);
                Object aobj[] = new Object[1];
                aobj[0] = UserPrefs.k();
                String s2 = context.getString(0x7f0c0110, aobj);
                TelephonyUtils.a(AddFriendsViewHolder.d(d), s1, s2);
                if (!b.contains(s1))
                {
                    b.add(s1);
                    AnalyticsEvents.a(FriendAction.INVITE, c.getAnalyticsContext().name(), a, com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.CONTACTS, c.getAnalyticsParent());
                    ProfileEventAnalytics.a(a.b(), a.u());
                    if (RegistrationAnalytics.a())
                    {
                        AnalyticsEvents.m(a.u());
                    }
                }
            }

            
            {
                d = AddFriendsViewHolder.this;
                a = friend;
                b = set;
                c = addfriendsadapterinterface;
                super();
            }
        });
    }

    private void a(Friend friend, Message message)
    {
        n.setOnClickListener(new android.view.View.OnClickListener(friend, message) {

            final Friend a;
            final Message b;
            final AddFriendsViewHolder c;

            public void onClick(View view)
            {
                ViewUtils.a(AddFriendsViewHolder.d(c), view.getRootView());
                AlertDialogUtils.a(AddFriendsViewHolder.d(c), a, b, AddFriendsViewHolder.c(c).b(), AddFriendsViewHolder.e(c));
            }

            
            {
                c = AddFriendsViewHolder.this;
                a = friend;
                b = message;
                super();
            }
        });
    }

    private void a(Friend friend, Friend friend1, int i1, List list, AddFriendsAdapter.AddFriendsAdapterInterface addfriendsadapterinterface)
    {
        j.setVisibility(8);
        a(friend);
        b(friend);
        p.setOnClickListener(new android.view.View.OnClickListener(friend) {

            final Friend a;
            final AddFriendsViewHolder b;

            public void onClick(View view)
            {
                AddFriendsViewHolder.c(b).a(b, a, FriendAction.BLOCK);
            }

            
            {
                b = AddFriendsViewHolder.this;
                a = friend;
                super();
            }
        });
        q.setOnClickListener(new android.view.View.OnClickListener(friend) {

            final Friend a;
            final AddFriendsViewHolder b;

            public void onClick(View view)
            {
                AddFriendsViewHolder.c(b).a(b, a, FriendAction.HIDE);
            }

            
            {
                b = AddFriendsViewHolder.this;
                a = friend;
                super();
            }
        });
        r.setOnClickListener(new android.view.View.OnClickListener(friend) {

            final Friend a;
            final AddFriendsViewHolder b;

            public void onClick(View view)
            {
                AddFriendsViewHolder.c(b).a(b, a, FriendAction.IGNORE);
            }

            
            {
                b = AddFriendsViewHolder.this;
                a = friend;
                super();
            }
        });
        boolean flag = friend.equals(friend1);
        b(flag);
        if (!flag)
        {
            a(((Runnable) (null)));
        }
        a(i1, addfriendsadapterinterface.getAnalyticsContext(), d(friend), addfriendsadapterinterface.getAnalyticsParent(), friend);
    }

    static AddFriendsAdapter.SelectionStatus b(AddFriendsViewHolder addfriendsviewholder)
    {
        return addfriendsviewholder.F;
    }

    static AddFriendsAdapter c(AddFriendsViewHolder addfriendsviewholder)
    {
        return addfriendsviewholder.w;
    }

    private void c(boolean flag)
    {
        byte byte0 = 8;
        Button button = n;
        int i1;
        View view;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = byte0;
        }
        button.setVisibility(i1);
        view = m;
        if (!flag)
        {
            byte0 = 0;
        }
        view.setVisibility(byte0);
    }

    static Context d(AddFriendsViewHolder addfriendsviewholder)
    {
        return addfriendsviewholder.y;
    }

    static boolean e(AddFriendsViewHolder addfriendsviewholder)
    {
        return addfriendsviewholder.C;
    }

    private boolean e(Friend friend)
    {
        return friend.e() || FriendUtils.e(friend.a(), User.c());
    }

    private void u()
    {
        n.setVisibility(8);
        m.setVisibility(8);
    }

    public void a(View view, SharedStorySearchResult sharedstorysearchresult, AddFriendsAdapter.AddFriendsAdapterInterface addfriendsadapterinterface, int i1, List list)
    {
        a(sharedstorysearchresult.b());
        o.setVisibility(8);
        view.setBackgroundDrawable(null);
        l.setOnClickListener(new android.view.View.OnClickListener(sharedstorysearchresult) {

            final SharedStorySearchResult a;
            final AddFriendsViewHolder b;

            public void onClick(View view1)
            {
                String s1 = a.d();
                if (s1 == null)
                {
                    Object aobj[] = new Object[1];
                    aobj[0] = a.b();
                    s1 = LocalizationUtils.a(0x7f0c0018, aobj);
                }
                (new OneButtonDialog(this, AddFriendsViewHolder.d(b), s1) {

                    final _cls5 a;

                    protected void a()
                    {
                    }

            
            {
                a = _pcls5;
                super(context, s1);
            }
                }).show();
            }

            
            {
                b = AddFriendsViewHolder.this;
                a = sharedstorysearchresult;
                super();
            }
        });
        l.setVisibility(0);
        j.setVisibility(8);
        a(i1, addfriendsadapterinterface.getAnalyticsContext(), d(sharedstorysearchresult), addfriendsadapterinterface.getAnalyticsParent(), ((Friend) (sharedstorysearchresult)));
    }

    public void a(Friend friend)
    {
        byte byte0 = 8;
        boolean flag = z.contains(friend);
        View view = s;
        int i1;
        Button button;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = byte0;
        }
        view.setVisibility(i1);
        button = p;
        if (!flag)
        {
            byte0 = 0;
        }
        button.setVisibility(byte0);
    }

    public void a(Friend friend, int i1, Message message)
    {
        if (friend.E())
        {
            a(0x7f020072, w.b(), com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.USERNAME, ((String) (null)), friend);
        } else
        {
            if (F.a(friend) && friend.s())
            {
                FriendProfileInfo.a(friend, new com.snapchat.android.model.FriendProfileInfo.FriendProfileInfoListener(friend) {

                    final Friend a;
                    final AddFriendsViewHolder b;

                    public void a(FriendProfileInfo friendprofileinfo)
                    {
                        if (friendprofileinfo != null)
                        {
                            ProfileEventAnalytics.c();
                            b.c(a);
                        }
                    }

            
            {
                b = AddFriendsViewHolder.this;
                a = friend;
                super();
            }
                });
                if (!friend.H())
                {
                    a(friend, true);
                }
            } else
            {
                a(friend, false);
            }
            if (friend.H())
            {
                l.setBackgroundResource(0x7f0201c4);
                l.setVisibility(0);
                b(y.getResources().getColor(0x7f080037));
            } else
            {
                b(y.getResources().getColor(0x7f080001));
            }
        }
        if (B)
        {
            if (!friend.E() && e(friend))
            {
                i.setOnClickListener(new android.view.View.OnClickListener(friend) {

                    final Friend a;
                    final AddFriendsViewHolder b;

                    public void onClick(View view)
                    {
                        AddFriendsViewHolder.b(b).b(a);
                        AddFriendsViewHolder.c(b).notifyDataSetChanged();
                    }

            
            {
                b = AddFriendsViewHolder.this;
                a = friend;
                super();
            }
                });
            } else
            {
                i.setOnClickListener(null);
            }
        }
        if (B || C)
        {
            a(friend, message);
        }
    }

    public void a(Friend friend, Friend friend1, int i1, int j1, int k1, List list, AddFriendsAdapter.AddFriendsAdapterInterface addfriendsadapterinterface, 
            Set set)
    {
        c(friend);
        View view = o;
        byte byte0;
        if (D)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view.setVisibility(byte0);
        if (D)
        {
            i.setBackgroundColor(0);
        } else
        if (addfriendsadapterinterface.a(friend))
        {
            i.setBackgroundColor(i1);
        } else
        {
            i.setBackgroundColor(j1);
        }
        if (!friend.s())
        {
            a(friend, k1, addfriendsadapterinterface, set);
        } else
        {
            a(friend, friend1, k1, list, addfriendsadapterinterface);
        }
        l.setVisibility(8);
    }

    public void a(Friend friend, boolean flag)
    {
        if (TextUtils.equals(UserPrefs.k(), friend.a()))
        {
            u();
            return;
        } else
        {
            c(flag);
            return;
        }
    }

    public void a(Runnable runnable)
    {
        i.animate().setDuration(200L).translationX(0.0F).setListener(new android.animation.Animator.AnimatorListener(runnable) {

            final Runnable a;
            final AddFriendsViewHolder b;

            public void onAnimationCancel(Animator animator)
            {
                AddFriendsViewHolder.a(b).post(a);
            }

            public void onAnimationEnd(Animator animator)
            {
                AddFriendsViewHolder.a(b).post(a);
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                b = AddFriendsViewHolder.this;
                a = runnable;
                super();
            }
        });
    }

    public void b(Friend friend)
    {
        if (A.contains(friend))
        {
            q.setVisibility(8);
            r.setVisibility(8);
            t.setVisibility(0);
            return;
        }
        t.setVisibility(8);
        if (e(friend))
        {
            q.setVisibility(0);
            r.setVisibility(8);
            return;
        } else
        {
            q.setVisibility(8);
            r.setVisibility(0);
            return;
        }
    }

    public void b(boolean flag)
    {
        p.setClickable(flag);
        q.setClickable(flag);
        r.setClickable(flag);
    }

    public void c(Friend friend)
    {
        a(E.a(friend));
        String s1 = E.a(friend, F.a(friend));
        k.setText(s1);
        TextView textview = k;
        byte byte0;
        if (TextUtils.isEmpty(s1))
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        textview.setVisibility(byte0);
    }

    protected com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType d(Friend friend)
    {
        if (w.b().equals(com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.PROFILE_ADDED_ME_PAGE))
        {
            return com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.ADDED_ME_BACK;
        }
        User user = (User)G.get();
        if (user != null)
        {
            if (user.a(friend))
            {
                return com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.CONTACTS;
            }
            if (user.b(friend))
            {
                return com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.ADDED_ME_BACK;
            }
        }
        return com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.USERNAME;
    }
}
