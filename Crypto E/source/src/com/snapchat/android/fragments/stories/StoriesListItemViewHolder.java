// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.Space;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.camera.transcoding.SaveStoryToGalleryPreferenceWrapper;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.RecentStoryCollection;
import com.snapchat.android.model.SponsoredStoryCollection;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapExtra;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapNote;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.stories.ui.animation.StoriesSecondaryTextAnimation;
import com.snapchat.android.stories.ui.animation.StoriesSecondaryTextHideAnimation;
import com.snapchat.android.stories.ui.animation.StoriesSecondaryTextShowAnimation;
import com.snapchat.android.ui.ProgressiveSaveButton;
import com.snapchat.android.ui.viewholders.AddFriendViewHolder;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.TelephonyUtils;
import com.snapchat.android.util.ViewUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoryGroupStoriesListItem, MyStoryGroupStoriesListItem, StoriesListItem

public class StoriesListItemViewHolder extends AddFriendViewHolder
    implements com.snapchat.android.model.StoryGroup.StoryGroupChangedListener, com.snapchat.android.model.StorySnapLogbook.StorySnapLogbookChangedListener
{

    protected final ViewStub A;
    protected final Button B;
    protected final ProgressBar C;
    protected final CheckBox D;
    protected ScrollView E;
    protected ViewGroup F;
    protected StoriesListItem G;
    protected int H;
    protected boolean I;
    private final Context M;
    private StoriesSecondaryTextAnimation N;
    protected final ImageView i;
    protected final ProgressBar j;
    protected final ImageView k;
    protected final ViewGroup l;
    protected final TextView m;
    protected final ImageView n;
    protected final TextView o;
    protected final ImageView p;
    protected final TextView q;
    protected final LinearLayout r;
    protected final Button s;
    protected final Space t;
    protected final LinearLayout u;
    protected final Button v;
    protected final ProgressBar w;
    protected final LinearLayout x;
    protected final ProgressiveSaveButton y;
    protected final Button z;

    public StoriesListItemViewHolder(View view)
    {
        super(view);
        I = false;
        M = view.getContext();
        i = (ImageView)view.findViewById(0x7f0a0224);
        j = (ProgressBar)view.findViewById(0x7f0a0225);
        k = (ImageView)view.findViewById(0x7f0a0226);
        l = (ViewGroup)view.findViewById(0x7f0a0222);
        m = (TextView)view.findViewById(0x7f0a004d);
        n = (ImageView)view.findViewById(0x7f0a0229);
        o = (TextView)view.findViewById(0x7f0a0228);
        p = (ImageView)view.findViewById(0x7f0a022b);
        q = (TextView)view.findViewById(0x7f0a022a);
        r = (LinearLayout)view.findViewById(0x7f0a0307);
        s = (Button)view.findViewById(0x7f0a0308);
        t = (Space)view.findViewById(0x7f0a0306);
        u = (LinearLayout)view.findViewById(0x7f0a0304);
        v = (Button)view.findViewById(0x7f0a0305);
        w = (ProgressBar)view.findViewById(0x7f0a0309);
        x = (LinearLayout)view.findViewById(0x7f0a030a);
        y = new ProgressiveSaveButton(M);
        x.addView(y);
        z = (Button)view.findViewById(0x7f0a030b);
        B = (Button)view.findViewById(0x7f0a0047);
        A = (ViewStub)view.findViewById(0x7f0a022d);
        C = (ProgressBar)view.findViewById(0x7f0a030c);
        D = (CheckBox)view.findViewById(0x7f0a0049);
    }

    private View a(LinearLayout linearlayout, String s1, boolean flag, LayoutInflater layoutinflater, Context context)
    {
        View view = layoutinflater.inflate(0x7f04008d, linearlayout, false);
        TextView textview = (TextView)view.findViewById(0x7f0a030d);
        textview.setText(s1);
        if (flag)
        {
            textview.setTextColor(context.getResources().getColor(0x7f08002a));
            view.findViewById(0x7f0a022b).setVisibility(0);
            return view;
        } else
        {
            textview.setTextColor(0xff000000);
            view.findViewById(0x7f0a022b).setVisibility(8);
            return view;
        }
    }

    static TextView a(StoriesListItemViewHolder storieslistitemviewholder)
    {
        return storieslistitemviewholder.L;
    }

    static StoriesSecondaryTextAnimation a(StoriesListItemViewHolder storieslistitemviewholder, StoriesSecondaryTextAnimation storiessecondarytextanimation)
    {
        storieslistitemviewholder.N = storiessecondarytextanimation;
        return storiessecondarytextanimation;
    }

    private void a(StoriesListItem storieslistitem, int i1)
    {
        if (storieslistitem instanceof StoryGroupStoriesListItem)
        {
            a((StoryGroupStoriesListItem)storieslistitem, i1);
            return;
        }
        if (storieslistitem instanceof StorySnapLogbook)
        {
            a((StorySnapLogbook)storieslistitem, i1);
            return;
        }
        if (storieslistitem instanceof Friend)
        {
            a((Friend)storieslistitem, i1);
            return;
        }
        if (storieslistitem instanceof RecentStoryCollection)
        {
            a((RecentStoryCollection)storieslistitem, i1);
            return;
        } else
        {
            throw new IllegalStateException("Unexpected feed item type.");
        }
    }

    private void a(StoryGroupStoriesListItem storygroupstorieslistitem, int i1)
    {
        CharSequence charsequence;
        Context context;
        StoryGroup storygroup;
        a(storygroupstorieslistitem, false);
        charsequence = m.getText();
        context = SnapchatApplication.e().getApplicationContext();
        storygroup = storygroupstorieslistitem.e();
        boolean flag;
        boolean flag1;
        boolean flag2;
        if (!(storygroupstorieslistitem instanceof MyStoryGroupStoriesListItem))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        flag1 = SaveStoryToGalleryPreferenceWrapper.a().b();
        if (flag || !flag1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag2)
        {
            x.setVisibility(8);
            return;
        }
        static class _cls6
        {

            static final int a[];
            static final int b[];
            static final int c[];

            static 
            {
                c = new int[FriendAction.values().length];
                try
                {
                    c[FriendAction.BLOCK.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    c[FriendAction.DELETE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    c[FriendAction.SET_DISPLAY_NAME.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                b = new int[com.snapchat.android.model.StorySnapLogbook.ActionState.values().length];
                try
                {
                    b[com.snapchat.android.model.StorySnapLogbook.ActionState.READY.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    b[com.snapchat.android.model.StorySnapLogbook.ActionState.SAVING.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    b[com.snapchat.android.model.StorySnapLogbook.ActionState.SAVED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    b[com.snapchat.android.model.StorySnapLogbook.ActionState.DELETING.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    b[com.snapchat.android.model.StorySnapLogbook.ActionState.DELETED.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                a = new int[com.snapchat.android.model.StoryGroup.ActionState.values().length];
                try
                {
                    a[com.snapchat.android.model.StoryGroup.ActionState.READY.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[com.snapchat.android.model.StoryGroup.ActionState.SAVING.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[com.snapchat.android.model.StoryGroup.ActionState.SAVED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror10)
                {
                    return;
                }
            }
        }

        _cls6.a[storygroup.n().ordinal()];
        JVM INSTR tableswitch 1 3: default 124
    //                   1 135
    //                   2 178
    //                   3 234;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new IllegalStateException("Unhandled action state for story group.");
_L2:
        x.setVisibility(i1);
        y.setAnimationState(com.snapchat.android.ui.ProgressiveSaveButton.AnimationState.a);
_L6:
        ViewUtils.a(x, y, M.getResources().getDimensionPixelSize(0x7f090066));
        return;
_L3:
        x.setVisibility(0);
        y.setAnimationState(com.snapchat.android.ui.ProgressiveSaveButton.AnimationState.b);
        y.setSaveProgress(storygroup.o());
        m.setText(context.getString(0x7f0c018a, new Object[] {
            charsequence
        }));
        continue; /* Loop/switch isn't completed */
_L4:
        x.setVisibility(0);
        y.setAnimationState(com.snapchat.android.ui.ProgressiveSaveButton.AnimationState.c);
        m.setText(context.getString(0x7f0c0189, new Object[] {
            charsequence
        }));
        (new Handler()).postDelayed(new Runnable(storygroup) {

            final StoryGroup a;
            final StoriesListItemViewHolder b;

            public void run()
            {
                if (a.n() == com.snapchat.android.model.StoryGroup.ActionState.SAVED)
                {
                    a.a(com.snapchat.android.model.StoryGroup.ActionState.READY);
                }
            }

            
            {
                b = StoriesListItemViewHolder.this;
                a = storygroup;
                super();
            }
        }, 2000L);
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void a(Friend friend, int i1)
    {
        int j1;
        CharSequence charsequence;
        Context context;
        j1 = 1;
        a(friend, false);
        charsequence = m.getText();
        context = SnapchatApplication.e().getApplicationContext();
        _cls6.c[friend.O().ordinal()];
        JVM INSTR tableswitch 1 3: default 64
    //                   1 136
    //                   2 144
    //                   3 152;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_152;
_L1:
        int k1 = 0;
_L5:
        if (k1 != 0)
        {
            TextView textview = m;
            Object aobj[] = new Object[j1];
            aobj[0] = charsequence;
            textview.setText(context.getString(k1, aobj));
        }
        if (friend.O() == FriendAction.NONE)
        {
            j1 = 0;
        }
        if (j1 != 0)
        {
            z.setVisibility(8);
            C.setVisibility(0);
            return;
        } else
        {
            z.setVisibility(i1);
            C.setVisibility(8);
            return;
        }
_L2:
        k1 = 0x7f0c0034;
          goto _L5
_L3:
        k1 = 0x7f0c00c1;
          goto _L5
        k1 = 0x7f0c018a;
          goto _L5
    }

    private void a(RecentStoryCollection recentstorycollection, int i1)
    {
    }

    private void a(StorySnapLogbook storysnaplogbook, int i1)
    {
        b(storysnaplogbook);
        CharSequence charsequence = m.getText();
        Context context = SnapchatApplication.e().getApplicationContext();
        if (storysnaplogbook.m())
        {
            s.setEnabled(true);
            s.setAlpha(1.0F);
        } else
        {
            s.setEnabled(false);
            s.setAlpha(0.2F);
        }
        switch (_cls6.b[storysnaplogbook.k().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            Resources resources = context.getResources();
            w.setVisibility(8);
            c(i1);
            ViewUtils.a(u, v, resources.getDimensionPixelSize(0x7f090066));
            ViewUtils.a(r, s, resources.getDimensionPixelSize(0x7f090066));
            return;

        case 2: // '\002'
            w.setVisibility(0);
            c(8);
            m.setText(context.getString(0x7f0c018a, new Object[] {
                charsequence
            }));
            return;

        case 3: // '\003'
            w.setVisibility(8);
            c(8);
            m.setText(context.getString(0x7f0c0189, new Object[] {
                charsequence
            }));
            (new Handler()).postDelayed(new Runnable(storysnaplogbook) {

                final StorySnapLogbook a;
                final StoriesListItemViewHolder b;

                public void run()
                {
                    if (a.k() == com.snapchat.android.model.StorySnapLogbook.ActionState.SAVED)
                    {
                        a.a(com.snapchat.android.model.StorySnapLogbook.ActionState.READY);
                    }
                }

            
            {
                b = StoriesListItemViewHolder.this;
                a = storysnaplogbook;
                super();
            }
            }, 2000L);
            return;

        case 4: // '\004'
            w.setVisibility(0);
            c(8);
            m.setText(context.getString(0x7f0c00c1, new Object[] {
                charsequence
            }));
            return;

        case 5: // '\005'
            w.setVisibility(8);
            break;
        }
        c(8);
    }

    static StoriesSecondaryTextAnimation b(StoriesListItemViewHolder storieslistitemviewholder)
    {
        return storieslistitemviewholder.N;
    }

    private void b(Friend friend)
    {
        m.setVisibility(0);
        if (friend.s())
        {
            if (friend.y())
            {
                a(friend.o());
                m.setText(0x7f0c0007);
                return;
            }
            if (friend.r_())
            {
                a(friend.b());
                m.setText(friend.a());
                return;
            } else
            {
                m.setVisibility(8);
                return;
            }
        }
        a(friend.b());
        String s1 = friend.u();
        String s2;
        if (((TelephonyManager)M.getSystemService("phone")).getNetworkCountryIso().equalsIgnoreCase("US"))
        {
            android.text.Editable editable = android.text.Editable.Factory.getInstance().newEditable(s1);
            PhoneNumberUtils.formatNanpNumber(editable);
            s2 = editable.toString();
        } else
        {
            s2 = s1;
        }
        m.setText(M.getString(0x7f0c00a5, new Object[] {
            s2
        }));
    }

    private void b(Friend friend, StoriesAdapter.StoriesAdapterInterface storiesadapterinterface, Set set)
    {
        z();
        A();
        D.setVisibility(0);
        D.setChecked(set.contains(friend.u()));
        D.setOnClickListener(new android.view.View.OnClickListener(friend, set, storiesadapterinterface) {

            final Friend a;
            final Set b;
            final StoriesAdapter.StoriesAdapterInterface c;
            final StoriesListItemViewHolder d;

            public void onClick(View view)
            {
                d.D.setChecked(true);
                String s1 = a.u();
                Context context = StoriesListItemViewHolder.c(d);
                Object aobj[] = new Object[1];
                aobj[0] = UserPrefs.k();
                String s2 = context.getString(0x7f0c0110, aobj);
                TelephonyUtils.a(StoriesListItemViewHolder.c(d), s1, s2);
                if (!b.contains(s1))
                {
                    b.add(s1);
                    AnalyticsEvents.a(FriendAction.INVITE, c.d().name(), a, com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.CONTACTS, c.g());
                    if (RegistrationAnalytics.a())
                    {
                        AnalyticsEvents.m(a.u());
                    }
                }
            }

            
            {
                d = StoriesListItemViewHolder.this;
                a = friend;
                b = set;
                c = storiesadapterinterface;
                super();
            }
        });
    }

    static Context c(StoriesListItemViewHolder storieslistitemviewholder)
    {
        return storieslistitemviewholder.M;
    }

    private void c(int i1)
    {
        r.setVisibility(i1);
        u.setVisibility(i1);
        t.setVisibility(i1);
    }

    public void a(StoryGroupStoriesListItem storygroupstorieslistitem, boolean flag)
    {
        Context context;
        int i1;
        int j1;
        context = SnapchatApplication.e().getApplicationContext();
        StoryGroup storygroup = storygroupstorieslistitem.e();
        i1 = storygroup.l().size();
        j1 = storygroup.k().size();
        if (i1 <= 0) goto _L2; else goto _L1
_L1:
        if (i1 == 1)
        {
            m.setText(0x7f0c01f4);
        } else
        {
            TextView textview1 = m;
            Resources resources1 = context.getResources();
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(i1);
            textview1.setText(resources1.getString(0x7f0c01fa, aobj1));
        }
        if (flag)
        {
            m.setVisibility(0);
        }
_L4:
        return;
_L2:
        if (j1 <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (j1 == 1)
        {
            m.setText(0x7f0c016a);
        } else
        {
            TextView textview = m;
            Resources resources = context.getResources();
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(j1);
            textview.setText(resources.getString(0x7f0c016b, aobj));
        }
        if (flag)
        {
            m.setVisibility(0);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (storygroupstorieslistitem.g())
        {
            m.setText(storygroupstorieslistitem.a(context));
            return;
        }
        if (!storygroupstorieslistitem.r_() || TextUtils.equals(storygroupstorieslistitem.b(), storygroupstorieslistitem.a()))
        {
            m.setText("");
            if (flag)
            {
                m.setVisibility(8);
                return;
            }
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void a(Friend friend)
    {
        if (!friend.r_())
        {
            a(friend.a());
        }
    }

    public void a(Friend friend, StoriesAdapter.StoriesAdapterInterface storiesadapterinterface, Set set)
    {
        i.setVisibility(8);
        B.setVisibility(8);
        z.setVisibility(8);
        b(friend);
        if (friend.s())
        {
            D.setVisibility(8);
            a(0x7f020073, storiesadapterinterface.d(), com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.USERNAME, storiesadapterinterface.g(), friend);
            return;
        } else
        {
            b(friend, storiesadapterinterface, set);
            return;
        }
    }

    public void a(Friend friend, boolean flag)
    {
        StoryCollection storycollection = StoryLibrary.a().c(friend.a());
        if (storycollection == null) goto _L2; else goto _L1
_L1:
        a(storycollection);
        if (!flag) goto _L4; else goto _L3
_L3:
        if (!storycollection.o()) goto _L6; else goto _L5
_L5:
        m.setVisibility(8);
_L4:
        return;
_L6:
        m.setVisibility(0);
        return;
_L2:
        if (!friend.r_())
        {
            m.setText("");
            if (flag)
            {
                m.setVisibility(8);
                return;
            }
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    public void a(StoryCollection storycollection)
    {
        Context context;
        boolean flag;
        String s1;
        context = SnapchatApplication.e().getApplicationContext();
        flag = storycollection instanceof SponsoredStoryCollection;
        if (flag)
        {
            s1 = context.getString(0x7f0c01fd);
        } else
        {
            s1 = storycollection.a(context);
        }
        if (!storycollection.o() || flag) goto _L2; else goto _L1
_L1:
        s1 = (new StringBuilder()).append(s1).append(" - ").append(context.getString(0x7f0c016e)).toString();
_L4:
        m.setText(s1);
        return;
_L2:
        if (storycollection.p())
        {
            s1 = (new StringBuilder()).append(s1).append(" - ").append(context.getString(0x7f0c00f4)).toString();
        } else
        if (!flag)
        {
            s1 = (new StringBuilder()).append(s1).append(" - ").append(context.getString(0x7f0c020c)).toString();
        } else
        if (flag && storycollection.y().isEmpty())
        {
            s1 = (new StringBuilder()).append(s1).append(" - ").append(context.getString(0x7f0c020d)).toString();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(StoryGroup storygroup)
    {
        if (!(G instanceof StoryGroupStoriesListItem) || ((StoryGroupStoriesListItem)G).e() != storygroup)
        {
            Timber.d("StoriesListItemViewHolder", "View received changed notification from different model.", new Object[0]);
            return;
        } else
        {
            v();
            return;
        }
    }

    public void a(StorySnapLogbook storysnaplogbook)
    {
        String s1 = storysnaplogbook.e().ab();
        if (s1 != null)
        {
            s1 = s1.trim();
        }
        a(s1);
    }

    public void a(StorySnapLogbook storysnaplogbook, LayoutInflater layoutinflater, Context context)
    {
        List list = storysnaplogbook.f();
        if (F != null)
        {
            F.removeAllViews();
        }
        if (list != null)
        {
            View view1;
            for (Iterator iterator = list.iterator(); iterator.hasNext(); F.addView(view1))
            {
                StorySnapNote storysnapnote = (StorySnapNote)iterator.next();
                String s1 = FriendUtils.d(storysnapnote.b(), User.c());
                view1 = a((LinearLayout)F, s1, storysnapnote.a(), layoutinflater, context);
            }

            if (storysnaplogbook.i() != null && list.size() != storysnaplogbook.i().a())
            {
                int i1 = storysnaplogbook.i().a() - list.size();
                View view = a((LinearLayout)F, (new StringBuilder()).append("+ ").append(i1).append(" more").toString(), false, layoutinflater, context);
                F.addView(view);
            }
            E.setOnTouchListener(new android.view.View.OnTouchListener() {

                final StoriesListItemViewHolder a;

                public boolean onTouch(View view2, MotionEvent motionevent)
                {
                    motionevent.getAction();
                    JVM INSTR tableswitch 0 3: default 36
                //                               0 44
                //                               1 83
                //                               2 36
                //                               3 83;
                       goto _L1 _L2 _L3 _L1 _L3
_L1:
                    view2.onTouchEvent(motionevent);
                    return false;
_L2:
                    ((ViewParent)view2.getRootView().findViewById(0x7f0a02f9)).requestDisallowInterceptTouchEvent(true);
                    view2.getRootView().findViewById(0x7f0a02f8).setEnabled(false);
                    view2.onTouchEvent(motionevent);
                    return true;
_L3:
                    ((ViewParent)view2.getRootView().findViewById(0x7f0a02f9)).requestDisallowInterceptTouchEvent(false);
                    view2.getRootView().findViewById(0x7f0a02f8).setEnabled(true);
                    if (true) goto _L1; else goto _L4
_L4:
                }

            
            {
                a = StoriesListItemViewHolder.this;
                super();
            }
            });
        }
    }

    public boolean a(long l1)
    {
        if (m.getVisibility() == 0 || w())
        {
            return false;
        } else
        {
            N = new StoriesSecondaryTextShowAnimation(L, m, l1) {

                final long a;
                final StoriesListItemViewHolder b;

                public void onAnimationEnd(Animator animator)
                {
                    super.onAnimationEnd(animator);
                    if (d())
                    {
                        return;
                    } else
                    {
                        StoriesListItemViewHolder.a(b, new StoriesSecondaryTextHideAnimation(StoriesListItemViewHolder.a(b), d, a));
                        StoriesListItemViewHolder.b(b).a().start();
                        return;
                    }
                }

            
            {
                b = StoriesListItemViewHolder.this;
                a = l1;
                super(view, view1);
            }
            };
            N.a().start();
            return true;
        }
    }

    public void b(StorySnapLogbook storysnaplogbook)
    {
        StorySnap storysnap = storysnaplogbook.e();
        Context context = SnapchatApplication.e().getApplicationContext();
        if (storysnap.aF())
        {
            m.setText(0x7f0c0169);
            return;
        }
        if (storysnap.aE())
        {
            m.setText(0x7f0c00ee);
            return;
        } else
        {
            m.setText(storysnap.c(context));
            return;
        }
    }

    public void b(boolean flag)
    {
        if (I != flag)
        {
            I = flag;
            v();
        }
    }

    public void c(StorySnapLogbook storysnaplogbook)
    {
        if (G != storysnaplogbook)
        {
            Timber.d("StoriesListItemViewHolder", "View received changed notification from different model.", new Object[0]);
            return;
        } else
        {
            v();
            return;
        }
    }

    public boolean c(boolean flag)
    {
        if (m.getVisibility() == 0 || w())
        {
            return false;
        }
        if (flag)
        {
            N = new StoriesSecondaryTextShowAnimation(L, m);
            N.a().start();
        } else
        {
            m.setVisibility(0);
        }
        return true;
    }

    public boolean d(boolean flag)
    {
        if (m.getVisibility() == 8 || w())
        {
            return false;
        }
        if (flag)
        {
            N = new StoriesSecondaryTextHideAnimation(L, m);
            N.a().start();
        } else
        {
            m.setVisibility(8);
        }
        return true;
    }

    public void t()
    {
        super.t();
        p.setVisibility(8);
        q.setVisibility(8);
        n.setVisibility(8);
        o.setVisibility(8);
        u.setVisibility(8);
        t.setVisibility(8);
        r.setVisibility(8);
        w.setVisibility(8);
        x.setVisibility(8);
        z.setVisibility(8);
        C.setVisibility(8);
        B.setVisibility(8);
        D.setVisibility(8);
        i.setVisibility(8);
        k.setVisibility(8);
        b(0xff000000);
        B.setOnClickListener(null);
        D.setOnClickListener(null);
        I = false;
    }

    public boolean u()
    {
        return I;
    }

    public void v()
    {
        StoriesListItem storieslistitem = G;
        int i1;
        if (I)
        {
            i1 = 0;
        } else
        {
            i1 = 8;
        }
        a(storieslistitem, i1);
    }

    public boolean w()
    {
        return N != null && N.a().isStarted();
    }

    public void x()
    {
        if (N != null)
        {
            N.e();
        }
    }

    public void y()
    {
        if (E == null)
        {
            E = (ScrollView)A.inflate();
            F = (ViewGroup)E.findViewById(0x7f0a0234);
        }
    }
}
