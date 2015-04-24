// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.google.gson.internal.LinkedTreeMap;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.api2.DemographicsTrackingRequestTask;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.model.server.UpdatesResponse;
import com.snapchat.android.model.server.chat.AllUpdatesConversationResponse;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.DemographicsTrackingUtils;
import com.snapchat.android.util.HttpUtils;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.RefreshOnFriendActionEvent;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.eventbus.SyncAllCompletedEvent;
import com.snapchat.android.util.eventbus.SyncAllStartedEvent;
import com.snapchat.android.util.eventbus.UpdatingUserToDatabasesCompleteEvent;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask, ScreenParameterProvider

public class SyncAllTask extends RequestTask
{

    public static final String PATH = "/loq/all_updates";
    private static final String TAG = "SyncAllTask";
    private static final String TASK_NAME = "SyncAllTask";
    private static SyncAllTask sSyncAllTaskInstance;
    private boolean mCalledOnLoginOrOnResume;
    private final DictionaryEasyMetric mDictionaryEasyMetric;
    private boolean mFromNotification;
    private boolean mFromPullToRefresh;
    private Pair mNewUnviewedCounts;
    private Pair mOldUnviewedCounts;
    private final Cache mProfileImageCache;
    private final ScreenParameterProvider mScreenParamProvider;
    private SnapMessageFeedRefreshedEvent mSnapMessageFeedRefreshedEvent;
    protected final User mUser;

    protected SyncAllTask(User user)
    {
        this(user, DictionaryEasyMetric.a(), ScreenParameterProvider.a(), Caches.j);
    }

    protected SyncAllTask(User user, DictionaryEasyMetric dictionaryeasymetric, ScreenParameterProvider screenparameterprovider, Cache cache)
    {
        mSnapMessageFeedRefreshedEvent = new SnapMessageFeedRefreshedEvent(j());
        mDictionaryEasyMetric = dictionaryeasymetric;
        mUser = user;
        mScreenParamProvider = screenparameterprovider;
        mProfileImageCache = cache;
        TimeLogger.a("SyncAllTask");
    }

    protected static SyncAllTask a(User user)
    {
        if (user != null) goto _L2; else goto _L1
_L1:
        SyncAllTask syncalltask;
        boolean flag1 = ReleaseManager.e();
        syncalltask = null;
        if (flag1)
        {
            throw new IllegalArgumentException("[DEBUG-ONLY] SyncAllTask cannot be executed with null User.");
        }
          goto _L3
_L2:
        if (sSyncAllTaskInstance == null) goto _L5; else goto _L4
_L4:
        if (sSyncAllTaskInstance.getStatus() != android.os.AsyncTask.Status.RUNNING) goto _L7; else goto _L6
_L6:
        boolean flag;
        flag = sSyncAllTaskInstance.isCancelled();
        syncalltask = null;
        if (!flag) goto _L3; else goto _L8
_L8:
        sSyncAllTaskInstance = new SyncAllTask(user);
_L10:
        syncalltask = sSyncAllTaskInstance;
_L3:
        return syncalltask;
_L7:
        if (sSyncAllTaskInstance.getStatus() == android.os.AsyncTask.Status.PENDING)
        {
            return sSyncAllTaskInstance;
        }
        if (sSyncAllTaskInstance.getStatus() == android.os.AsyncTask.Status.FINISHED)
        {
            sSyncAllTaskInstance = new SyncAllTask(user);
        }
        continue; /* Loop/switch isn't completed */
_L5:
        sSyncAllTaskInstance = new SyncAllTask(user);
        if (true) goto _L10; else goto _L9
_L9:
    }

    private static void a(Context context, UpdatesResponse updatesresponse)
    {
        String s = updatesresponse.third_party_tracking_base_url;
        String s1 = updatesresponse.third_party_tracking_app_id;
        if (s == null || s1 == null)
        {
            Timber.e("SyncAllTask", "Third party demographics tracking url or app ID was null.", new Object[0]);
            return;
        } else
        {
            ThreadUtils.b(new Runnable(context, s1, s) {

                final Context val$context;
                final String val$trackingAppId;
                final String val$trackingUrl;

                public void run()
                {
                    Map map = (new DemographicsTrackingUtils(context)).a(trackingAppId);
                    if (map != null)
                    {
                        (new DemographicsTrackingRequestTask(trackingUrl, map)).k();
                    }
                }

            
            {
                context = context1;
                trackingAppId = s;
                trackingUrl = s1;
                super();
            }
            });
            return;
        }
    }

