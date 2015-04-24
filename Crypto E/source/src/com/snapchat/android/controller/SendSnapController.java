// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller;

import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.api.PostStorySnapTask;
import com.snapchat.android.api.PostStorySnapWithMediaTask;
import com.snapchat.android.api.SendSnapAndPostStorySnapTask;
import com.snapchat.android.api.SendSnapTask;
import com.snapchat.android.api.SendSnapWithMediaTask;
import com.snapchat.android.discover.api.SendDSnapTask;
import com.snapchat.android.discover.api.SendDSnapWithMediaTask;
import com.snapchat.android.discover.model.DSnapbryo;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.cache.SaveSentStoryToCacheTask;
import com.snapchat.android.util.cache.SendSnapCacheWrapper;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StorySnapPostEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

public class SendSnapController
    implements com.snapchat.android.api.PostStorySnapTask.PostStorySnapCallback, com.snapchat.android.api.SendSnapTask.SendSnapCallback
{

    public final SnapWomb a;
    private final NetworkAnalytics b;
    private final SendSnapCacheWrapper c;

    public SendSnapController()
    {
        this(SnapWomb.a(), NetworkAnalytics.a(), SendSnapCacheWrapper.a());
    }

    SendSnapController(SnapWomb snapwomb, NetworkAnalytics networkanalytics, SendSnapCacheWrapper sendsnapcachewrapper)
    {
        a = snapwomb;
        b = networkanalytics;
        c = sendsnapcachewrapper;
    }

    private void m(AnnotatedMediabryo annotatedmediabryo)
    {
        if (annotatedmediabryo.J() == com.snapchat.android.model.Mediabryo.UploadStatus.UPLOADED)
        {
            g(annotatedmediabryo);
            a.b(annotatedmediabryo);
            j(annotatedmediabryo);
            a.c(annotatedmediabryo);
            BusProvider.a().a(new StorySnapPostEvent());
            n(annotatedmediabryo);
            return;
        } else
        {
            f(annotatedmediabryo);
            i(annotatedmediabryo);
            return;
        }
    }

    private void n(AnnotatedMediabryo annotatedmediabryo)
    {
        (new SendSnapAndPostStorySnapTask((Snapbryo)annotatedmediabryo, this, this)).executeOnExecutor(ScExecutors.b, new String[0]);
    }

    public void a(AnnotatedMediabryo annotatedmediabryo)
    {
        annotatedmediabryo.a(com.snapchat.android.model.Mediabryo.PostStatus.POSTED);
        a.c(annotatedmediabryo);
        annotatedmediabryo.C();
    }

    public void a(AnnotatedMediabryo annotatedmediabryo, boolean flag, boolean flag1)
    {
        b.b(flag, flag1);
        if (flag)
        {
            if (annotatedmediabryo.D() == null || annotatedmediabryo.D().size() == 0)
            {
                throw new IllegalStateException("Retrying sending snap with no recipients! Did you intend to post a story?");
            }
            f(annotatedmediabryo);
        }
        if (flag1)
        {
            if (annotatedmediabryo.l() == null || annotatedmediabryo.l().size() == 0)
            {
                throw new IllegalStateException("Retrying snap as story with no post-to stories! Did you mean to send as snap?");
            }
            i(annotatedmediabryo);
        }
    }

    public void a(Snapbryo snapbryo)
    {
        snapbryo.a(com.snapchat.android.model.Mediabryo.PostStatus.WILL_POST_AFTER_SAVE);
        a.c(snapbryo);
        (new SaveSentStoryToCacheTask(snapbryo) {

            final Snapbryo a;
            final SendSnapController b;

            protected void a(Void void1)
            {
                b.i(a);
                super.onPostExecute(void1);
            }

            protected void onPostExecute(Object obj)
            {
                a((Void)obj);
            }

            
            {
                b = SendSnapController.this;
                a = snapbryo;
                super();
            }
        }).executeOnExecutor(ScExecutors.c, new AnnotatedMediabryo[] {
            snapbryo
        });
    }

    public void b(AnnotatedMediabryo annotatedmediabryo)
    {
        annotatedmediabryo.a(com.snapchat.android.model.Mediabryo.PostStatus.FAILED);
        a.c(annotatedmediabryo);
        annotatedmediabryo.C();
    }

    public void c(AnnotatedMediabryo annotatedmediabryo)
    {
        annotatedmediabryo.a(com.snapchat.android.model.Mediabryo.SendStatus.SENT);
        a.b(annotatedmediabryo);
        annotatedmediabryo.C();
        if (annotatedmediabryo.k())
        {
            c.b(annotatedmediabryo);
        }
    }

    public void d(AnnotatedMediabryo annotatedmediabryo)
    {
        if (annotatedmediabryo == null)
        {
            return;
        } else
        {
            annotatedmediabryo.a(com.snapchat.android.model.Mediabryo.SendStatus.FAILED);
            a.b(annotatedmediabryo);
            annotatedmediabryo.C();
            return;
        }
    }

    public void e(AnnotatedMediabryo annotatedmediabryo)
    {
        ArrayList arraylist = annotatedmediabryo.l();
        LinkedHashSet linkedhashset = annotatedmediabryo.D();
        if (arraylist.isEmpty())
        {
            f(annotatedmediabryo);
            annotatedmediabryo.b(true);
            return;
        }
        if (linkedhashset.isEmpty())
        {
            i(annotatedmediabryo);
            return;
        } else
        {
            m(annotatedmediabryo);
            return;
        }
    }

    protected void f(AnnotatedMediabryo annotatedmediabryo)
    {
        g(annotatedmediabryo);
        a.b(annotatedmediabryo);
        h(annotatedmediabryo);
    }

    protected void g(AnnotatedMediabryo annotatedmediabryo)
    {
        static class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.model.Mediabryo.UploadStatus.values().length];
                try
                {
                    a[com.snapchat.android.model.Mediabryo.UploadStatus.UPLOADED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.model.Mediabryo.UploadStatus.FAILED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.model.Mediabryo.UploadStatus.UPLOADING.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[com.snapchat.android.model.Mediabryo.UploadStatus.WILL_UPLOAD_AFTER_SAVE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[com.snapchat.android.model.Mediabryo.UploadStatus.NOT_UPLOADED.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        switch (_cls2.a[annotatedmediabryo.J().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
        case 2: // '\002'
            annotatedmediabryo.a(com.snapchat.android.model.Mediabryo.SendStatus.SENDING);
            return;

        case 3: // '\003'
        case 4: // '\004'
            annotatedmediabryo.a(com.snapchat.android.model.Mediabryo.SendStatus.SENDING_ON_UPLOAD);
            break;
        }
    }

    protected void h(AnnotatedMediabryo annotatedmediabryo)
    {
        switch (_cls2.a[annotatedmediabryo.J().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            if (annotatedmediabryo instanceof DSnapbryo)
            {
                (new SendDSnapTask((DSnapbryo)annotatedmediabryo, this)).g();
                return;
            } else
            {
                (new SendSnapTask((Snapbryo)annotatedmediabryo, this)).executeOnExecutor(ScExecutors.b, new String[0]);
                return;
            }

        case 2: // '\002'
            if (annotatedmediabryo instanceof DSnapbryo)
            {
                (new SendDSnapWithMediaTask((DSnapbryo)annotatedmediabryo, this)).g();
                return;
            } else
            {
                (new SendSnapWithMediaTask((Snapbryo)annotatedmediabryo, this)).executeOnExecutor(ScExecutors.b, new String[0]);
                return;
            }

        case 3: // '\003'
        case 4: // '\004'
            annotatedmediabryo.a(true);
            return;
        }
    }

    protected void i(AnnotatedMediabryo annotatedmediabryo)
    {
        j(annotatedmediabryo);
        a.c(annotatedmediabryo);
        k(annotatedmediabryo);
    }

    protected void j(AnnotatedMediabryo annotatedmediabryo)
    {
        switch (_cls2.a[annotatedmediabryo.J().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
        case 2: // '\002'
        case 5: // '\005'
            annotatedmediabryo.a(com.snapchat.android.model.Mediabryo.PostStatus.POSTING);
            return;

        case 3: // '\003'
        case 4: // '\004'
            annotatedmediabryo.a(com.snapchat.android.model.Mediabryo.PostStatus.POSTING_ON_UPLOAD);
            break;
        }
    }

    protected void k(AnnotatedMediabryo annotatedmediabryo)
    {
        switch (_cls2.a[annotatedmediabryo.J().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            (new PostStorySnapTask(annotatedmediabryo, this)).executeOnExecutor(ScExecutors.b, new String[0]);
            return;

        case 2: // '\002'
        case 5: // '\005'
            (new PostStorySnapWithMediaTask(annotatedmediabryo, this)).executeOnExecutor(ScExecutors.b, new String[0]);
            return;

        case 3: // '\003'
        case 4: // '\004'
            annotatedmediabryo.c(true);
            break;
        }
    }

    public void l(AnnotatedMediabryo annotatedmediabryo)
    {
        c.b(annotatedmediabryo);
    }
}
