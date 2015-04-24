// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.MediaViewAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NotificationAnalytics;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.api.LoadStorySnapMediaTask;
import com.snapchat.android.api.SharedStorySearchTask;
import com.snapchat.android.api.SyncAllTask;
import com.snapchat.android.api.UpdateStoriesTask;
import com.snapchat.android.api2.HideSharedStoryTask;
import com.snapchat.android.controller.SendSnapController;
import com.snapchat.android.deeplink.DeepLinkAddFriendDialog;
import com.snapchat.android.deeplink.DeepLinkParser;
import com.snapchat.android.discover.controller.DiscoverNewContentObserver;
import com.snapchat.android.discover.ui.DiscoverButtonView;
import com.snapchat.android.fragments.addfriends.AddFriendsFragment;
import com.snapchat.android.fragments.addfriends.SharedStorySearchResult;
import com.snapchat.android.location.LocationProvider;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.MyStoryGroup;
import com.snapchat.android.model.RecentStoryCollection;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.SponsoredStoryCollection;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.dialog.OneButtonDialog;
import com.snapchat.android.ui.dialog.TwoButtonDialog;
import com.snapchat.android.ui.ptr.SnapchatPtrFrameLayout;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.EmojiUtils;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.SnapListItemHandler;
import com.snapchat.android.util.StoriesThumbnailCache;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.CancelReplyEvent;
import com.snapchat.android.util.eventbus.DoubleTapToReplyEvent;
import com.snapchat.android.util.eventbus.GetLocationDataTaskCompletedEvent;
import com.snapchat.android.util.eventbus.HideSnapStoryEvent;
import com.snapchat.android.util.eventbus.LoadStoryMediaCompleteEvent;
import com.snapchat.android.util.eventbus.PostStorySnapRequestCompleteEvent;
import com.snapchat.android.util.eventbus.RecentStoryCollectionCompletedViewingEvent;
import com.snapchat.android.util.eventbus.RefreshCameraNotificationBoxesEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.RefreshOnFriendExistsTask;
import com.snapchat.android.util.eventbus.SanitizeStoriesFragmentEvent;
import com.snapchat.android.util.eventbus.ScrollFeedToTopEvent;
import com.snapchat.android.util.eventbus.ScrollStoriesFragmentToTopEvent;
import com.snapchat.android.util.eventbus.SharedStoryButtonClickedEvent;
import com.snapchat.android.util.eventbus.SharedStoryFriendButtonClickedEvent;
import com.snapchat.android.util.eventbus.SponsoredStoryViewingStartedEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.eventbus.StoriesNotifyDatasetChangedEvent;
import com.snapchat.android.util.eventbus.StoryListPressedEvent;
import com.snapchat.android.util.eventbus.StoryListTappedEvent;
import com.snapchat.android.util.eventbus.StorySnapPostEvent;
import com.snapchat.android.util.eventbus.StoryThumbnailLoadedEvent;
import com.snapchat.android.util.eventbus.SyncAllCompletedEvent;
import com.snapchat.android.util.eventbus.ToggleStoryEvent;
import com.snapchat.android.util.eventbus.UserLoadedEvent;
import com.snapchat.android.util.fragment.FragmentPageChangeCallback;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.listview.ListViewUtils;
import com.squareup.otto.Bus;
import in.srain.cube.views.ptr.PtrFrameLayout;
import in.srain.cube.views.ptr.PtrHandler;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter, MyStoryGroupStoriesListItem, StoryGroupStoriesListItem, StoriesListItem, 
//            StoriesListItemViewHolder