    public static void a(User user, boolean flag)
    {
        a(user, flag, false);
    }

    public static void a(User user, boolean flag, boolean flag1)
    {
        a(user, flag, flag1, false);
    }

    public static void a(User user, boolean flag, boolean flag1, boolean flag2)
    {
        BusProvider.a().a(new SyncAllStartedEvent());
        SyncAllTask syncalltask = a(user);
        if (syncalltask != null)
        {
            syncalltask.b(flag);
            syncalltask.c(flag1);
            syncalltask.a(flag2);
            syncalltask.executeOnExecutor(ScExecutors.b, new String[0]);
        }
    }

    public static void b(User user)
    {
        a(user, false);
    }

    public static boolean b(User user, boolean flag)
    {
        BusProvider.a().a(new SyncAllStartedEvent());
        SyncAllTask syncalltask = a(user);
        if (syncalltask != null)
        {
            syncalltask.b(flag);
            return syncalltask.f();
        } else
        {
            return false;
        }
    }

    private void f(ServerResponse serverresponse)
    {
        mDictionaryEasyMetric.a("PULL_TO_REFRESH", "context", "Feed");
        mDictionaryEasyMetric.a("PULL_TO_REFRESH", "reachability", mReachability);
        mDictionaryEasyMetric.a("PULL_TO_REFRESH", "success", Boolean.toString(HttpUtils.a(mStatusCode)));
        mDictionaryEasyMetric.a("PULL_TO_REFRESH", "return_size_bytes", Long.toString(mReceivedBytes));
        if (serverresponse != null && serverresponse.server_info != null)
        {
            LinkedTreeMap linkedtreemap = serverresponse.server_info;
            if (TextUtils.equals((CharSequence)linkedtreemap.get("response_compare_result"), "equal"))
            {
                mDictionaryEasyMetric.a("PULL_TO_REFRESH", "is_full_response", "false");
            } else
            {
                mDictionaryEasyMetric.a("PULL_TO_REFRESH", "is_full_response", "true");
            }
            mDictionaryEasyMetric.a("PULL_TO_REFRESH", linkedtreemap);
        }
    }

    protected String a()
    {
        return "/loq/all_updates";
    }

    protected void a(ServerResponse serverresponse)
    {
        if (mFromPullToRefresh)
        {
            f(serverresponse);
        }
        super.a(serverresponse);
        TimeLogger.b("SyncAllTask");
    }

    protected void a(String s, int j)
    {
        mSnapMessageFeedRefreshedEvent.a(com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent.RefreshError.c);
        BusProvider.a().a(mSnapMessageFeedRefreshedEvent);
        BusProvider.a().a(new UpdatingUserToDatabasesCompleteEvent(false));
        BusProvider.a().a(new SyncAllCompletedEvent(mUUID, false));
        Timber.c("SyncAllTask", (new StringBuilder()).append("onFail - ").append(j).append(": ").append(s).toString(), new Object[0]);
    }

    public void a(boolean flag)
    {
        mFromPullToRefresh = flag;
    }

    protected Bundle b()
    {
        this;
        JVM INSTR monitorenter ;
        Bundle bundle;
        bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("checksums_dict", UserPrefs.aj());
        bundle.putInt("height", mScreenParamProvider.b().b());
        bundle.putInt("width", mScreenParamProvider.b().a());
        bundle.putInt("max_video_height", mScreenParamProvider.c());
        bundle.putInt("max_video_width", mScreenParamProvider.d());
        this;
        JVM INSTR monitorexit ;
        return bundle;
        Exception exception;
        exception;
        throw exception;
    }

