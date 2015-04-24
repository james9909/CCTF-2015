// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api.chat;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.internal.LinkedTreeMap;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api.RequestTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.model.server.chat.ServerChatConversation;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.ScExecutors;
import java.util.List;

public class LoadFeedPageTask extends RequestTask
{
    public static interface LoadFeedPageTaskInterface
    {

        public abstract void a(TaskStatus taskstatus);
    }

    public static final class TaskStatus extends Enum
    {

        private static final TaskStatus $VALUES[];
        public static final TaskStatus EMPTY_RESPONSE_REACHED;
        public static final TaskStatus FAILED;
        public static final TaskStatus RUNNING;

        public static TaskStatus valueOf(String s)
        {
            return (TaskStatus)Enum.valueOf(com/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus, s);
        }

        public static TaskStatus[] values()
        {
            return (TaskStatus[])$VALUES.clone();
        }

        static 
        {
            RUNNING = new TaskStatus("RUNNING", 0);
            FAILED = new TaskStatus("FAILED", 1);
            EMPTY_RESPONSE_REACHED = new TaskStatus("EMPTY_RESPONSE_REACHED", 2);
            TaskStatus ataskstatus[] = new TaskStatus[3];
            ataskstatus[0] = RUNNING;
            ataskstatus[1] = FAILED;
            ataskstatus[2] = EMPTY_RESPONSE_REACHED;
            $VALUES = ataskstatus;
        }

        private TaskStatus(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String PATH = "/loq/conversations";
    private static final String TAG = "LoadFeedPageTask";
    private static final String TASK_NAME = "LoadFeedPageTask";
    private static LoadFeedPageTask sLoadFeedPageTaskInstance;
    private LoadFeedPageTaskInterface mInterface;
    private final String mIterToken;
    private long mStartMillis;

    private LoadFeedPageTask(String s, LoadFeedPageTaskInterface loadfeedpagetaskinterface)
    {
        mIterToken = s;
        mInterface = loadfeedpagetaskinterface;
    }

    public static void a(LoadFeedPageTaskInterface loadfeedpagetaskinterface)
    {
        if (sLoadFeedPageTaskInstance != null)
        {
            return;
        }
        String s = ChatConversationManager.a().c();
        if (s == null)
        {
            loadfeedpagetaskinterface.a(TaskStatus.EMPTY_RESPONSE_REACHED);
            return;
        } else
        {
            sLoadFeedPageTaskInstance = new LoadFeedPageTask(s, loadfeedpagetaskinterface);
            sLoadFeedPageTaskInstance.executeOnExecutor(ScExecutors.b, new String[0]);
            return;
        }
    }

    protected String a()
    {
        return "/loq/conversations";
    }

    protected void a(ServerResponse serverresponse)
    {
        sLoadFeedPageTaskInstance = null;
        super.a(serverresponse);
    }

    protected void a(String s, int i)
    {
        mInterface.a(TaskStatus.FAILED);
        Timber.c("LoadFeedPageTask", (new StringBuilder()).append("onFail - ").append(i).append(": ").append(s).toString(), new Object[0]);
        if (i == 0)
        {
            AlertDialogUtils.a(0x7f0c0132, SnapchatApplication.e());
        }
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        bundle.putString("checksum", UserPrefs.ai());
        if (mIterToken != null)
        {
            bundle.putString("offset", mIterToken);
        }
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        LinkedTreeMap linkedtreemap = serverresponse.server_info;
        if (linkedtreemap == null) goto _L2; else goto _L1
_L1:
        if (!TextUtils.equals((CharSequence)linkedtreemap.get("response_compare_result"), "equal")) goto _L4; else goto _L3
_L3:
        mInterface.a(TaskStatus.EMPTY_RESPONSE_REACHED);
        Timber.c("LoadFeedPageTask", "onSuccess - response is pruned", new Object[0]);
_L6:
        return;
_L4:
        if (TextUtils.equals((CharSequence)linkedtreemap.get("response_compare_result"), "not_equal"))
        {
            UserPrefs.l((String)linkedtreemap.get("response_checksum"));
        }
_L2:
        List list = serverresponse.conversations_response;
        Timber.c("LoadFeedPageTask", (new StringBuilder()).append("onSuccess - response not pruned, # of conversations=").append(list.size()).toString(), new Object[0]);
        if (list != null)
        {
            if (!list.isEmpty())
            {
                if (((ServerChatConversation)list.get(-1 + list.size())).iter_token == null)
                {
                    mInterface.a(TaskStatus.EMPTY_RESPONSE_REACHED);
                }
                ChatConversationManager.a().a(serverresponse.conversations_response, true, true, j());
                return;
            } else
            {
                mInterface.a(TaskStatus.EMPTY_RESPONSE_REACHED);
                return;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected String c()
    {
        return "LoadFeedPageTask";
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        mInterface.a(TaskStatus.RUNNING);
        mStartMillis = SystemClock.elapsedRealtime();
    }
}