public class StoriesFragment extends SnapchatFragment
    implements com.snapchat.android.api.SharedStorySearchTask.SharedStorySearchTaskCallback, StoriesAdapter.StoriesAdapterInterface
{

    private StickyListHeadersListView B;
    private SnapchatPtrFrameLayout C;
    private final SendSnapController D;
    private final SnapWomb E;
    private String F;
    private int G;
    private final LocationProvider H;
    private boolean I;
    private final CameraEventAnalytics J;
    private final NetworkAnalytics K;
    private final DictionaryEasyMetric L;
    private final MediaViewAnalytics M;
    private final HashMap N;
    private final Bus O;
    private final DiscoverNewContentObserver P;
    private FragmentPageChangeCallback Q;
    private StoriesListItem R;
    private View S;
    private View T;
    private View U;
    private ImageView V;
    private DiscoverButtonView W;
    protected RecentStoryCollection a;
    protected List b;
    protected StoryLibrary c;
    protected List d;
    protected DeepLinkParser e;
    protected StoriesAdapter f;
    protected final ArrayList g;
    protected boolean h;
    boolean i;
    protected EditText j;
    protected View k;
    protected View l;
    protected Button m;
    protected View n;
    protected TextView o;
    protected boolean p;
    private final HashMap q;
    private final HashSet r;
    private final Set s;
    private final Provider t;
    private final List u;
    private InputMethodManager v;

    public StoriesFragment()
    {
        this(new SendSnapController(), NetworkAnalytics.a(), DiscoverNewContentObserver.a(), DictionaryEasyMetric.a(), MediaViewAnalytics.a(), SnapWomb.a(), StoryLibrary.a(), BusProvider.a(), LocationProvider.a(), CameraEventAnalytics.a(), User.UNSAFE_USER_PROVIDER);
    }

    StoriesFragment(SendSnapController sendsnapcontroller, NetworkAnalytics networkanalytics, DiscoverNewContentObserver discovernewcontentobserver, DictionaryEasyMetric dictionaryeasymetric, MediaViewAnalytics mediaviewanalytics, SnapWomb snapwomb, StoryLibrary storylibrary, 
            Bus bus, LocationProvider locationprovider, CameraEventAnalytics cameraeventanalytics, Provider provider)
    {
        q = new HashMap();
        r = new HashSet();
        s = Collections.newSetFromMap(new ConcurrentHashMap());
        u = new ArrayList();
        b = new ArrayList();
        d = new ArrayList();
        g = new ArrayList();
        F = null;
        I = false;
        i = false;
        N = new HashMap();
        p = false;
        SnapchatApplication.e().a(this);
        D = sendsnapcontroller;
        K = networkanalytics;
        P = discovernewcontentobserver;
        L = dictionaryeasymetric;
        M = mediaviewanalytics;
        E = snapwomb;
        c = storylibrary;
        O = bus;
        H = locationprovider;
        J = cameraeventanalytics;
        t = provider;
    }

    private int A()
    {
        TypedValue typedvalue = new TypedValue();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity != null && fragmentactivity.getTheme() != null)
        {
            fragmentactivity.getTheme().resolveAttribute(0x101004d, typedvalue, true);
            ((WindowManager)(WindowManager)fragmentactivity.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            return (int)TypedValue.complexToDimension(typedvalue.data, displaymetrics);
        } else
        {
            return 0;
        }
    }

    private void B()
    {
        V = (ImageView)d(0x7f0a02fa);
        k = d(0x7f0a0300);
        S = d(0x7f0a02f6);
        T = d(0x7f0a02f3);
        j = (EditText)d(0x7f0a02f4);
        U = d(0x7f0a0034);
        W = (DiscoverButtonView)d(0x7f0a02f5);
        n = d(0x7f0a0301);
        o = (TextView)d(0x7f0a0302);
        TextView textview = o;
        Resources resources = getResources();
        Object aobj[] = new Object[1];
        aobj[0] = EmojiUtils.a(EmojiUtils.f);
        textview.setText(resources.getString(0x7f0c00d6, aobj));
        C = (SnapchatPtrFrameLayout)d(0x7f0a02f8);
        l = d(0x7f0a02fb);
        m = (Button)d(0x7f0a02ff);
        FontUtils.a(m, getActivity().getAssets());
        m.setBackgroundResource(l());
        m.setOnClickListener(new android.view.View.OnClickListener() {

            final StoriesFragment a;

            public void onClick(View view)
            {
                BusProvider.a().a(new StartFragmentEvent(new AddFriendsFragment()));
            }

            
            {
                a = StoriesFragment.this;
                super();
            }
        });
        C();
        D();
        B.setOnTouchListener(new android.view.View.OnTouchListener() {

            final StoriesFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (a.h)
                {
                    StoriesFragment.a(a).hideSoftInputFromWindow(a.getView().getWindowToken(), 0);
                }
                return false;
            }

            
            {
                a = StoriesFragment.this;
                super();
            }
        });
        W.setOnClickListener(new android.view.View.OnClickListener() {

            final StoriesFragment a;

            public void onClick(View view)
            {
                if (a.h)
                {
                    StoriesFragment.b(a);
                }
                StoriesFragment.c(a).a(4, true);
            }

            
            {
                a = StoriesFragment.this;
                super();
            }
        });
        P.a(new com.snapchat.android.discover.controller.DiscoverNewContentObserver.DiscoverNewContentListener() {

            final StoriesFragment a;

            public void a(boolean flag)
            {
                StoriesFragment.d(a).post(new Runnable(this, flag) {

                    final boolean a;
                    final _cls4 b;

                    public void run()
                    {
                        if (a)
                        {
                            StoriesFragment.d(b.a).a();
                            return;
                        } else
                        {
                            StoriesFragment.d(b.a).b();
                            return;
                        }
                    }

            
            {
                b = _pcls4;
                a = flag;
                super();
            }
                });
            }

            
            {
                a = StoriesFragment.this;
                super();
            }
        });
        if (P.c())
        {
            W.a();
        }
        S.setOnClickListener(new android.view.View.OnClickListener() {

            final StoriesFragment a;

            public void onClick(View view)
            {
                StoriesFragment.e(a);
            }

            
            {
                a = StoriesFragment.this;
                super();
            }
        });
        d(0x7f0a02f2).setOnClickListener(new android.view.View.OnClickListener() {

            final StoriesFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = StoriesFragment.this;
                super();
            }
        });
        j.addTextChangedListener(new TextWatcher(this) {

            final StoriesFragment a;
            final StoriesFragment b;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
                if (TextUtils.isEmpty(charsequence))
                {
                    StoriesFragment.f(b).setFastScrollAlwaysVisible(true);
                    StoriesFragment.f(b).setFastScrollEnabled(true);
                    StoriesFragment.g(b).setVisibility(4);
                } else
                {
                    (new SharedStorySearchTask(charsequence.toString(), a)).executeOnExecutor(ScExecutors.b, new String[0]);
                    StoriesFragment.f(b).setFastScrollAlwaysVisible(false);
                    StoriesFragment.f(b).setFastScrollEnabled(false);
                    StoriesFragment.g(b).setVisibility(0);
                }
                b.q();
                b.w();
            }

            
            {
                b = StoriesFragment.this;
                a = storiesfragment1;
                super();
            }
        });
        U.setOnClickListener(new android.view.View.OnClickListener() {

            final StoriesFragment a;

            public void onClick(View view)
            {
                a.j.setText("");
            }

            
            {
                a = StoriesFragment.this;
                super();
            }
        });
        k();
    }

    private void C()
    {
        o();
        f = new StoriesAdapter(getActivity(), g, this, E, StoriesThumbnailCache.a());
        p();
        B = (StickyListHeadersListView)d(0x7f0a02f9);
        B.setAdapter(f);
        B.setFastScrollAlwaysVisible(true);
        B.setTextFilterEnabled(true);
        registerForContextMenu(B);
    }

    private void D()
    {
        C.setPtrHandler(new PtrHandler() {

            final StoriesFragment a;

            public void a(PtrFrameLayout ptrframelayout)
            {
                StoriesFragment.i(a);
            }

            public boolean a(PtrFrameLayout ptrframelayout, View view, View view1)
            {
                return ListViewUtils.a(StoriesFragment.f(a));
            }

            
            {
                a = StoriesFragment.this;
                super();
            }
        });
    }

    private void E()
    {
        User user = (User)t.get();
        if (user != null)
        {
            UserPrefs.ak();
            SyncAllTask.b(user);
            if (!user.e().isEmpty())
            {
                (new UpdateStoriesTask()).executeOnExecutor(ScExecutors.b, new String[0]);
            }
        }
    }

    private List F()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = q.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StoryGroup storygroup = (StoryGroup)iterator.next();
            if (storygroup.m() > 0)
            {
                if (storygroup instanceof MyStoryGroup)
                {
                    arraylist.addAll(0, a(new MyStoryGroupStoriesListItem(getString(0x7f0c012b)), storygroup));
                } else
                {
                    arraylist.addAll(a(new StoryGroupStoriesListItem(storygroup), storygroup));
                }
            }
        } while (true);
        return arraylist;
    }

    private void K()
    {
        S.setVisibility(4);
        T.setVisibility(8);
        j.setVisibility(0);
        j.requestFocus();
        v.showSoftInput(j, 0);
        h = true;
    }

    private void L()
    {
        android.content.Intent intent = H();
        String s1 = e.a(intent);
        if (s1 != null)
        {
            e.b(intent);
            K();
            j.setText(s1);
            if (!User.a(getActivity()).d(s1))
            {
                (new DeepLinkAddFriendDialog(getActivity(), s1)).show();
            }
        }
    }

    private void M()
    {
        S.setVisibility(0);
        T.setVisibility(0);
        j.setText("");
        j.clearFocus();
        v.hideSoftInputFromWindow(getView().getWindowToken(), 0);
        j.setVisibility(4);
        h = false;
        u.clear();
        v();
        n();
    }

    private void N()
    {
        for (int i1 = B.getFirstVisiblePosition(); i1 <= B.getLastVisiblePosition(); i1++)
        {
            StoriesListItem storieslistitem = (StoriesListItem)f.getItem(i1);
            if (storieslistitem instanceof SponsoredStoryCollection)
            {
                a((SponsoredStoryCollection)storieslistitem);
            }
        }

    }

    private void O()
    {
        Iterator iterator = N.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (((Boolean)N.get(s1)).booleanValue())
            {
                N.put(s1, Boolean.valueOf(false));
            }
        } while (true);
    }

    private void P()
    {
        if (i)
        {
            Iterator iterator = N.keySet().iterator();
            while (iterator.hasNext()) 
            {
                String s1 = (String)iterator.next();
                if (!((Boolean)N.get(s1)).booleanValue())
                {
                    AnalyticsEvents.e(s1);
                    N.put(s1, Boolean.valueOf(true));
                }
            }
        }
    }

    private void Q()
    {
        Iterator iterator = s.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (((SharedStorySearchResult)iterator.next()).e())
            {
                iterator.remove();
            }
        } while (true);
    }

    private void R()
    {
        int i1 = b.size();
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StoryCollection storycollection = (StoryCollection)iterator.next();
            if (storycollection instanceof SponsoredStoryCollection)
            {
                ((SponsoredStoryCollection)storycollection).t();
            }
            if (storycollection == null || storycollection.y().isEmpty())
            {
                iterator.remove();
            }
        } while (true);
        if (b.size() != i1)
        {
            v();
        }
    }

    private void S()
    {
        B.post(new Runnable() {

            final StoriesFragment a;

            public void run()
            {
                StoriesFragment.f(a).setSelection(0);
                View view = StoriesFragment.f(a).getChildAt(0);
                if (view != null)
                {
                    view.requestFocus();
                }
            }

            
            {
                a = StoriesFragment.this;
                super();
            }
        });
    }

    private int a(StoryGroup storygroup)
    {
        int i1 = 0;
        int j1 = 0;
        do
        {
label0:
            {
                if (i1 < B.getLastVisiblePosition() - B.getFirstVisiblePosition())
                {
                    View view = B.getChildAt(i1);
                    StoriesListItem storieslistitem = ((StoriesListItemViewHolder)B.getWrappedView(i1).getTag()).G;
                    j1 += Math.min(view.getBottom(), B.getHeight()) - Math.max(view.getTop(), 0);
                    if (!(storieslistitem instanceof StoryGroupStoriesListItem) || !((StoryGroupStoriesListItem)storieslistitem).e().equals(storygroup))
                    {
                        break label0;
                    }
                }
                return j1;
            }
            i1++;
        } while (true);
    }

    private ValueAnimator a(View view)
    {
        int ai[] = new int[2];
        ai[0] = view.getMeasuredHeight();
        ai[1] = 0;
        ValueAnimator valueanimator = ValueAnimator.ofInt(ai);
        valueanimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener(view) {

            final View a;
            final StoriesFragment b;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                int i1 = ((Integer)valueanimator1.getAnimatedValue()).intValue();
                android.view.ViewGroup.LayoutParams layoutparams = a.getLayoutParams();
                layoutparams.height = i1;
                a.setLayoutParams(layoutparams);
            }

            
            {
                b = StoriesFragment.this;
                a = view;
                super();
            }
        });
        return valueanimator;
    }

    static InputMethodManager a(StoriesFragment storiesfragment)
    {
        return storiesfragment.v;
    }

    static StoriesListItem a(StoriesFragment storiesfragment, StoriesListItem storieslistitem)
    {
        storiesfragment.R = storieslistitem;
        return storieslistitem;
    }

    static String a(StoriesFragment storiesfragment, String s1)
    {
        storiesfragment.F = s1;
        return s1;
    }

    private List a(StoryGroupStoriesListItem storygroupstorieslistitem, StoryGroup storygroup)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(storygroupstorieslistitem);
        if (r.contains(storygroup.c()))
        {
            arraylist.addAll(storygroup.a(true));
        }
        return arraylist;
    }

    static void a(StoriesFragment storiesfragment, Friend friend)
    {
        storiesfragment.b(friend);
    }

    private void a(StoriesListItem storieslistitem, int i1, com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext loadingreceivedsnapcontext)
    {
        if (!(storieslistitem instanceof RecentStoryCollection)) goto _L2; else goto _L1
_L1:
        ((StoryCollection)storieslistitem).a(i1, null, true, loadingreceivedsnapcontext);
_L4:
        return;
_L2:
        if (!(storieslistitem instanceof Friend))
        {
            continue; /* Loop/switch isn't completed */
        }
        StoryCollection storycollection = c.c(storieslistitem.a());
        if (storycollection != null)
        {
            storycollection.a(i1, null, true, loadingreceivedsnapcontext);
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (!(storieslistitem instanceof StorySnapLogbook)) goto _L4; else goto _L3
_L3:
        StorySnap storysnap = ((StorySnapLogbook)storieslistitem).e();
        if (!storysnap.U() && !storysnap.Z())
        {
            storysnap.a(loadingreceivedsnapcontext);
            (new LoadStorySnapMediaTask(storysnap)).executeOnExecutor(ScExecutors.b, new Void[0]);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    private void a(StoryGroup storygroup, boolean flag)
    {
        int i1;
        if (storygroup == null)
        {
            return;
        }
        r.remove(storygroup.c());
        i1 = storygroup.m();
        if (!flag || i1 <= 0) goto _L2; else goto _L1
_L1:
        int j1;
        int i2;
        ArrayList arraylist;
        Iterator iterator;
        j1 = B.getFirstVisiblePosition();
        int k1 = B.getLastVisiblePosition() - j1;
        int l1 = 0;
        int j2;
label0:
        do
        {
label1:
            {
                i2 = 0;
                if (l1 < k1)
                {
                    StoriesListItem storieslistitem2 = ((StoriesListItemViewHolder)B.getWrappedView(l1).getTag()).G;
                    if (!(storieslistitem2 instanceof StoryGroupStoriesListItem) || !TextUtils.equals(((StoryGroupStoriesListItem)storieslistitem2).d(), storygroup.c()))
                    {
                        break label1;
                    }
                    i2 = l1;
                }
                arraylist = new ArrayList(i1);
                j2 = Math.min(i2 + i1, -1 + B.getChildCount());
                for (int k2 = i2 + 1; k2 <= j2; k2++)
                {
                    arraylist.add(a(B.getWrappedView(k2)));
                }

                break label0;
            }
            l1++;
        } while (true);
        ArrayList arraylist1 = new ArrayList();
        for (int l2 = 1 + (j1 + j2); l2 <= i1 + (j1 + i2); l2++)
        {
            arraylist1.add(g.get(l2));
        }

        iterator = arraylist1.iterator();
_L4:
        if (iterator.hasNext())
        {
            StoriesListItem storieslistitem = (StoriesListItem)iterator.next();
            int i3 = 1 + (j1 + i2);
            do
            {
                if (i3 > i1 + (j1 + i2))
                {
                    continue; /* Loop/switch isn't completed */
                }
                StoriesListItem storieslistitem1 = (StoriesListItem)g.get(i3);
                if ((storieslistitem1 instanceof StorySnapLogbook) && ((StorySnapLogbook)storieslistitem1).equals(storieslistitem))
                {
                    g.remove(i3);
                    continue; /* Loop/switch isn't completed */
                }
                i3++;
            } while (true);
        } else
        {
            f.notifyDataSetChanged();
            AnimatorSet animatorset = new AnimatorSet();
            animatorset.playTogether(arraylist);
            animatorset.setDuration(300L);
            animatorset.addListener(new android.animation.Animator.AnimatorListener(storygroup) {

                final StoryGroup a;
                final StoriesFragment b;

                public void onAnimationCancel(Animator animator)
                {
                }

                public void onAnimationEnd(Animator animator)
                {
                    b.n();
                    b.v();
                    b.f.a();
                    StoriesFragment.a(b, null);
                }

                public void onAnimationRepeat(Animator animator)
                {
                }

                public void onAnimationStart(Animator animator)
                {
                    StoriesFragment.a(b, a.c());
                }

            
            {
                b = StoriesFragment.this;
                a = storygroup;
                super();
            }
            });
            animatorset.start();
            return;
        }
_L2:
        v();
        f.a();
        return;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(StorySnapLogbook storysnaplogbook)
    {
        String s1 = storysnaplogbook.e().ay();
        E.a(s1, D);
        c();
    }

    private void a(SyncAllCompletedEvent syncallcompletedevent)
    {
        User user = (User)t.get();
        if (user != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        boolean flag = syncallcompletedevent.b();
        boolean flag1 = syncallcompletedevent.c();
        java.util.UUID uuid = syncallcompletedevent.a();
        C.e();
        k.setVisibility(8);
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        u();
        t();
        a(user);
        if (a != null)
        {
            x();
        }
        v();
        Q();
        if (flag1 && getUserVisibleHint())
        {
            K.a(com.snapchat.android.analytics.NetworkAnalytics.PageContext.STORY, uuid);
            if (b.size() == 0 || ((RecentStoryCollection)b.get(0)).o())
            {
                K.b(com.snapchat.android.analytics.NetworkAnalytics.PageContext.STORY, uuid);
            }
        }
        AtomicBoolean atomicboolean = new AtomicBoolean(flag1);
        AtomicInteger atomicinteger = new AtomicInteger();
        a(atomicboolean, atomicinteger);
        y();
        Iterator iterator = c.g().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StorySnapLogbook storysnaplogbook = (StorySnapLogbook)iterator.next();
            if (!storysnaplogbook.e().U() && !storysnaplogbook.e().Z())
            {
                storysnaplogbook.e().a(com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext.LOAD_STORY_SNAP_BY_DEFAULT);
                (new LoadStorySnapMediaTask(storysnaplogbook.e(), false, atomicboolean, atomicinteger)).executeOnExecutor(ScExecutors.b, new Void[0]);
            }
        } while (true);
        if (!getUserVisibleHint()) goto _L1; else goto _L3
_L3:
        c.o();
        O.a(new RefreshCameraNotificationBoxesEvent());
        return;
        if (!((LandingPageActivity)getActivity()).g()) goto _L1; else goto _L4
_L4:
        AlertDialogUtils.a(0x7f0c00ae, getActivity());
        return;
    }

    private void a(AtomicBoolean atomicboolean, AtomicInteger atomicinteger)
    {
        Iterator iterator;
        int i1;
        int j1;
        iterator = b.iterator();
        i1 = 0;
        j1 = 0;
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        int k1;
        int l1;
        boolean flag;
        boolean flag1;
        RecentStoryCollection recentstorycollection = (RecentStoryCollection)iterator.next();
        if (recentstorycollection.N())
        {
            if (i1 >= 2)
            {
                break MISSING_BLOCK_LABEL_143;
            }
            k1 = i1 + 1;
            l1 = j1;
            flag = true;
            flag1 = false;
        } else
        {
            if (j1 >= 3)
            {
                break MISSING_BLOCK_LABEL_143;
            }
            int i2 = j1 + 1;
            k1 = i1;
            l1 = i2;
            flag1 = true;
            flag = false;
        }
_L5:
        if (flag || flag1)
        {
            recentstorycollection.a(3, null, false, com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext.LOAD_STORY_SNAP_BY_DEFAULT, atomicboolean, atomicinteger);
        }
        if (l1 != 3 || k1 != 2) goto _L3; else goto _L2
_L2:
        return;
_L3:
        i1 = k1;
        j1 = l1;
          goto _L4
        k1 = i1;
        l1 = j1;
        flag = false;
        flag1 = false;
          goto _L5
    }

    private Bitmap b(int i1)
    {
        C.setDrawingCacheEnabled(true);
        Bitmap bitmap = C.getDrawingCache();
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap, 0, i1, bitmap.getWidth(), bitmap.getHeight() - i1);
        C.setDrawingCacheEnabled(false);
        return bitmap1;
    }

    static void b(StoriesFragment storiesfragment)
    {
        storiesfragment.M();
    }

    private void b(Friend friend)
    {
        User user = (User)t.get();
        if (user == null)
        {
            return;
        } else
        {
            user.e(friend);
            c.d(friend.a());
            f.a();
            s();
            return;
        }
    }

    private void b(StoryGroup storygroup)
    {
        r.add(storygroup.c());
        int i1 = storygroup.m();
        if (i1 == 0)
        {
            f.notifyDataSetChanged();
            return;
        }
        int j1 = a(storygroup);
        int k1;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        Bitmap bitmap;
        TranslateAnimation translateanimation;
        if (C.b())
        {
            k1 = j1 + C.getHeaderHeight();
        } else
        {
            k1 = j1;
        }
        layoutparams = (android.widget.RelativeLayout.LayoutParams)V.getLayoutParams();
        if (layoutparams != null)
        {
            layoutparams.setMargins(0, j1, 0, 0);
            V.setLayoutParams(layoutparams);
            x.requestLayout();
        }
        bitmap = b(k1);
        V.setImageBitmap(bitmap);
        V.setVisibility(0);
        translateanimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, i1 * G);
        translateanimation.setDuration(300L);
        translateanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener(storygroup) {

            final StoryGroup a;
            final StoriesFragment b;

            public void onAnimationEnd(Animation animation)
            {
                StoriesFragment.h(b).setVisibility(8);
                StoriesFragment.a(b, null);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                StoriesFragment.a(b, a.c());
            }

            
            {
                b = StoriesFragment.this;
                a = storygroup;
                super();
            }
        });
        v();
        a(8);
        V.startAnimation(translateanimation);
    }

    static FragmentPageChangeCallback c(StoriesFragment storiesfragment)
    {
        return storiesfragment.Q;
    }

    static DiscoverButtonView d(StoriesFragment storiesfragment)
    {
        return storiesfragment.W;
    }

    static void e(StoriesFragment storiesfragment)
    {
        storiesfragment.K();
    }

    static StickyListHeadersListView f(StoriesFragment storiesfragment)
    {
        return storiesfragment.B;
    }

    static View g(StoriesFragment storiesfragment)
    {
        return storiesfragment.U;
    }

    static ImageView h(StoriesFragment storiesfragment)
    {
        return storiesfragment.V;
    }

    static void i(StoriesFragment storiesfragment)
    {
        storiesfragment.E();
    }

    protected void a(int i1)
    {
        l.setVisibility(i1);
        m.setVisibility(i1);
    }

    public void a(StoriesListItem storieslistitem)
    {
        if ((storieslistitem instanceof StorySnapLogbook) && ((StorySnapLogbook)storieslistitem).e().aE())
        {
            a((StorySnapLogbook)storieslistitem);
        } else
        if (b(storieslistitem))
        {
            if (storieslistitem.equals(R))
            {
                J.a(com.snapchat.android.analytics.CameraEventAnalytics.CameraContext.DOUBLE_TAP);
                O.a(new DoubleTapToReplyEvent(storieslistitem.a(), 3));
            } else
            {
                R = storieslistitem;
            }
            (new Handler()).postDelayed(new Runnable() {

                final StoriesFragment a;

                public void run()
                {
                    StoriesFragment.a(a, null);
                }

            
            {
                a = StoriesFragment.this;
                super();
            }
            }, 450L);
            return;
        }
    }

    public void a(SponsoredStoryCollection sponsoredstorycollection)
    {
        String s1 = sponsoredstorycollection.u();
        if (s1 == null)
        {
            return;
        }
        Boolean boolean1 = (Boolean)N.get(s1);
        if (boolean1 == null || !boolean1.booleanValue())
        {
            N.put(s1, Boolean.valueOf(false));
        }
        P();
    }

    protected void a(User user)
    {
        d.clear();
        d.addAll(user.i());
    }

    public void a(ArrayList arraylist)
    {
        s.clear();
        s.addAll(arraylist);
        Q();
        v();
    }

    protected void a(List list)
    {
        if (list.size() > 0 && ((RecentStoryCollection)list.get(0)).o())
        {
            K.a(com.snapchat.android.analytics.NetworkAnalytics.PageContext.STORY);
        }
    }

    public boolean a(Friend friend)
    {
        return u.contains(friend);
    }

    public boolean a(String s1)
    {
        return r.contains(s1);
    }

    public Editable b()
    {
        return j.getText();
    }

    protected boolean b(StoriesListItem storieslistitem)
    {
        if (!(storieslistitem instanceof RecentStoryCollection)) goto _L2; else goto _L1
_L1:
        if (((RecentStoryCollection)storieslistitem).N()) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (storieslistitem instanceof Friend)
        {
            if (((Friend)storieslistitem).H())
            {
                return false;
            }
        } else
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void c()
    {
        u();
        v();
    }

    protected boolean c_()
    {
        return super.isAdded();
    }

    public com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext d()
    {
        return com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.STORIES;
    }

    protected void d_()
    {
        super.d_();
        AnalyticsEvents.d();
        L.b("FIRST_MEDIA_OPENED");
        M.d("story");
        String s1;
        for (Iterator iterator = (new ArrayList(r)).iterator(); iterator.hasNext(); a((StoryGroup)q.get(s1), false))
        {
            s1 = (String)iterator.next();
        }

        r.clear();
        f.a();
        if (B != null)
        {
            B.setSelectionAfterHeaderView();
        }
        if (h)
        {
            M();
        }
        R();
        a = null;
        k();
        i = false;
        O();
    }

    public void e(boolean flag)
    {
        O.a(new CameraStateEvent(true));
    }

    public boolean e()
    {
        if (h)
        {
            M();
            return true;
        } else
        {
            return false;
        }
    }

    public String g()
    {
        return "StoriesFragment";
    }

    public boolean h()
    {
        return h;
    }

    public void i()
    {
        ViewUtils.a(G(), x, getActivity());
    }

    protected void k()
    {
        if (!UserPrefs.au())
        {
            n.setVisibility(0);
            return;
        } else
        {
            n.setVisibility(8);
            return;
        }
    }

    protected int l()
    {
        return 0x7f020118;
    }

    protected void n()
    {
        if (f == null)
        {
            return;
        }
        if (f.getCount() != 0 || h || !p)
        {
            a(8);
            return;
        } else
        {
            a(0);
            return;
        }
    }

    protected void o()
    {
        if (t.get() == null)
        {
            k.setVisibility(0);
            return;
        } else
        {
            k.setVisibility(8);
            return;
        }
    }

    public void onAttach(Activity activity)
    {
        TimeLogger.a();
        super.onAttach(activity);
        Q = (FragmentPageChangeCallback)activity;
        TimeLogger.b();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        TimeLogger.a();
        x = layoutinflater.inflate(0x7f04008b, viewgroup, false);
        v = (InputMethodManager)getActivity().getSystemService("input_method");
        B();
        G = A();
        i();
        TimeLogger.b();
        return x;
    }

    public void onGetLocationDataTaskCompletedEvent(GetLocationDataTaskCompletedEvent getlocationdatataskcompletedevent)
    {
        a(new SyncAllCompletedEvent(null, true, false));
    }

    public void onHideSnapStoryEvent(HideSnapStoryEvent hidesnapstoryevent)
    {
        i();
        f.notifyDataSetChanged();
    }

    public void onLoadStoryMediaCompleteEvent(LoadStoryMediaCompleteEvent loadstorymediacompleteevent)
    {
        a(b);
    }

    public void onPause()
    {
        super.onPause();
        a = null;
    }

    public void onPostStorySnapRequestCompleteEvent(PostStorySnapRequestCompleteEvent poststorysnaprequestcompleteevent)
    {
        c();
    }

    public void onRecentStoryCollectionCompletedViewingEvent(RecentStoryCollectionCompletedViewingEvent recentstorycollectioncompletedviewingevent)
    {
        Iterator iterator = b.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        RecentStoryCollection recentstorycollection = (RecentStoryCollection)iterator.next();
        if (!recentstorycollection.a().equals(recentstorycollectioncompletedviewingevent.a.aB())) goto _L4; else goto _L3
_L3:
        if (recentstorycollection == null)
        {
            return;
        }
        if (a != null && !a.a().equals(recentstorycollection.a()))
        {
            g.remove(a);
            b.remove(a);
        }
        a = recentstorycollection;
        f.notifyDataSetChanged();
        r();
        return;
_L2:
        recentstorycollection = null;
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void onRefreshFriendExistsTask(RefreshOnFriendExistsTask refreshonfriendexiststask)
    {
        f.notifyDataSetChanged();
    }

    public void onRefreshOnFriendActionEvent(RefreshOnFriendActionEvent refreshonfriendactionevent)
    {
        Friend friend = refreshonfriendactionevent.a();
        if (friend != null && refreshonfriendactionevent.b() == FriendAction.ADD)
        {
            u.add(friend);
            if (TextUtils.equals(friend.a(), j.getText().toString()))
            {
                friend.a(com.snapchat.android.model.Friend.SuggestType.USERNAME);
            } else
            {
                friend.a(com.snapchat.android.model.Friend.SuggestType.ADDRESS_BOOK);
            }
        }
        q();
    }

    public void onResume()
    {
        TimeLogger.a();
        super.onResume();
        I = false;
        User user = (User)t.get();
        if (user != null)
        {
            if (!user.e().isEmpty())
            {
                (new UpdateStoriesTask()).executeOnExecutor(ScExecutors.b, new String[0]);
            }
            p();
        }
        S();
        L();
        TimeLogger.b();
    }

    public void onSanitizeStoriesFragmentEvent(SanitizeStoriesFragmentEvent sanitizestoriesfragmentevent)
    {
        User user = (User)t.get();
        if (user == null)
        {
            return;
        }
        t();
        a(user);
        if (a != null)
        {
            x();
        }
        v();
    }

    public void onScrollStoriesFragmentToTopEvent(ScrollStoriesFragmentToTopEvent scrollstoriesfragmenttotopevent)
    {
        S();
    }

    public void onSharedStoryButtonClickedEvent(SharedStoryButtonClickedEvent sharedstorybuttonclickedevent)
    {
        StoryGroup storygroup = sharedstorybuttonclickedevent.a;
        String s1 = storygroup.e();
        boolean flag = storygroup.f();
        String s2 = null;
        if (flag)
        {
            s2 = storygroup.g();
        }
        if (TextUtils.isEmpty(s2))
        {
            Object aobj[] = new Object[1];
            aobj[0] = storygroup.e();
            s2 = LocalizationUtils.a(0x7f0c0148, aobj);
        }
        OneButtonDialog onebuttondialog = new OneButtonDialog(getActivity(), s2) {

            final StoriesFragment a;

            protected void a()
            {
            }

            
            {
                a = StoriesFragment.this;
                super(context, s1);
            }
        };
        onebuttondialog.setTitle(s1);
        onebuttondialog.show();
    }

    public void onSharedStoryFriendButtonClickedEvent(SharedStoryFriendButtonClickedEvent sharedstoryfriendbuttonclickedevent)
    {
        Friend friend;
        String s1;
        friend = sharedstoryfriendbuttonclickedevent.a;
        s1 = friend.l();
        if (!TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        if (!friend.H()) goto _L4; else goto _L3
_L3:
        String s2 = friend.o();
_L6:
        String s3 = friend.m();
        if (TextUtils.isEmpty(s3))
        {
            Object aobj[] = new Object[1];
            aobj[0] = friend.o();
            s3 = LocalizationUtils.a(0x7f0c0021, aobj);
        }
        TwoButtonDialog twobuttondialog = new TwoButtonDialog(getActivity(), s3, LocalizationUtils.a(0x7f0c0142, new Object[0]), LocalizationUtils.a(0x7f0c0108, new Object[0]), friend) {

            final Friend a;
            final StoriesFragment b;

            protected void a()
            {
                (new HideSharedStoryTask(a.a())).g();
                StoriesFragment.a(b, a);
            }

            protected void b()
            {
            }

            
            {
                b = StoriesFragment.this;
                a = friend;
                super(context, s1, s2, s3);
            }
        };
        twobuttondialog.setTitle(s2);
        twobuttondialog.show();
        return;
_L4:
        s1 = friend.a();
        if (!TextUtils.isEmpty(friend.b()))
        {
            s2 = (new StringBuilder()).append(s1).append(" (").append(friend.b()).append(")").toString();
            continue; /* Loop/switch isn't completed */
        }
_L2:
        s2 = s1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onSponsoredStoryViewingStartedEvent(SponsoredStoryViewingStartedEvent sponsoredstoryviewingstartedevent)
    {
        f.notifyDataSetChanged();
    }

    public void onStoriesNotifyDatasetChangedEvent(StoriesNotifyDatasetChangedEvent storiesnotifydatasetchangedevent)
    {
        f.notifyDataSetChanged();
    }

    public void onStoryListPressedEvent(StoryListPressedEvent storylistpressedevent)
    {
        SnapListItemHandler.a().a(storylistpressedevent.a(), getActivity());
    }

    public void onStoryListTappedEvent(StoryListTappedEvent storylisttappedevent)
    {
        M.a("story");
        a(storylisttappedevent.a, 3, com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext.LOAD_STORY_SNAP_BY_TAP);
    }

    public void onStorySnapPostEvent(StorySnapPostEvent storysnappostevent)
    {
        c();
    }

    public void onStoryThumbnailLoadedEvent(StoryThumbnailLoadedEvent storythumbnailloadedevent)
    {
        int i1 = 0;
        while (i1 <= B.getChildCount()) 
        {
            View view = B.getWrappedView(i1);
            if (view != null)
            {
                ImageView imageview = (ImageView)view.findViewById(0x7f0a0224);
                if (imageview != null && imageview.getTag().equals(storythumbnailloadedevent.a))
                {
                    f.a(storythumbnailloadedevent.a, imageview);
                }
            }
            i1++;
        }
    }

    public void onSyncAllCompletedEvent(SyncAllCompletedEvent syncallcompletedevent)
    {
        a(syncallcompletedevent);
    }

    public void onToggleStoryEvent(ToggleStoryEvent togglestoryevent)
    {
        if (F != null)
        {
            return;
        }
        StoryGroup storygroup = togglestoryevent.a();
        if (r.contains(storygroup.c()))
        {
            a(storygroup, true);
            return;
        } else
        {
            b(storygroup);
            f.a();
            return;
        }
    }

    public void onUserLoadedEvent(UserLoadedEvent userloadedevent)
    {
        p();
        f.notifyDataSetChanged();
        k.setVisibility(8);
        p = true;
    }

    protected void p()
    {
        User user = (User)t.get();
        if (user == null)
        {
            return;
        } else
        {
            a(user);
            t();
            u();
            v();
            return;
        }
    }

    protected void q()
    {
        User user = (User)t.get();
        if (user != null && c_())
        {
            boolean flag;
            if (h && !TextUtils.isEmpty(j.getText()))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            g.clear();
            if (!flag)
            {
                g.addAll(F());
                g.addAll(b);
            }
            g.addAll(d);
            if (flag)
            {
                ArrayList arraylist = new ArrayList();
                HashSet hashset = new HashSet(d);
                HashSet hashset1 = new HashSet(user.s());
                Iterator iterator = user.r().iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    Friend friend1 = (Friend)iterator.next();
                    if (!friend1.x() && !TextUtils.equals(UserPrefs.k(), friend1.a()) && !hashset.contains(friend1) && !hashset1.contains(friend1))
                    {
                        arraylist.add(friend1);
                    }
                } while (true);
                arraylist.addAll(user.o());
                Collections.sort(arraylist);
                g.addAll(arraylist);
                ArrayList arraylist1 = new ArrayList();
                Iterator iterator1 = hashset1.iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        break;
                    }
                    Friend friend = (Friend)iterator1.next();
                    if (!friend.x() && !TextUtils.equals(UserPrefs.k(), friend.a()) && !hashset.contains(friend))
                    {
                        arraylist1.add(friend);
                    }
                } while (true);
                Collections.sort(arraylist1);
                g.addAll(arraylist1);
                return;
            }
        }
    }

    protected void r()
    {
        Iterator iterator = b.iterator();
        int i1 = 0;
        do
        {
            int j1;
label0:
            {
                if (iterator.hasNext())
                {
                    RecentStoryCollection recentstorycollection = (RecentStoryCollection)iterator.next();
                    if (!recentstorycollection.l().isEmpty())
                    {
                        i1++;
                        recentstorycollection.a(3, null, true, com.snapchat.android.analytics.ReceivedSnapAnalytics.LoadingReceivedSnapContext.LOAD_STORY_SNAP_BY_DEFAULT);
                    }
                    j1 = i1;
                    if (j1 < 3)
                    {
                        break label0;
                    }
                }
                return;
            }
            i1 = j1;
        } while (true);
    }

    protected void s()
    {
        User user = (User)t.get();
        if (user == null)
        {
            return;
        } else
        {
            a(user);
            t();
            v();
            return;
        }
    }

    protected void s_()
    {
        TimeLogger.a();
        M.b("story");
        super.s_();
        AnalyticsEvents.c();
        if (getActivity() instanceof LandingPageActivity)
        {
            ((LandingPageActivity)getActivity()).a().a(com.snapchat.android.analytics.NotificationAnalytics.NotificationDestinationType.MY_FRIENDS);
        }
        if (!I)
        {
            H.b();
            I = true;
        }
        O.a(new CancelReplyEvent());
        c.o();
        O.a(new RefreshCameraNotificationBoxesEvent());
        O.a(new ScrollFeedToTopEvent());
        getActivity().setVolumeControlStream(3);
        k();
        i = true;
        N();
        TimeLogger.b();
    }

    protected void t()
    {
        b.clear();
        b.addAll(c.q());
    }

    public void u()
    {
        q.clear();
        q.putAll(c.l());
    }

    protected void v()
    {
        q();
        w();
        f.notifyDataSetChanged();
        n();
    }

    protected void w()
    {
        if (h)
        {
            g.addAll(s);
            f.getFilter().filter(j.getText());
        }
    }

    protected void x()
    {
        StoryCollection storycollection = c.c(a.a());
        if (storycollection == null)
        {
            a = null;
            return;
        }
        int i1 = 0;
        boolean flag = false;
        int j1 = 0;
        while (i1 < b.size()) 
        {
            String s1 = ((RecentStoryCollection)b.get(i1)).a();
            if (!flag && TextUtils.equals(s1, a.a()))
            {
                flag = true;
            }
            StoryCollection storycollection1 = c.c(s1);
            if (storycollection1 != null)
            {
                if (storycollection.Q() == storycollection1.Q())
                {
                    if (((StorySnap)storycollection1.l().get(0)).ae() > ((StorySnap)storycollection.l().get(0)).ae())
                    {
                        j1 = i1 + 1;
                    }
                } else
                if (storycollection.Q().ordinal() > storycollection1.Q().ordinal())
                {
                    j1 = i1 + 1;
                }
            }
            i1++;
        }
        if (!flag)
        {
            if (j1 == b.size())
            {
                b.add(a);
                return;
            } else
            {
                b.add(j1, a);
                return;
            }
        } else
        {
            a = null;
            return;
        }
    }

    protected void y()
    {
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            RecentStoryCollection recentstorycollection = (RecentStoryCollection)iterator.next();
            if (recentstorycollection.k())
            {
                recentstorycollection.a(3, null, false);
            }
        } while (true);
    }
}