    protected void b(ServerResponse serverresponse)
    {
        LinkedTreeMap linkedtreemap;
        if (!UserPrefs.l())
        {
            return;
        }
        e(serverresponse);
        linkedtreemap = serverresponse.server_info;
        if (linkedtreemap == null)
        {
            break MISSING_BLOCK_LABEL_400;
        }
        if (!TextUtils.equals((CharSequence)linkedtreemap.get("response_compare_result"), "equal")) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L3:
        if (flag)
        {
            if (serverresponse.messaging_gateway_info != null)
            {
                mUser.a(serverresponse.messaging_gateway_info);
            }
            StoryLibrary.a().i();
            mUser.E();
            Timber.b("SyncAllTask", "No updates from server.", new Object[0]);
        } else
        {
            if (linkedtreemap != null)
            {
                Timber.b("SyncAllTask", (new StringBuilder()).append("Response checksum compare results: ").append((String)linkedtreemap.get("response_compare_results_dict")).toString(), new Object[0]);
            }
            AllUpdatesConversationResponse allupdatesconversationresponse = new AllUpdatesConversationResponse(serverresponse.updates_response, serverresponse.friends_response, serverresponse.stories_response, serverresponse.conversations_response, serverresponse.conversations_response_info, serverresponse.messaging_gateway_info, serverresponse.discover, serverresponse.identity_check_response, j());
            mUser.a(allupdatesconversationresponse, mCalledOnLoginOrOnResume);
        }
        mNewUnviewedCounts = ConversationUtils.c(UserPrefs.k());
        Timber.c("SyncAllTask", (new StringBuilder()).append("onSuccess - # of unviewed chats=").append(mNewUnviewedCounts.first).append(" # of unviewed snaps=").append(mNewUnviewedCounts.second).append(" isPrunedResponse=").append(flag).toString(), new Object[0]);
        AnalyticsEvents.a(mFromNotification, ((Integer)mNewUnviewedCounts.first).intValue() - ((Integer)mOldUnviewedCounts.first).intValue(), ((Integer)mNewUnviewedCounts.second).intValue() - ((Integer)mOldUnviewedCounts.second).intValue(), ((Integer)mNewUnviewedCounts.first).intValue(), ((Integer)mNewUnviewedCounts.second).intValue());
        BusProvider.a().a(mSnapMessageFeedRefreshedEvent);
        BusProvider.a().a(new RefreshOnFriendActionEvent(j()));
        BusProvider.a().a(new UpdatingUserToDatabasesCompleteEvent(true));
        BusProvider.a().a(new SyncAllCompletedEvent(mUUID, true, mCalledOnLoginOrOnResume));
        if (!UserPrefs.ao())
        {
            Context context = mUser.I();
            UpdatesResponse updatesresponse = serverresponse.updates_response;
            if (context != null && updatesresponse != null)
            {
                a(context, updatesresponse);
            }
        }
        mUser.H();
        UserPrefs.u(false);
        ThreadUtils.b(new Runnable() {

            final SyncAllTask this$0;

            public void run()
            {
                if (mUser.B() != null && !mUser.B().isEmpty())
                {
                    SnapchatServiceManager.a().c();
                    for (Iterator iterator = (new ArrayList(mUser.B().values())).iterator(); iterator.hasNext(); ((ReceivedSnap)iterator.next()).C()) { }
                }
            }

            
            {
                this$0 = SyncAllTask.this;
                super();
            }
        });
        return;
_L2:
        if (TextUtils.equals((CharSequence)linkedtreemap.get("response_compare_result"), "not_equal"))
        {
            UserPrefs.m((String)linkedtreemap.get("response_checksum"));
        }
        flag = false;
          goto _L3
    }

    protected void b(String s)
    {
        SnapchatServiceManager.a().f(mUser.I(), s);
    }

    public void b(boolean flag)
    {
        mFromNotification = flag;
    }

    protected String c()
    {
        return "SyncAllTask";
    }

    public void c(boolean flag)
    {
        mCalledOnLoginOrOnResume = flag;
    }

    protected void e(ServerResponse serverresponse)
    {
        if (serverresponse.updates_response != null && !TextUtils.equals(UserPrefs.aE(), serverresponse.updates_response.qr_path))
        {
            mProfileImageCache.d("snaptag");
            UserPrefs.q(serverresponse.updates_response.qr_path);
            b(serverresponse.updates_response.qr_path);
        }
    }

    protected void i()
    {
        super.i();
        mSnapMessageFeedRefreshedEvent.a(com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent.RefreshError.d);
        BusProvider.a().a(mSnapMessageFeedRefreshedEvent);
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        mOldUnviewedCounts = ConversationUtils.c(UserPrefs.k());
        Timber.c("SyncAllTask", (new StringBuilder()).append("onPreExecute - # of unviewed chats=").append(mOldUnviewedCounts.first).append(" # of unviewed snaps=").append(mOldUnviewedCounts.second).toString(), new Object[0]);
        mStartMillis = SystemClock.elapsedRealtime();
    }
}
