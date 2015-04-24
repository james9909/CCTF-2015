// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.content.Context;
import android.content.DialogInterface;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.api.SettingsTask;
import com.snapchat.android.api.SharedStorySearchTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.operation.Operation;
import com.snapchat.android.service.SnapchatServiceListener;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ContactsOnSnapchatUpdatedEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendExistsTask;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.eventbus.UserLoadedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.system.time.BlockingCountDownTimer;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsAdapter, ReturningUserPhoneVerificationFragment, NonTappableAddFriendsTextProvider

public class AddFriendsFragment extends SnapchatFragment
    implements TextWatcher, android.view.View.OnClickListener, com.snapchat.android.api.SharedStorySearchTask.SharedStorySearchTaskCallback, AddFriendsAdapter.AddFriendsAdapterInterface, ReturningUserPhoneVerificationFragment.ReturningUserPhoneVerificationFragmentListener
{
    class ContinueButtonCountDownTimer extends BlockingCountDownTimer
    {

        final AddFriendsFragment a;
        private int b;

        public void a()
        {
            if (!a.isAdded())
            {
                return;
            } else
            {
                b = -1 + b;
                a.u.setText((new StringBuilder()).append(a.getString(0x7f0c0179)).append(" ").append(b).toString());
                return;
            }
        }

        public void b()
        {
            if (!a.isAdded())
            {
                return;
            } else
            {
                a.u.setText(0x7f0c0179);
                a.u.setEnabled(true);
                return;
            }
        }

        public ContinueButtonCountDownTimer()
        {
            a = AddFriendsFragment.this;
            super(3, 1000L, new Handler());
            u.setEnabled(false);
            b = 3;
            u.setText((new StringBuilder()).append(getString(0x7f0c0179)).append(" ").append(b).toString());
        }
    }

    public static final class Page extends Enum
    {

        public static final Page a;
        public static final Page b;
        public static final Page c;
        private static final Page d[];

        public static Page valueOf(String s1)
        {
            return (Page)Enum.valueOf(com/snapchat/android/fragments/addfriends/AddFriendsFragment$Page, s1);
        }

        public static Page[] values()
        {
            return (Page[])d.clone();
        }

        static 
        {
            a = new Page("PHONE_VERIFICATION", 0);
            b = new Page("CONTACTS_ACCESS", 1);
            c = new Page("ADD_FRIENDS", 2);
            Page apage[] = new Page[3];
            apage[0] = a;
            apage[1] = b;
            apage[2] = c;
            d = apage;
        }

        private Page(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private String B;
    private ContinueButtonCountDownTimer C;
    private SnapchatServiceManager D;
    private final Provider E;
    private View F;
    private View G;
    private View H;
    private TextView I;
    private View J;
    private HashSet K;
    private SnapchatServiceListener L = new SnapchatServiceListener() {

        final AddFriendsFragment a;

        public void a(Operation operation)
        {
            int i1 = SnapchatServiceManager.a(operation);
            if (AddFriendsFragment.a(a).contains(Integer.valueOf(i1)))
            {
                AddFriendsFragment.a(a).remove(Integer.valueOf(i1));
                a.n();
            }
        }

            
            {
                a = AddFriendsFragment.this;
                super();
            }
    };
    private DataSetObserver M = new DataSetObserver() {

        final AddFriendsFragment a;

        public void onChanged()
        {
            super.onChanged();
            a.A();
        }

            
            {
                a = AddFriendsFragment.this;
                super();
            }
    };
    protected Page a;
    protected FriendSectionizer b;
    protected FriendSectionizer c;
    public AddFriendsAdapter d;
    public ArrayList e;
    protected View f;
    protected View g;
    protected TextView h;
    protected View i;
    protected View j;
    protected boolean k;
    protected EditText l;
    protected View m;
    protected View n;
    protected StickyListHeadersListView o;
    protected TextView p;
    protected TextView q;
    protected TextView r;
    protected TextView s;
    protected TextView t;
    public Button u;
    public com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext v;

    public AddFriendsFragment()
    {
        this(SnapchatServiceManager.a(), User.UNSAFE_USER_PROVIDER);
    }

    private AddFriendsFragment(SnapchatServiceManager snapchatservicemanager, Provider provider)
    {
        a = Page.a;
        b = new com.snapchat.android.util.FriendSectionizer.AlphabeticalSectionizer();
        c = new com.snapchat.android.util.FriendSectionizer.AddFriendsSearchSectionizer();
        e = new ArrayList();
        K = new HashSet();
        v = com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE;
        D = snapchatservicemanager;
        E = provider;
    }

    private void F()
    {
        d(0x7f0a002f).setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsFragment a;

            public void onClick(View view)
            {
                ViewUtils.a(a.getActivity(), a.l);
                a.getActivity().onBackPressed();
            }

            
            {
                a = AddFriendsFragment.this;
                super();
            }
        });
        f = d(0x7f0a0036);
        g = d(0x7f0a0037);
        g.setOnClickListener(this);
    }

    private void K()
    {
        l = (EditText)d(0x7f0a0032);
        l.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final AddFriendsFragment a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    ViewUtils.f(a.getActivity());
                }
            }

            
            {
                a = AddFriendsFragment.this;
                super();
            }
        });
        F = d(0x7f0a0034);
        m = d(0x7f0a0035);
        l.addTextChangedListener(this);
        F.setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsFragment a;

            public void onClick(View view)
            {
                a.l.setText("");
            }

            
            {
                a = AddFriendsFragment.this;
                super();
            }
        });
        m.setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsFragment a;

            public void onClick(View view)
            {
label0:
                {
                    if (User.c() != null)
                    {
                        if (!a.v())
                        {
                            break label0;
                        }
                        a.f();
                    }
                    return;
                }
                a.D();
                (new EasyMetric("ADD_FRIENDS_FRAGMENT_SEARCH")).c();
            }

            
            {
                a = AddFriendsFragment.this;
                super();
            }
        });
    }

    private void L()
    {
        if (k())
        {
            K.add(Integer.valueOf(D.d(getActivity())));
            n();
        }
    }

    private void M()
    {
        (new android.app.AlertDialog.Builder(getActivity())).setMessage(0x7f0c0105).setCancelable(false).setPositiveButton(0x7f0c0142, new android.content.DialogInterface.OnClickListener() {

            final AddFriendsFragment a;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                AddFriendsFragment.c(a);
                UserPrefs.k(true);
                AnalyticsEvents.F();
                AddFriendsFragment.d(a).d(a.getActivity());
            }

            
            {
                a = AddFriendsFragment.this;
                super();
            }
        }).setNegativeButton(0x7f0c00dc, new android.content.DialogInterface.OnClickListener() {

            final AddFriendsFragment a;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                a.w();
            }

            
            {
                a = AddFriendsFragment.this;
                super();
            }
        }).show();
    }

    private void N()
    {
        G.setVisibility(8);
        H.setVisibility(8);
        I.setText(0x7f0c0012);
        J.setVisibility(0);
        u.setVisibility(8);
    }

    private void O()
    {
        l.requestFocus();
    }

    static HashSet a(AddFriendsFragment addfriendsfragment)
    {
        return addfriendsfragment.K;
    }

    private void a(Context context)
    {
        android.content.res.AssetManager assetmanager = context.getAssets();
        u = (Button)d(0x7f0a0156);
        FontUtils.a(u, assetmanager);
        u.setBackgroundResource(h());
    }

    static void b(AddFriendsFragment addfriendsfragment)
    {
        addfriendsfragment.M();
    }

    static void c(AddFriendsFragment addfriendsfragment)
    {
        addfriendsfragment.N();
    }

    static SnapchatServiceManager d(AddFriendsFragment addfriendsfragment)
    {
        return addfriendsfragment.D;
    }

    protected void A()
    {
        boolean flag;
        if (x() || y())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (x())
        {
            q.setVisibility(0);
            r.setText(UserPrefs.k());
            r.setVisibility(0);
            StickyListHeadersListView stickylistheaderslistview;
            byte byte0;
            if (!TextUtils.isEmpty(UserPrefs.r()))
            {
                s.setVisibility(0);
                t.setText(UserPrefs.r());
                t.setVisibility(0);
            } else
            {
                s.setVisibility(8);
                t.setVisibility(8);
            }
        } else
        {
            q.setVisibility(8);
            r.setVisibility(8);
            s.setVisibility(8);
            t.setVisibility(8);
        }
        if (y())
        {
            p.setText(0x7f0c0011);
            p.setVisibility(0);
        } else
        {
            p.setVisibility(8);
        }
        stickylistheaderslistview = o;
        byte0 = 0;
        if (flag)
        {
            byte0 = 8;
        }
        stickylistheaderslistview.setVisibility(byte0);
    }

    protected void B()
    {
        User user = User.c();
        if (user == null)
        {
            return;
        }
        if (v())
        {
            a(user);
        } else
        {
            b(user);
        }
        A();
        d.notifyDataSetChanged();
    }

    protected void C()
    {
        ViewUtils.a(x);
        BusProvider.a().a(new TitleBarEvent(true));
        G().clearFlags(512);
    }

    protected void D()
    {
        k = true;
        h.setVisibility(8);
        m.setVisibility(4);
        l.setVisibility(0);
        d.a(c);
        b();
        B();
        d.getFilter().filter("");
        O();
    }

    protected void E()
    {
        Iterator iterator = e.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (friend.P() == com.snapchat.android.model.Friend.Direction.OUTGOING)
            {
                friend.a(com.snapchat.android.model.Friend.SuggestState.NOT_SUGGESTION);
            }
        } while (true);
    }

    protected void a(User user)
    {
        e.clear();
        HashSet hashset = new HashSet();
        HashSet hashset1 = new HashSet(user.s());
        ArrayList arraylist = new ArrayList();
        Iterator iterator = user.w().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend3 = (Friend)iterator.next();
            if (!FriendUtils.e(friend3.a(), user) && !friend3.x())
            {
                arraylist.add(friend3);
            }
        } while (true);
        hashset.addAll(arraylist);
        Collections.sort(arraylist);
        e.addAll(arraylist);
        ArrayList arraylist1 = new ArrayList();
        Iterator iterator1 = user.r().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            Friend friend2 = (Friend)iterator1.next();
            if (!hashset.contains(friend2) && !hashset1.contains(friend2) && !friend2.x())
            {
                friend2.a(com.snapchat.android.util.FriendSectionizer.FriendSection.MY_ADDRESS_BOOK);
                arraylist1.add(friend2);
            }
        } while (true);
        hashset.addAll(arraylist1);
        Collections.sort(arraylist1);
        e.addAll(arraylist1);
        ArrayList arraylist2 = new ArrayList();
        Iterator iterator2 = user.o().iterator();
        do
        {
            if (!iterator2.hasNext())
            {
                break;
            }
            Friend friend1 = (Friend)iterator2.next();
            if (!friend1.x())
            {
                friend1.a(com.snapchat.android.util.FriendSectionizer.FriendSection.MY_ADDRESS_BOOK);
                arraylist2.add(friend1);
            }
        } while (true);
        hashset.addAll(arraylist2);
        Collections.sort(arraylist2);
        e.addAll(arraylist2);
        ArrayList arraylist3 = new ArrayList();
        Iterator iterator3 = hashset1.iterator();
        do
        {
            if (!iterator3.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator3.next();
            if (!hashset.contains(friend) && !friend.x() && !friend.I())
            {
                arraylist3.add(friend);
            }
        } while (true);
        Collections.sort(arraylist3);
        e.addAll(arraylist3);
    }

    protected void a(CharSequence charsequence)
    {
        d.getFilter().filter(charsequence);
        boolean flag;
        if (!TextUtils.isEmpty(charsequence))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b(flag);
        d.notifyDataSetChanged();
    }

    public void a(String s1)
    {
        B = s1;
    }

    public void a(ArrayList arraylist)
    {
        a(((CharSequence) (l.getText())));
    }

    protected void a(boolean flag)
    {
        ReturningUserPhoneVerificationFragment returninguserphoneverificationfragment = (ReturningUserPhoneVerificationFragment)getFragmentManager().findFragmentByTag("CONTACT_RETURNING_USER_PHONE_VERIFICATION_FRAGMENT");
        if (returninguserphoneverificationfragment != null)
        {
            returninguserphoneverificationfragment.g(flag);
        }
    }

    public boolean a(Friend friend)
    {
        return false;
    }

    public void afterTextChanged(Editable editable)
    {
    }

    public void b()
    {
        n();
        if (!v()) goto _L2; else goto _L1
_L1:
        u();
_L4:
        return;
_L2:
        static class _cls10
        {

            static final int a[];

            static 
            {
                a = new int[Page.values().length];
                try
                {
                    a[Page.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[Page.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[Page.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls10.a[p().ordinal()])
        {
        default:
            u();
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_74;
        }
_L5:
        if (a != Page.a)
        {
            r();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        s();
          goto _L5
        t();
          goto _L5
    }

    protected void b(User user)
    {
        e.clear();
        HashSet hashset = new HashSet(user.s());
        Iterator iterator = user.r().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (!friend.x() && !hashset.contains(friend))
            {
                e.add(friend);
            }
        } while (true);
        e.addAll(user.o());
        Collections.sort(e);
    }

    public void b(boolean flag)
    {
        View view = F;
        int i1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 4;
        }
        view.setVisibility(i1);
    }

    public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
    {
    }

    protected int d()
    {
        switch (_cls10.a[a.ordinal()])
        {
        default:
            return 0x7f0c0019;

        case 1: // '\001'
        case 2: // '\002'
            return 0x7f0c00fa;
        }
    }

    protected void d_()
    {
        super.d_();
        if (v())
        {
            f();
        }
        ViewUtils.a(getActivity(), l);
        a(false);
        if (C != null)
        {
            C.c();
            u.setText(0x7f0c0179);
            u.setEnabled(false);
        }
        C = null;
    }

    public boolean e()
    {
        if (v())
        {
            f();
            return true;
        } else
        {
            return false;
        }
    }

    protected void f()
    {
        k = false;
        h.setVisibility(0);
        m.setVisibility(0);
        l.setText("");
        l.setVisibility(4);
        F.setVisibility(4);
        d.getFilter().filter(null);
        d.a(b);
        b();
        E();
        B();
        ViewUtils.a(getActivity(), l);
    }

    public com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext getAnalyticsContext()
    {
        return v;
    }

    public String getAnalyticsParent()
    {
        if (B == null)
        {
            return "UNKNOWN";
        } else
        {
            return B;
        }
    }

    public int h()
    {
        return 0x7f020118;
    }

    public void i()
    {
        j.setVisibility(8);
    }

    protected boolean k()
    {
        return UserPrefs.g() && UserPrefs.J();
    }

    protected boolean l()
    {
        return K.isEmpty();
    }

    protected void n()
    {
        if (p() == Page.c && k() && !v())
        {
            if (l())
            {
                f.setVisibility(8);
                g.setVisibility(0);
                return;
            } else
            {
                f.setVisibility(0);
                g.setVisibility(8);
                return;
            }
        } else
        {
            f.setVisibility(8);
            g.setVisibility(8);
            return;
        }
    }

    public void o()
    {
        b();
    }

    public void onClick(View view)
    {
        if (view == g)
        {
            L();
        }
    }

    public void onContactsOnSnapchatUpdatedEvent(ContactsOnSnapchatUpdatedEvent contactsonsnapchatupdatedevent)
    {
        B();
        b();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        TimeLogger.a();
        FragmentActivity fragmentactivity = getActivity();
        x = layoutinflater.inflate(0x7f040000, viewgroup, false);
        j = d(0x7f0a002e);
        Bundle bundle1 = getArguments();
        if (bundle1 != null && bundle1.getBoolean("hide_action_bar"))
        {
            i();
        }
        h = (TextView)d(0x7f0a0031);
        i = x.findViewById(0x7f0a015d);
        i.setId(ViewUtils.g(i));
        n = d(0x7f0a0157);
        G = d(0x7f0a015a);
        H = d(0x7f0a015b);
        I = (TextView)d(0x7f0a0159);
        J = d(0x7f0a015c);
        p = (TextView)d(0x7f0a003d);
        q = (TextView)d(0x7f0a003a);
        r = (TextView)d(0x7f0a0039);
        s = (TextView)d(0x7f0a003c);
        t = (TextView)d(0x7f0a003b);
        r();
        F();
        a(fragmentactivity);
        d = new AddFriendsAdapter(fragmentactivity, e, b, this, false, new NonTappableAddFriendsTextProvider(), E);
        o = (StickyListHeadersListView)d(0x7f0a0155);
        o.setAdapter(d);
        o.setFastScrollAlwaysVisible(true);
        K();
        b();
        B();
        C();
        TimeLogger.b();
        return x;
    }

    public void onPause()
    {
        super.onPause();
        SnapchatServiceManager.a().b(1002, L);
        K.clear();
    }

    public void onRefreshFriendExistsTask(RefreshOnFriendExistsTask refreshonfriendexiststask)
    {
        d.notifyDataSetChanged();
    }

    public void onRefreshOnFriendActionEvent(RefreshOnFriendActionEvent refreshonfriendactionevent)
    {
        FriendAction friendaction = refreshonfriendactionevent.b();
        if (friendaction == FriendAction.ADD || friendaction == FriendAction.DELETE)
        {
            d.notifyDataSetChanged();
            return;
        } else
        {
            B();
            return;
        }
    }

    public void onResume()
    {
        TimeLogger.a();
        super.onResume();
        SnapchatServiceManager.a().a(1002, L);
        L();
        TimeLogger.b();
    }

    public void onStart()
    {
        super.onStart();
        d.registerDataSetObserver(M);
    }

    public void onStop()
    {
        super.onStop();
        d.unregisterDataSetObserver(M);
    }

    public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
    {
        if (!TextUtils.isEmpty(charsequence))
        {
            (new SharedStorySearchTask(charsequence.toString(), this)).executeOnExecutor(ScExecutors.b, new String[0]);
        }
        a(charsequence);
    }

    public void onUserLoadedEvent(UserLoadedEvent userloadedevent)
    {
        B();
    }

    protected Page p()
    {
        _cls10.a[a.ordinal()];
        JVM INSTR tableswitch 1 2: default 32
    //                   1 37
    //                   2 71;
           goto _L1 _L2 _L3
_L1:
        return a;
_L2:
        if (UserPrefs.g())
        {
            if (UserPrefs.J())
            {
                a = Page.c;
            } else
            {
                a = Page.b;
                return p();
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (UserPrefs.J())
        {
            a = Page.c;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    protected String q()
    {
        return "CONTACT_RETURNING_USER_PHONE_VERIFICATION_FRAGMENT";
    }

    protected void r()
    {
        FragmentManager fragmentmanager = getFragmentManager();
        ReturningUserPhoneVerificationFragment returninguserphoneverificationfragment = (ReturningUserPhoneVerificationFragment)fragmentmanager.findFragmentByTag(q());
        if (returninguserphoneverificationfragment != null)
        {
            FragmentTransaction fragmenttransaction = fragmentmanager.beginTransaction();
            fragmenttransaction.remove(returninguserphoneverificationfragment);
            fragmenttransaction.commit();
        }
    }

    public void s()
    {
        h.setText(d());
        m.setVisibility(8);
        FragmentManager fragmentmanager = getFragmentManager();
        ReturningUserPhoneVerificationFragment returninguserphoneverificationfragment = (ReturningUserPhoneVerificationFragment)fragmentmanager.findFragmentByTag(q());
        if (returninguserphoneverificationfragment == null || !returninguserphoneverificationfragment.isInLayout())
        {
            FragmentTransaction fragmenttransaction = fragmentmanager.beginTransaction();
            returninguserphoneverificationfragment = new ReturningUserPhoneVerificationFragment();
            fragmenttransaction.replace(i.getId(), returninguserphoneverificationfragment, q());
            fragmenttransaction.commit();
        }
        returninguserphoneverificationfragment.a(false);
        i.setVisibility(0);
        returninguserphoneverificationfragment.a(this);
        returninguserphoneverificationfragment.g(true);
    }

    protected void s_()
    {
        TimeLogger.a();
        super.s_();
        C();
        boolean flag;
        if (a == Page.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(flag);
        if (u.getVisibility() == 0)
        {
            C = new ContinueButtonCountDownTimer();
            C.d();
        }
        B();
        TimeLogger.b();
    }

    public void t()
    {
        h.setText(d());
        m.setVisibility(8);
        i.setVisibility(8);
        n.setVisibility(0);
        I.setVisibility(0);
        G.setVisibility(0);
        u.setVisibility(0);
        u.setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsFragment a;

            public void onClick(View view)
            {
                AddFriendsFragment.b(a);
                (new SettingsTask("updateSearchableByPhoneNumber", new String[] {
                    "1"
                })).executeOnExecutor(ScExecutors.b, new String[0]);
            }

            
            {
                a = AddFriendsFragment.this;
                super();
            }
        });
        C = new ContinueButtonCountDownTimer();
        C.d();
    }

    public boolean t_()
    {
        return true;
    }

    public void u()
    {
        h.setText(d());
        View view = m;
        byte byte0;
        if (v())
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        view.setVisibility(byte0);
        i.setVisibility(8);
        n.setVisibility(8);
        o.setVisibility(0);
        u.setVisibility(8);
    }

    protected boolean v()
    {
        return k;
    }

    public void w()
    {
        AnalyticsEvents.G();
        a = Page.b;
        b();
    }

    protected boolean x()
    {
        return v() && TextUtils.isEmpty(d.c());
    }

    protected boolean y()
    {
        return !v() && d.isEmpty() && p() == Page.c;
    }
}
