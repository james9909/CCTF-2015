// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.chat.ChatMessageReleaser;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.server.chat.ServerChatConversation;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.LoadConversationPageTaskEvent;
import com.squareup.otto.Bus;
import java.util.List;

public class LoadConversationPageTask extends BasicScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public static interface LoadConversationPageTaskCallback
    {

        public abstract void a(boolean flag);
    }

    public class RequestPayload extends AuthPayload
    {

        final String mConversationId;
        final String mOffset;
        final LoadConversationPageTask this$0;

        RequestPayload(String s, String s1)
        {
            this$0 = LoadConversationPageTask.this;
            super();
            mConversationId = s;
            mOffset = s1;
        }
    }

    public class ResponsePayload
    {

        ServerChatConversation mConversation;
        final LoadConversationPageTask this$0;

        protected ResponsePayload()
        {
            this$0 = LoadConversationPageTask.this;
            super();
        }
    }

    public static final class TaskStatus extends Enum
    {

        private static final TaskStatus $VALUES[];
        public static final TaskStatus EMPTY_RESPONSE_REACHED;
        public static final TaskStatus FAILED;
        public static final TaskStatus RUNNING;

        public static TaskStatus valueOf(String s)
        {
            return (TaskStatus)Enum.valueOf(com/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus, s);
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


    private static final String PATH = "/loq/conversation";
    private static final String TAG = "LoadConversationPageTask";
    private final Bus mBus;
    private final LoadConversationPageTaskCallback mCallback;
    private final String mConversationId;
    private final ChatConversationManager mConversationManager;
    private final String mIterToken;
    private final boolean mWithPrefetch;

    protected LoadConversationPageTask(String s, String s1, boolean flag, LoadConversationPageTaskCallback loadconversationpagetaskcallback)
    {
        this(s, s1, flag, loadconversationpagetaskcallback, ChatConversationManager.a(), BusProvider.a());
    }

    protected LoadConversationPageTask(String s, String s1, boolean flag, LoadConversationPageTaskCallback loadconversationpagetaskcallback, ChatConversationManager chatconversationmanager, Bus bus)
    {
        mConversationId = s;
        mIterToken = s1;
        mWithPrefetch = flag;
        mCallback = loadconversationpagetaskcallback;
        mConversationManager = chatconversationmanager;
        mBus = bus;
        a(com/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload, this);
    }

    public void a(ResponsePayload responsepayload, NetworkResult networkresult)
    {
        if (!networkresult.h()) goto _L2; else goto _L1
_L1:
        if (responsepayload != null) goto _L4; else goto _L3
_L3:
        (new ErrorMetric("NULL_LOAD_CONVERSATION_RESPONSE")).c();
_L8:
        if (mCallback != null)
        {
            mCallback.a(true);
        }
_L6:
        return;
_L4:
        if (responsepayload.mConversation != null)
        {
            Timber.f("LoadConversationPageTask", (new StringBuilder()).append("CHAT-LOG: LoadConversationPageTask onSuccess ").append(mConversationId).toString(), new Object[0]);
            String s = ChatUtils.b(mConversationId);
            if (!TextUtils.isEmpty(s))
            {
                ChatConversation chatconversation = mConversationManager.a(s);
                if (chatconversation != null)
                {
                    ChatConversationManager chatconversationmanager = mConversationManager;
                    ServerChatConversation serverchatconversation = responsepayload.mConversation;
                    boolean flag = mWithPrefetch;
                    boolean flag1;
                    if (mIterToken == null)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    chatconversationmanager.a(chatconversation, serverchatconversation, flag, flag1);
                    if (!chatconversation.A())
                    {
                        Object aobj[] = new Object[1];
                        aobj[0] = chatconversation.u();
                        Timber.f("LoadConversationPageTask", "CHAT-LOG: LoadConversationPageTask sending release message for %s", aobj);
                        (new ChatMessageReleaser()).a(chatconversation, com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.DELETE);
                    }
                    mConversationManager.f();
                    if (responsepayload.mConversation.conversation_messages != null)
                    {
                        List list = responsepayload.mConversation.conversation_messages.messages;
                        if (list == null || list.isEmpty())
                        {
                            mBus.a(new LoadConversationPageTaskEvent(TaskStatus.EMPTY_RESPONSE_REACHED));
                        } else
                        if (((com.snapchat.android.model.server.chat.ServerChatConversation.ChatOrSnapMessage)list.get(-1 + list.size())).iter_token == null)
                        {
                            mBus.a(new LoadConversationPageTaskEvent(TaskStatus.EMPTY_RESPONSE_REACHED));
                        }
                    }
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        mBus.a(new LoadConversationPageTaskEvent(TaskStatus.FAILED));
        if (mCallback == null) goto _L6; else goto _L5
_L5:
        mCallback.a(false);
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ResponsePayload)obj, networkresult);
    }

    public Object b()
    {
        return e();
    }

    public String d()
    {
        return "/loq/conversation";
    }

    public RequestPayload e()
    {
        return new RequestPayload(mConversationId, mIterToken);
    }
}
