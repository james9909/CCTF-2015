// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api.chat;

import android.os.Bundle;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api.UploadMediaTask;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.chat.SendingMailman;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.squareup.otto.Bus;

public class UploadChatMediaTask extends UploadMediaTask
{

    private static final String TASK_NAME = "UploadChatMediaTask";
    private ChatConversation mChatConversation;
    private ChatMedia mChatMedia;
    private AndroidNotificationManager mNotificationManager;

    public UploadChatMediaTask(AnnotatedMediabryo annotatedmediabryo)
    {
        super(annotatedmediabryo);
        mNotificationManager = AndroidNotificationManager.a();
    }

    protected String a()
    {
        return "/bq/upload_chat_media";
    }

    protected void a(String s, int i)
    {
        mSnapbryo.a(com.snapchat.android.model.Mediabryo.UploadStatus.FAILED);
        mChatMedia.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.FAILED);
        BusProvider.a().a(new ChatUpdatedEvent(mChatConversation.u(), true));
        mNotificationManager.a(SnapchatApplication.e(), false);
    }

    protected Bundle b()
    {
        Bundle bundle = super.b();
        bundle.putString("type", com.snapchat.android.model.chat.ChatMedia.MediaType.IMAGE.toString());
        bundle.putString("conversation_id", mChatConversation.u());
        bundle.putString("id", mSnapbryo.N());
        bundle.putString("recipient", mSnapbryo.E());
        bundle.putByteArray("data", (new CbcEncryptionAlgorithm(mChatMedia.E(), mChatMedia.F())).a(mData));
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        mChatMedia.e(serverresponse.media_id);
        mSnapbryo.a(com.snapchat.android.model.Mediabryo.UploadStatus.UPLOADED);
        SendingMailman.a().a(mChatConversation, mChatMedia);
        mNotificationManager.a(SnapchatApplication.e(), true);
    }

    protected String c()
    {
        return "UploadChatMediaTask";
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        mChatMedia = new ChatMedia(mSnapbryo);
        mChatConversation = ChatConversationManager.a().a(mSnapbryo.E());
        if (mChatConversation == null)
        {
            cancel(true);
            return;
        } else
        {
            mChatConversation.a(mChatMedia);
            FeedIconManager.a().a(mChatConversation, false);
            return;
        }
    }
}
