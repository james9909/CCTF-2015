// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.model.server.SnapOrStoryDoublePostResponse;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SendSnapRequestCompleteEvent;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask, SendSnapWithMediaTask, SyncAllTask

public class SendSnapTask extends RequestTask
{
    public static interface SendSnapCallback
    {

        public abstract void c(AnnotatedMediabryo annotatedmediabryo);

        public abstract void d(AnnotatedMediabryo annotatedmediabryo);
    }


    public static final String PATH = "/loq/send";
    private static final String TASK_NAME = "SendSnapTask";
    protected Context mContext;
    protected NetworkAnalytics mNetworkAnalytics;
    protected AndroidNotificationManager mNotificationManager;
    protected SendSnapCallback mSendSnapCallback;
    protected Snapbryo mSnapbryo;
    protected User mUser;

    SendSnapTask(Context context, User user, Snapbryo snapbryo, SendSnapCallback sendsnapcallback, AndroidNotificationManager androidnotificationmanager, NetworkAnalytics networkanalytics)
    {
        mContext = context;
        mUser = user;
        mSnapbryo = snapbryo;
        mSendSnapCallback = sendsnapcallback;
        mNotificationManager = androidnotificationmanager;
        mNetworkAnalytics = networkanalytics;
    }

    public SendSnapTask(Snapbryo snapbryo, SendSnapCallback sendsnapcallback)
    {
        this(((Context) (SnapchatApplication.e())), User.c(), snapbryo, sendsnapcallback, AndroidNotificationManager.a(), NetworkAnalytics.a());
    }

    public static void a(Bundle bundle, AnnotatedMediabryo annotatedmediabryo)
    {
        String s;
        if (annotatedmediabryo.n())
        {
            s = "1";
        } else
        {
            s = "0";
        }
        bundle.putString("zipped", s);
        if (TextUtils.equals(annotatedmediabryo.t(), "Geofilter") && !TextUtils.isEmpty(annotatedmediabryo.x()))
        {
            bundle.putString("filter_id", annotatedmediabryo.x());
        }
        if (annotatedmediabryo instanceof Snapbryo)
        {
            String s1;
            if (((Snapbryo)annotatedmediabryo).ab())
            {
                s1 = "1";
            } else
            {
                s1 = "0";
            }
            bundle.putString("camera_front_facing", s1);
        }
    }

    protected String a()
    {
        return "/loq/send";
    }

    protected void a(ServerResponse serverresponse)
    {
        super.a(serverresponse);
        BusProvider.a().a(new SendSnapRequestCompleteEvent());
    }

    protected void a(String s, int i)
    {
        if (UserPrefs.an())
        {
            return;
        }
        if (!mSnapbryo.P())
        {
            mSnapbryo.e(true);
            (new SendSnapTask(mSnapbryo, mSendSnapCallback)).executeOnExecutor(ScExecutors.b, new String[0]);
            return;
        } else
        {
            mNetworkAnalytics.b(mSnapbryo, mUUID);
            mSendSnapCallback.d(mSnapbryo);
            mNotificationManager.a(mContext, false);
            return;
        }
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("media_id", mSnapbryo.N());
        bundle.putString("recipients", GsonUtil.a().toJson(mSnapbryo.F()));
        bundle.putString("time", String.valueOf(mSnapbryo.m()));
        a(bundle, mSnapbryo);
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        if (serverresponse == null || serverresponse.snap_response == null || serverresponse.snap_response.snaps == null)
        {
            mSendSnapCallback.d(mSnapbryo);
        } else
        {
            mNetworkAnalytics.a(mSnapbryo, mUUID);
            mSendSnapCallback.c(mSnapbryo);
            e(serverresponse);
            mNotificationManager.a(mContext, true);
            UserPrefs.u(false);
            if (l())
            {
                k();
                return;
            }
        }
    }

    protected String c()
    {
        return "SendSnapTask";
    }

    protected void e()
    {
        try
        {
            (new SendSnapWithMediaTask(mSnapbryo, mSendSnapCallback)).executeOnExecutor(ScExecutors.b, new String[0]);
            return;
        }
        catch (SendSnapWithMediaTask.SendSnapException sendsnapexception)
        {
            (new ErrorMetric(sendsnapexception.getMessage())).a(sendsnapexception).c();
        }
    }

    protected void e(ServerResponse serverresponse)
    {
        SentSnap sentsnap;
label0:
        {
            sentsnap = SnapUtils.a(mUser, mSnapbryo);
            if (sentsnap != null)
            {
                if (mSnapbryo.D().size() <= 1)
                {
                    break label0;
                }
                String s = UserPrefs.k();
                if (s != null)
                {
                    String s1 = ChatUtils.a(s, mSnapbryo.E());
                    ChatConversationManager chatconversationmanager = ChatConversationManager.a();
                    chatconversationmanager.c(s1);
                    chatconversationmanager.a(sentsnap, serverresponse.snap_response.snaps);
                }
            }
            return;
        }
        if (!serverresponse.snap_response.snaps.containsKey(sentsnap.g()))
        {
            throw new RuntimeException("Server response does not contain recipient's sent snap ID");
        } else
        {
            com.snapchat.android.model.server.SnapOrStoryDoublePostResponse.SnapData snapdata = (com.snapchat.android.model.server.SnapOrStoryDoublePostResponse.SnapData)serverresponse.snap_response.snaps.get(sentsnap.g());
            sentsnap.c(snapdata.id);
            sentsnap.a(snapdata.timestamp);
            sentsnap.b(snapdata.timestamp);
            return;
        }
    }

    protected void k()
    {
        SyncAllTask.b(mUser);
    }

    protected boolean l()
    {
label0:
        {
            if (mUser == null)
            {
                break label0;
            }
            Iterator iterator = mSnapbryo.D().iterator();
            Friend friend;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                friend = (Friend)iterator.next();
            } while (mUser.d(friend.a()));
            return true;
        }
        return false;
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        Iterator iterator = mSnapbryo.D().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatConversation chatconversation = ConversationUtils.b(((Friend)iterator.next()).a());
            if (chatconversation != null && chatconversation.aC())
            {
                chatconversation.n(false);
            }
        } while (true);
    }
}
