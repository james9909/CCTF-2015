// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;

import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.snapchat.android.api2.chat:
//            LoadConversationPageTask

public class LoadConversationPageTaskExecutor
{

    private static final LoadConversationPageTaskExecutor INSTANCE = new LoadConversationPageTaskExecutor();
    private final Set mRunningLoadConversationPageTasks = Collections.synchronizedSet(new HashSet());

    private LoadConversationPageTaskExecutor()
    {
    }

    public static LoadConversationPageTaskExecutor a()
    {
        return INSTANCE;
    }

    static Set a(LoadConversationPageTaskExecutor loadconversationpagetaskexecutor)
    {
        return loadconversationpagetaskexecutor.mRunningLoadConversationPageTasks;
    }

    public LoadConversationPageTask.TaskStatus a(final String conversationId, boolean flag)
    {
        ChatConversation chatconversation;
        String s;
label0:
        {
            chatconversation = ConversationUtils.a(conversationId);
            LoadConversationPageTask.TaskStatus taskstatus1;
            synchronized (mRunningLoadConversationPageTasks)
            {
                if (!mRunningLoadConversationPageTasks.contains(conversationId))
                {
                    break label0;
                }
                taskstatus1 = LoadConversationPageTask.TaskStatus.RUNNING;
            }
            return taskstatus1;
        }
        s = null;
        if (chatconversation == null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        s = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        s = chatconversation.W();
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        LoadConversationPageTask.TaskStatus taskstatus = LoadConversationPageTask.TaskStatus.EMPTY_RESPONSE_REACHED;
        set;
        JVM INSTR monitorexit ;
        return taskstatus;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
        LoadConversationPageTask loadconversationpagetask = new LoadConversationPageTask(conversationId, s, true, new LoadConversationPageTask.LoadConversationPageTaskCallback() {

            final LoadConversationPageTaskExecutor this$0;
            final String val$conversationId;

            public void a(boolean flag1)
            {
                LoadConversationPageTaskExecutor.a(LoadConversationPageTaskExecutor.this).remove(conversationId);
            }

            
            {
                this$0 = LoadConversationPageTaskExecutor.this;
                conversationId = s;
                super();
            }
        });
        mRunningLoadConversationPageTasks.add(conversationId);
        loadconversationpagetask.g();
        set;
        JVM INSTR monitorexit ;
        return LoadConversationPageTask.TaskStatus.RUNNING;
    }

    public void a(String s, LoadConversationPageTask.LoadConversationPageTaskCallback loadconversationpagetaskcallback)
    {
        (new LoadConversationPageTask(s, null, true, loadconversationpagetaskcallback)).g();
    }

    public void a(String s, boolean flag, LoadConversationPageTask.LoadConversationPageTaskCallback loadconversationpagetaskcallback)
    {
        (new LoadConversationPageTask(s, null, flag, loadconversationpagetaskcallback)).k();
    }

}
