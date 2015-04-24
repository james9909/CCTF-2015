// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.app.AlertDialog;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.SnapCaptureAnalytics;
import com.snapchat.android.database.HasSeenPostToOurStoryDialogLog;
import com.snapchat.android.discover.model.DSnapbryo;
import com.snapchat.android.fragments.addfriends.AddFriendsMenuFragment;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.MyPostToStory;
import com.snapchat.android.model.PostToStory;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.SendToBottomPanelView;
import com.snapchat.android.ui.dialog.PostToOurStoryDialog;
import com.snapchat.android.ui.sendto.SendToItemCheckboxResourceProvider;
import com.snapchat.android.util.BouncyToucher;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.CancelInChatSnapEvent;
import com.snapchat.android.util.eventbus.CancelQuickSnapEvent;
import com.snapchat.android.util.eventbus.CancelReplyEvent;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendExistsTask;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.SnapReadyForSendingEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToAdapter, SendToItem

public class SendToFragment extends SnapchatFragment
    implements SendToAdapter.SendToCheckedCallback
{

    private static Mediabryo b;
    protected HasSeenPostToOurStoryDialogLog a;
    private View c;
    private View d;
    private SendToAdapter e;
    private Handler f;
    private InputMethodManager g;
    private EditText h;
    private View i;
    private boolean j;
    private StickyListHeadersListView k;
    private User l;
    private LinkedHashSet m;
    private ArrayList n;
    private SendToBottomPanelView o;
    private final SnapCaptureAnalytics p = SnapCaptureAnalytics.a();
    private final NetworkAnalytics q = NetworkAnalytics.a();

    public SendToFragment()
    {
        f = new Handler();
        j = false;
        m = new LinkedHashSet();
        n = new ArrayList();
        SnapchatApplication.e().a(this);
    }

    static SnapCaptureAnalytics a(SendToFragment sendtofragment)
    {
        return sendtofragment.p;
    }

    public static SendToFragment a(Mediabryo mediabryo)
    {
        b = mediabryo;
        return new SendToFragment();
    }

    private void a(Friend friend, boolean flag)
    {
        p.a(friend, j);
        if (flag)
        {
            if (m.size() < 200)
            {
                m.add(friend);
                return;
            } else
            {
                BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c003e));
                return;
            }
        } else
        {
            m.remove(friend);
            return;
        }
    }

    private void a(PostToStory posttostory, boolean flag)
    {
        p.g();
        if (flag)
        {
            n.add(posttostory);
            return;
        } else
        {
            n.remove(posttostory);
            return;
        }
    }

    private boolean a(PostToStory posttostory)
    {
        return (posttostory instanceof MyPostToStory) ? !UserPrefs.C() : !a.a(posttostory.c());
    }

    static void b(SendToFragment sendtofragment)
    {
        sendtofragment.v();
    }

    private void b(PostToStory posttostory)
    {
        if (posttostory instanceof MyPostToStory)
        {
            o();
            return;
        } else
        {
            (new PostToOurStoryDialog(getActivity(), posttostory, new com.snapchat.android.ui.dialog.PostToOurStoryDialog.PostToStoryDialogCallback(posttostory) {

                final PostToStory a;
                final SendToFragment b;

                public void a(boolean flag)
                {
                    if (flag)
                    {
                        b.a.a(a.c());
                    }
                }

            
            {
                b = SendToFragment.this;
                a = posttostory;
                super();
            }
            })).show();
            return;
        }
    }

    static LinkedHashSet c(SendToFragment sendtofragment)
    {
        return sendtofragment.m;
    }

    static User d(SendToFragment sendtofragment)
    {
        return sendtofragment.l;
    }

    static ArrayList e(SendToFragment sendtofragment)
    {
        return sendtofragment.n;
    }

    static NetworkAnalytics f(SendToFragment sendtofragment)
    {
        return sendtofragment.q;
    }

    static View g(SendToFragment sendtofragment)
    {
        return sendtofragment.d;
    }

    static Mediabryo h()
    {
        return b;
    }

    static boolean h(SendToFragment sendtofragment)
    {
        return sendtofragment.j;
    }

    private void i()
    {
        BusProvider.a().a(new TitleBarEvent(true));
        ViewUtils.a(G(), x, getActivity());
    }

    static void i(SendToFragment sendtofragment)
    {
        sendtofragment.s();
    }

    static void j(SendToFragment sendtofragment)
    {
        sendtofragment.t();
    }

    static SendToAdapter k(SendToFragment sendtofragment)
    {
        return sendtofragment.e;
    }

    private void k()
    {
        o = (SendToBottomPanelView)d(0x7f0a0277);
        o.setSendButtonOnClickListener(new android.view.View.OnClickListener() {

            final SendToFragment a;

            public void onClick(View view)
            {
                SendToFragment.a(a).d();
                LandingPageActivity landingpageactivity = (LandingPageActivity)a.getActivity();
                if (landingpageactivity == null)
                {
                    return;
                }
                SendToFragment.b(a);
                boolean flag;
                boolean flag1;
                boolean flag2;
                if (landingpageactivity.r() != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (!SendToFragment.c(a).isEmpty())
                {
                    SendToFragment.d(a).a();
                }
                SendToFragment.h().a(SendToFragment.c(a));
                if (SendToFragment.h() instanceof Snapbryo)
                {
                    Snapbryo snapbryo = (Snapbryo)SendToFragment.h();
                    if (!SendToFragment.e(a).isEmpty())
                    {
                        UserPrefs.h(true);
                        Snapbryo snapbryo1 = (Snapbryo)SendToFragment.h();
                        NetworkAnalytics networkanalytics;
                        boolean flag3;
                        if (!SendToFragment.c(a).isEmpty())
                        {
                            flag3 = true;
                        } else
                        {
                            flag3 = false;
                        }
                        AnalyticsEvents.a(snapbryo1, flag, flag3, "SEND_TO_SCREEN");
                    }
                    snapbryo.a(SendToFragment.e(a));
                }
                networkanalytics = SendToFragment.f(a);
                if (SendToFragment.c(a).size() > 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (SendToFragment.e(a).size() > 0)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                networkanalytics.a(flag1, flag2);
                BusProvider.a().a(new SnapReadyForSendingEvent(SendToFragment.h(), false));
                BusProvider.a().a(new CancelReplyEvent());
                BusProvider.a().a(new CancelInChatSnapEvent(false));
                BusProvider.a().a(new CancelQuickSnapEvent(false));
                BusProvider.a().a(new CameraStateEvent(true));
                ViewUtils.a(landingpageactivity, SendToFragment.g(a));
            }

            
            {
                a = SendToFragment.this;
                super();
            }
        });
        o.setSendButtonOnTouchListener(new BouncyToucher(o.getSendButton()));
        p();
    }

    static StickyListHeadersListView l(SendToFragment sendtofragment)
    {
        return sendtofragment.k;
    }

    private void l()
    {
        n();
        c = d(0x7f0a0274);
        d = d(0x7f0a0271);
        h = (EditText)d(0x7f0a0272);
        i = d(0x7f0a0034);
        d(0x7f0a0273).setOnClickListener(new android.view.View.OnClickListener() {

            final SendToFragment a;

            public void onClick(View view)
            {
                if (SendToFragment.h(a))
                {
                    SendToFragment.i(a);
                }
                SendToFragment.a(a).f();
                BusProvider.a().a(new StartFragmentEvent(new AddFriendsMenuFragment()));
            }

            
            {
                a = SendToFragment.this;
                super();
            }
        });
        c.setOnClickListener(new android.view.View.OnClickListener() {

            final SendToFragment a;

            public void onClick(View view)
            {
                SendToFragment.j(a);
            }

            
            {
                a = SendToFragment.this;
                super();
            }
        });
        h.addTextChangedListener(new TextWatcher() {

            final SendToFragment a;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
                SendToFragment.k(a).getFilter().filter(charsequence.toString());
                if (TextUtils.isEmpty(charsequence))
                {
                    SendToFragment.l(a).setFastScrollAlwaysVisible(true);
                    SendToFragment.l(a).setFastScrollEnabled(true);
                    SendToFragment.m(a).setVisibility(4);
                    return;
                } else
                {
                    SendToFragment.l(a).setFastScrollAlwaysVisible(false);
                    SendToFragment.l(a).setFastScrollEnabled(false);
                    SendToFragment.m(a).setVisibility(0);
                    return;
                }
            }

            
            {
                a = SendToFragment.this;
                super();
            }
        });
        i.setOnClickListener(new android.view.View.OnClickListener() {

            final SendToFragment a;

            public void onClick(View view)
            {
                SendToFragment.n(a).setText("");
            }

            
            {
                a = SendToFragment.this;
                super();
            }
        });
        h.setOnTouchListener(new android.view.View.OnTouchListener() {

            final SendToFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0)
                {
                    SendToFragment.o(a);
                }
                return false;
            }

            
            {
                a = SendToFragment.this;
                super();
            }
        });
        k();
        d(0x7f0a026f).setOnClickListener(new android.view.View.OnClickListener() {

            final SendToFragment a;

            public void onClick(View view)
            {
                SendToFragment.a(a).e();
                a.getActivity().onBackPressed();
            }

            
            {
                a = SendToFragment.this;
                super();
            }
        });
    }

    static View m(SendToFragment sendtofragment)
    {
        return sendtofragment.i;
    }

    static EditText n(SendToFragment sendtofragment)
    {
        return sendtofragment.h;
    }

    private void n()
    {
        ArrayList arraylist = new ArrayList();
        if (b instanceof DSnapbryo)
        {
            arraylist.addAll(l.g());
        } else
        {
            arraylist.addAll(l.f());
        }
        e = new SendToAdapter(getActivity(), 0x7f040063, arraylist, new com.snapchat.android.model.Friend.FriendListSectionizer(), this, new SendToItemCheckboxResourceProvider());
        k = (StickyListHeadersListView)d(0x7f0a0168);
        k.setAdapter(e);
        k.setFastScrollAlwaysVisible(true);
        k.setTextFilterEnabled(true);
        k.setOnTouchListener(new android.view.View.OnTouchListener() {

            final SendToFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (SendToFragment.h(a))
                {
                    SendToFragment.b(a);
                    SendToFragment.p(a).hideSoftInputFromWindow(a.getView().getWindowToken(), 0);
                }
                return false;
            }

            
            {
                a = SendToFragment.this;
                super();
            }
        });
    }

    private void o()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        View view = LayoutInflater.from(getActivity()).inflate(0x7f04006c, null);
        CheckBox checkbox = (CheckBox)view.findViewById(0x7f0a0250);
        ((LinearLayout)view).removeView(checkbox);
        builder.setInverseBackgroundForced(true);
        builder.setView(view).setTitle(0x7f0c001e).setNegativeButton(0x7f0c003d, null).setPositiveButton(0x7f0c0001, null);
        builder.create().show();
    }

    static void o(SendToFragment sendtofragment)
    {
        sendtofragment.u();
    }

    static InputMethodManager p(SendToFragment sendtofragment)
    {
        return sendtofragment.g;
    }

    private void p()
    {
        Runnable runnable = new Runnable() {

            final SendToFragment a;

            public void run()
            {
                SendToFragment.q(a).getScrollView().fullScroll(66);
                if (SendToFragment.c(a).isEmpty() && SendToFragment.e(a).isEmpty())
                {
                    SendToFragment.r(a);
                    return;
                }
                if (SendToFragment.q(a).getVisibility() == 8)
                {
                    SendToFragment.s(a);
                    return;
                } else
                {
                    SendToFragment.q(a).a(true);
                    return;
                }
            }

            
            {
                a = SendToFragment.this;
                super();
            }
        };
        f.post(runnable);
    }

    static SendToBottomPanelView q(SendToFragment sendtofragment)
    {
        return sendtofragment.o;
    }

    private void q()
    {
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity == null)
        {
            return;
        } else
        {
            Animation animation = AnimationUtils.loadAnimation(fragmentactivity, 0x7f050003);
            animation.setDuration(100L);
            o.startAnimation(animation);
            return;
        }
    }

    private void r()
    {
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity == null)
        {
            return;
        } else
        {
            Animation animation = AnimationUtils.loadAnimation(fragmentactivity, 0x7f050002);
            animation.setDuration(100L);
            o.startAnimation(animation);
            return;
        }
    }

    static void r(SendToFragment sendtofragment)
    {
        sendtofragment.r();
    }

    private void s()
    {
        c.setVisibility(0);
        d.setVisibility(0);
        h.setText("");
        h.clearFocus();
        g.hideSoftInputFromWindow(getView().getWindowToken(), 0);
        h.setVisibility(4);
        j = false;
        v();
    }

    static void s(SendToFragment sendtofragment)
    {
        sendtofragment.q();
    }

    private void t()
    {
        c.setVisibility(4);
        d.setVisibility(8);
        h.setVisibility(0);
        h.requestFocus();
        g.showSoftInput(h, 0);
        j = true;
        u();
    }

    private void u()
    {
        G().clearFlags(512);
        ViewUtils.a(x);
    }

    private void v()
    {
        ViewUtils.a(G(), x, getActivity());
        G().addFlags(512);
    }

    public void a(SendToItem sendtoitem, boolean flag)
    {
        if (!(sendtoitem instanceof Friend)) goto _L2; else goto _L1
_L1:
        a((Friend)sendtoitem, flag);
_L4:
        e.notifyDataSetChanged();
        b();
        return;
_L2:
        if (sendtoitem instanceof PostToStory)
        {
            if (flag && a((PostToStory)sendtoitem))
            {
                b((PostToStory)sendtoitem);
            }
            a((PostToStory)sendtoitem, flag);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean a(SendToItem sendtoitem)
    {
        if (sendtoitem instanceof Friend)
        {
            return m.contains(sendtoitem);
        }
        if (sendtoitem instanceof PostToStory)
        {
            return n.contains(sendtoitem);
        } else
        {
            return false;
        }
    }

    protected void b()
    {
        Iterator iterator = n.iterator();
        String s1 = "";
        String s2;
        for (s2 = ""; iterator.hasNext(); s2 = ", ")
        {
            PostToStory posttostory = (PostToStory)iterator.next();
            s1 = (new StringBuilder()).append(s1).append(s2).append(posttostory.d()).toString();
        }

        for (Iterator iterator1 = m.iterator(); iterator1.hasNext();)
        {
            Friend friend = (Friend)iterator1.next();
            s1 = (new StringBuilder()).append(s1).append(s2).append(friend.o()).toString();
            s2 = ", ";
        }

        o.setText(s1);
        p();
    }

    public void d_()
    {
        super.d_();
    }

    public boolean e()
    {
        if (j)
        {
            s();
            return true;
        } else
        {
            p.e();
            return false;
        }
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        i();
        g = (InputMethodManager)getActivity().getSystemService("input_method");
        l = User.a(getActivity());
        m = b.D();
        if (b instanceof Snapbryo)
        {
            n = ((Snapbryo)b).l();
        }
        l();
        Iterator iterator = m.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (!FriendUtils.e(friend.a(), l))
            {
                friend.a(com.snapchat.android.model.Friend.SuggestState.PENDING);
            }
        } while (true);
        if (m.size() > 0 || n.size() > 0)
        {
            b();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(false);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040075, viewgroup, false);
        return x;
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        Iterator iterator = l.s().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend = (Friend)iterator.next();
            if (friend.F())
            {
                friend.f(false);
            }
        } while (true);
    }

    public void onPause()
    {
        super.onPause();
        b.a(m);
        if (b instanceof Snapbryo)
        {
            ((Snapbryo)b).a(n);
        }
    }

    public void onRefreshFriendExistsTask(RefreshOnFriendExistsTask refreshonfriendexiststask)
    {
        e.notifyDataSetChanged();
    }

    public void onRefreshOnFriendActionEvent(RefreshOnFriendActionEvent refreshonfriendactionevent)
    {
        Friend friend;
        FriendAction friendaction;
        friend = refreshonfriendactionevent.a();
        friendaction = refreshonfriendactionevent.b();
        if (friend == null) goto _L2; else goto _L1
_L1:
        if (FriendAction.ADD != friendaction) goto _L4; else goto _L3
_L3:
        friend.f(true);
        e.a(friend);
_L6:
        e.getFilter().filter(h.getText().toString());
_L2:
        return;
_L4:
        if (FriendAction.DELETE == friendaction)
        {
            e.b(friend);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void s_()
    {
        i();
        p.c();
        BusProvider.a().a(new ChangeOrientationEvent(1));
    }

    public boolean t_()
    {
        return true;
    }
}
