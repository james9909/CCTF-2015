// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import android.os.Message;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.api2.GetConversationAuthTokenTask;
import com.snapchat.android.fragments.addfriends.SharedStorySearchResult;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerFriend;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.FriendUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class FriendActionTask extends RequestTask
{
    public static interface FriendActionCompleteCallback
    {

        public abstract void a(FriendAction friendaction, boolean flag);
    }


    private static final String TAG = "FriendActionTask";
    private static final String TASK_NAME = "FriendActionTask";
    public FriendAction mAction;
    private com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType mAddSourceType;
    private com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext mAnalyticsContext;
    private final Bus mBus;
    protected String mDisplayName;
    public Friend mFriend;
    private FriendActionCompleteCallback mFriendActionCompleteCallback;
    protected String mFriendUsername;
    protected boolean mIsJustAdded;
    protected String mOldDisplayName;
    private Message mOnFriendActionMessage;
    private User mUser;

    public FriendActionTask(Friend friend, FriendAction friendaction)
    {
        this(friendaction, friend, friend.a(), friend.b(), friend.F(), null);
    }

    public FriendActionTask(Friend friend, FriendAction friendaction, FriendActionCompleteCallback friendactioncompletecallback)
    {
        this(friend, friendaction);
        mFriendActionCompleteCallback = friendactioncompletecallback;
    }

    public FriendActionTask(Friend friend, FriendAction friendaction, String s)
    {
        this(friend, friendaction);
        mOldDisplayName = s;
    }

    public FriendActionTask(FriendAction friendaction, Friend friend, String s, String s1, boolean flag, String s2)
    {
        mAction = friendaction;
        mFriendUsername = s;
        mDisplayName = s1;
        mIsJustAdded = flag;
        mOldDisplayName = s2;
        mUser = User.c();
        mBus = BusProvider.a();
        mFriend = friend;
    }

    static FriendActionCompleteCallback a(FriendActionTask friendactiontask)
    {
        return friendactiontask.mFriendActionCompleteCallback;
    }

    public FriendActionTask a(Message message)
    {
        mOnFriendActionMessage = message;
        return this;
    }

    public FriendActionTask a(com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType addfriendsourcetype)
    {
        mAddSourceType = addfriendsourcetype;
        return this;
    }

    public FriendActionTask a(com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext analyticscontext)
    {
        mAnalyticsContext = analyticscontext;
        return this;
    }

    protected String a()
    {
        return "/bq/friend";
    }

    public void a(String s, int i)
    {
        if (mAction.equals(FriendAction.ADD))
        {
            mBus.a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c000b));
        } else
        if (mAction.equals(FriendAction.DELETE))
        {
            mBus.a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c000e));
        } else
        {
            mBus.a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, s));
        }
        if (mFriend != null && !(mFriend instanceof SharedStorySearchResult))
        {
            ProfileEventAnalytics.a(mAction, mAnalyticsContext, mFriend, mAddSourceType, false, s);
        }
        mBus.a(new RefreshOnFriendActionEvent(mFriend, mAction));
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("action", mAction.a());
        bundle.putString("friend", mFriendUsername);
        if (mAddSourceType != null)
        {
            bundle.putString("added_by", mAddSourceType.a().name());
        }
        if (mAction.equals(FriendAction.SET_DISPLAY_NAME))
        {
            bundle.putString("display", mDisplayName);
        }
        return bundle;
    }

    public void b(ServerResponse serverresponse)
    {
        if (mUser == null) goto _L2; else goto _L1
_L1:
        Timber.c("FriendActionTask", (new StringBuilder()).append("onSuccess - OBJECT MANIPULATION - action ").append(mAction).toString(), new Object[0]);
        if (!(mFriend instanceof SharedStorySearchResult))
        {
            if (mAction.equals(FriendAction.ADD))
            {
                ServerFriend serverfriend1 = serverresponse.object;
                static class _cls2
                {

                    static final int $SwitchMap$com$snapchat$android$model$FriendAction[];

                    static 
                    {
                        $SwitchMap$com$snapchat$android$model$FriendAction = new int[FriendAction.values().length];
                        try
                        {
                            $SwitchMap$com$snapchat$android$model$FriendAction[FriendAction.ADD.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror) { }
                        try
                        {
                            $SwitchMap$com$snapchat$android$model$FriendAction[FriendAction.DELETE.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            $SwitchMap$com$snapchat$android$model$FriendAction[FriendAction.IGNORE.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror2) { }
                        try
                        {
                            $SwitchMap$com$snapchat$android$model$FriendAction[FriendAction.HIDE.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror3)
                        {
                            return;
                        }
                    }
                }

                ServerFriend serverfriend;
                Friend friend;
                if (serverfriend1.type == 0)
                {
                    friend = FriendUtils.a(serverfriend1, mUser);
                } else
                {
                    friend = null;
                }
                if (serverfriend1.type == 1)
                {
                    friend = FriendUtils.b(serverfriend1, mUser);
                }
                if (friend != null)
                {
                    if (mFriend != null)
                    {
                        friend.a(mFriend.D());
                    }
                    friend.f(mIsJustAdded);
                    (new GetConversationAuthTokenTask(ChatUtils.a(friend.a()))).g();
                    friend.b(System.currentTimeMillis());
                    mUser.a();
                }
            } else
            if (mAction.equals(FriendAction.DELETE) && mFriend != null)
            {
                FriendUtils.g(mFriendUsername, mUser);
            } else
            if (mAction.equals(FriendAction.BLOCK) || mAction.equals(FriendAction.REPORT_SPAM))
            {
                FriendUtils.h(mFriendUsername, mUser);
            } else
            if (mAction.equals(FriendAction.UNBLOCK))
            {
                serverfriend = serverresponse.object;
                if (serverfriend != null && serverfriend.type == 3)
                {
                    FriendUtils.g(mFriendUsername, mUser);
                }
                FriendUtils.i(mFriendUsername, mUser);
            } else
            if (mAction.equals(FriendAction.SET_DISPLAY_NAME))
            {
                FriendUtils.a(mFriendUsername, mDisplayName, mUser);
            }
            mUser.H();
        }
        _cls2..SwitchMap.com.snapchat.android.model.FriendAction[mAction.ordinal()];
        JVM INSTR tableswitch 1 4: default 216
    //                   1 459
    //                   2 491
    //                   3 528
    //                   4 546;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        if (mFriendActionCompleteCallback != null)
        {
            ThreadUtils.a(new Runnable() {

                final FriendActionTask this$0;

                public void run()
                {
                    FriendActionTask.a(FriendActionTask.this).a(mAction, true);
                }

            
            {
                this$0 = FriendActionTask.this;
                super();
            }
            });
        }
        if (mFriend != null && !(mFriend instanceof SharedStorySearchResult))
        {
            ProfileEventAnalytics.a(mAction, mAnalyticsContext, mFriend, mAddSourceType, true, null);
        }
        mBus.a(new RefreshOnFriendActionEvent(mFriend, mAction));
        UserPrefs.u(false);
_L2:
        return;
_L4:
        if (mFriend != null)
        {
            FriendUtils.a(mFriendUsername, true, mUser);
            mFriend.a(com.snapchat.android.model.Friend.SuggestState.NOT_SUGGESTION);
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (mFriend != null)
        {
            mUser.a(mFriend.a(), true);
            FriendUtils.a(mFriendUsername, false, mUser);
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (mFriend != null)
        {
            mFriend.j(true);
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if (mFriend != null)
        {
            mFriend.k(true);
        }
        if (true) goto _L3; else goto _L8
_L8:
    }

    protected String c()
    {
        return "FriendActionTask";
    }

    public void onPreExecute()
    {
        super.onPreExecute();
        if (mAnalyticsContext != null)
        {
            AnalyticsEvents.a(mAction, mAnalyticsContext, mFriend, null, null);
        }
        if (mOnFriendActionMessage != null)
        {
            mOnFriendActionMessage.obj = mAction;
            mOnFriendActionMessage.sendToTarget();
        }
    }
}
