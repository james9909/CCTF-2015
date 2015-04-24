// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.viewholders;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ProgressBar;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.User;
import com.snapchat.android.util.FriendExistsTaskCache;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.ScExecutors;

// Referenced classes of package com.snapchat.android.ui.viewholders:
//            FriendViewHolder

public class AddFriendViewHolder extends FriendViewHolder
    implements com.snapchat.android.api.FriendActionTask.FriendActionCompleteCallback
{
    public class FriendCheckboxOnClickListener
        implements android.view.View.OnClickListener
    {

        final AddFriendViewHolder a;
        private final com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext b;
        private final com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType c;
        private final String d;
        private final Friend e;

        public void onClick(View view)
        {
            boolean flag = a.J.isChecked();
            FriendAction friendaction;
            AddFriendViewHolder addfriendviewholder;
            boolean flag1;
            if (flag)
            {
                friendaction = FriendAction.ADD;
                if (RegistrationAnalytics.a())
                {
                    AnalyticsEvents.k(e.a());
                }
            } else
            {
                friendaction = FriendAction.DELETE;
                if (RegistrationAnalytics.a())
                {
                    AnalyticsEvents.l(e.a());
                }
            }
            addfriendviewholder = a;
            if (!flag)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            addfriendviewholder.a(true, flag1);
            (new FriendActionTask(e, friendaction, a)).a(c).a(b).executeOnExecutor(ScExecutors.b, new String[0]);
            AnalyticsEvents.a(friendaction, b.name(), e, c, d);
        }

        public FriendCheckboxOnClickListener(com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext analyticscontext, com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType addfriendsourcetype, String s, Friend friend)
        {
            a = AddFriendViewHolder.this;
            super();
            b = analyticscontext;
            c = addfriendsourcetype;
            d = s;
            e = friend;
        }
    }


    protected final CheckBox J;
    protected final ProgressBar K;
    private boolean i;

    public AddFriendViewHolder(View view)
    {
        this(view, (CheckBox)view.findViewById(0x7f0a0048), (ProgressBar)view.findViewById(0x7f0a004a));
    }

    protected AddFriendViewHolder(View view, CheckBox checkbox, ProgressBar progressbar)
    {
        super(view);
        i = false;
        J = checkbox;
        K = progressbar;
    }

    public void A()
    {
        K.setVisibility(8);
    }

    public void B()
    {
        if (K != null)
        {
            K.setVisibility(8);
        }
        if (J != null)
        {
            J.setEnabled(false);
        }
    }

    public void a(int j, com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext analyticscontext, com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType addfriendsourcetype, String s, Friend friend)
    {
        J.setBackgroundResource(j);
        boolean flag;
        if (friend.e() || FriendUtils.e(friend.a(), User.c()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        J.setChecked(flag);
        J.setOnClickListener(new FriendCheckboxOnClickListener(analyticscontext, addfriendsourcetype, s, friend));
        if (friend.E())
        {
            friend = FriendExistsTaskCache.b(friend);
        }
        a(friend.D());
    }

    public void a(com.snapchat.android.model.Friend.SuggestState suggeststate)
    {
        static class _cls1
        {

            static final int a[];
            static final int b[];

            static 
            {
                b = new int[FriendAction.values().length];
                try
                {
                    b[FriendAction.ADD.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    b[FriendAction.DELETE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                a = new int[com.snapchat.android.model.Friend.SuggestState.values().length];
                try
                {
                    a[com.snapchat.android.model.Friend.SuggestState.EXISTS.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[com.snapchat.android.model.Friend.SuggestState.DOES_NOT_EXIST.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[com.snapchat.android.model.Friend.SuggestState.PENDING.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[com.snapchat.android.model.Friend.SuggestState.FAILED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[com.snapchat.android.model.Friend.SuggestState.NOT_SUGGESTION.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror6)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[suggeststate.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            a(false, false);
            return;

        case 2: // '\002'
            B();
            return;

        case 3: // '\003'
            a(true, false);
            return;

        case 4: // '\004'
            a(false, false);
            return;

        case 5: // '\005'
            a(false, J.isChecked());
            break;
        }
    }

    public void a(FriendAction friendaction, boolean flag)
    {
        switch (_cls1.b[friendaction.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            a(false, true);
            return;

        case 2: // '\002'
            a(false, false);
            break;
        }
    }

    protected void a(boolean flag, boolean flag1)
    {
        byte byte0;
        int j;
        if (flag)
        {
            byte0 = 8;
        } else
        if (i && flag1)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        if (J != null)
        {
            J.setChecked(flag1);
            CheckBox checkbox = J;
            boolean flag2;
            if (!flag)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            checkbox.setEnabled(flag2);
            J.setVisibility(byte0);
        }
        j = 0;
        if (!flag)
        {
            j = 8;
        }
        if (K != null)
        {
            K.setVisibility(j);
        }
    }

    public void e(boolean flag)
    {
        i = flag;
    }

    public void t()
    {
        J.setVisibility(8);
        K.setVisibility(8);
        J.setOnClickListener(null);
    }

    public void z()
    {
        J.setVisibility(8);
    }
}
