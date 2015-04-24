// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller;

import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.api.UploadMediaTask;
import com.snapchat.android.api.chat.UploadChatMediaTask;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.cache.SaveSentSnapToCacheTask;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CancelInChatSnapEvent;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.LinkedHashSet;

public class UploadSnapMediaController
{

    private static final HashMap a = new HashMap();
    private static final HashMap b = new HashMap();

    public UploadSnapMediaController()
    {
    }

    static HashMap a()
    {
        return a;
    }

    static HashMap b()
    {
        return b;
    }

    private void d(AnnotatedMediabryo annotatedmediabryo)
    {
        b(annotatedmediabryo.N());
        UploadMediaTask uploadmediatask = new UploadMediaTask(annotatedmediabryo, annotatedmediabryo) {

            final AnnotatedMediabryo a;
            final UploadSnapMediaController b;

            protected void a(ServerResponse serverresponse)
            {
                super.a(serverresponse);
                UploadSnapMediaController.b().remove(a.N());
            }

            protected void onPostExecute(Object obj)
            {
                a((ServerResponse)obj);
            }

            
            {
                b = UploadSnapMediaController.this;
                a = annotatedmediabryo1;
                super(annotatedmediabryo);
            }
        };
        b.put(annotatedmediabryo.N(), uploadmediatask);
        uploadmediatask.executeOnExecutor(ScExecutors.b, new String[0]);
    }

    private void e(AnnotatedMediabryo annotatedmediabryo)
    {
        if (annotatedmediabryo.i())
        {
            ChatConversationManager chatconversationmanager = ChatConversationManager.a();
            ChatConversation chatconversation;
            if (annotatedmediabryo.D().size() > 1)
            {
                chatconversation = chatconversationmanager.b(annotatedmediabryo.E());
            } else
            {
                chatconversation = chatconversationmanager.a(annotatedmediabryo.E());
            }
            if (chatconversation != null)
            {
                chatconversation.o(true);
            }
        }
    }

    public void a(AnnotatedMediabryo annotatedmediabryo)
    {
        a(annotatedmediabryo.N());
        annotatedmediabryo.a(com.snapchat.android.model.Mediabryo.UploadStatus.WILL_UPLOAD_AFTER_SAVE);
        SaveSentSnapToCacheTask savesentsnaptocachetask = new SaveSentSnapToCacheTask(annotatedmediabryo) {

            final AnnotatedMediabryo a;
            final UploadSnapMediaController b;

            protected void a(Void void1)
            {
                b.b(a);
                UploadSnapMediaController.a().remove(a.N());
                super.onPostExecute(void1);
            }

            protected void onPostExecute(Object obj)
            {
                a((Void)obj);
            }

            
            {
                b = UploadSnapMediaController.this;
                a = annotatedmediabryo;
                super();
            }
        };
        a.put(annotatedmediabryo.N(), savesentsnaptocachetask);
        savesentsnaptocachetask.executeOnExecutor(ScExecutors.c, new AnnotatedMediabryo[] {
            annotatedmediabryo
        });
    }

    void a(String s)
    {
        SaveSentSnapToCacheTask savesentsnaptocachetask = (SaveSentSnapToCacheTask)a.get(s);
        if (savesentsnaptocachetask != null)
        {
            savesentsnaptocachetask.cancel(true);
        }
    }

    void b(AnnotatedMediabryo annotatedmediabryo)
    {
        if (!annotatedmediabryo.j())
        {
            break MISSING_BLOCK_LABEL_18;
        }
        c(annotatedmediabryo);
_L1:
        e(annotatedmediabryo);
        return;
        try
        {
            d(annotatedmediabryo);
        }
        catch (com.snapchat.android.api.UploadMediaTask.UploadMediaException uploadmediaexception)
        {
            (new ErrorMetric(uploadmediaexception.getMessage())).a(uploadmediaexception).c();
            return;
        }
          goto _L1
    }

    void b(String s)
    {
        UploadMediaTask uploadmediatask = (UploadMediaTask)b.get(s);
        if (uploadmediatask != null)
        {
            uploadmediatask.cancel(true);
        }
    }

    void c(AnnotatedMediabryo annotatedmediabryo)
    {
        (new UploadChatMediaTask(annotatedmediabryo)).executeOnExecutor(ScExecutors.b, new String[0]);
        BusProvider.a().a(new CancelInChatSnapEvent());
    }

}
