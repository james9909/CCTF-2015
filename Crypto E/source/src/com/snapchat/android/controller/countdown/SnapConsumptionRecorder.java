// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller.countdown;

import com.snapchat.android.Timber;
import com.snapchat.android.api.UpdateStoriesTask;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.User;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.StoryUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.FeedTimerChangeEvent;
import com.snapchat.android.util.eventbus.StoriesNotifyDatasetChangedEvent;
import com.squareup.otto.Bus;
import java.util.Map;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.controller.countdown:
//            SnapCountdownListener

class SnapConsumptionRecorder
    implements SnapCountdownListener
{
    public static class UpdateTaskFactory
    {

        public UpdateStoriesTask a()
        {
            return new UpdateStoriesTask();
        }

        protected UpdateTaskFactory()
        {
        }
    }


    private final Provider a;
    private final Bus b;
    private final UpdateTaskFactory c;
    private final SnapchatServiceManager d;

    public SnapConsumptionRecorder()
    {
        this(BusProvider.a(), User.UNSAFE_USER_PROVIDER, new UpdateTaskFactory(), SnapchatServiceManager.a());
    }

    SnapConsumptionRecorder(Bus bus, Provider provider, UpdateTaskFactory updatetaskfactory, SnapchatServiceManager snapchatservicemanager)
    {
        b = bus;
        a = provider;
        c = updatetaskfactory;
        d = snapchatservicemanager;
    }

    private void a(User user, ReceivedSnap receivedsnap)
    {
        com.snapchat.android.model.chat.ChatConversation chatconversation;
        if (!receivedsnap.y() && user.D())
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = receivedsnap.l();
            aobj1[1] = receivedsnap.d();
            Timber.b("SnapConsumptionRecorder", "SNAP-LOG: MARKING snap from %s as viewed and replay available (TIMER FINISHED) (%s)", aobj1);
            receivedsnap.u_();
        } else
        {
            Object aobj[] = new Object[2];
            aobj[0] = receivedsnap.l();
            aobj[1] = receivedsnap.d();
            Timber.b("SnapConsumptionRecorder", "SNAP-LOG: MARKING snap from %s as viewed (TIMER FINISHED) (%s)", aobj);
            receivedsnap.r();
        }
        chatconversation = ConversationUtils.b(receivedsnap.n());
        if (chatconversation != null)
        {
            FeedIconManager.a().a(chatconversation, true);
        }
        b.a(new FeedTimerChangeEvent(receivedsnap.n()));
    }

    private void a(User user, StorySnap storysnap)
    {
        if (storysnap.aH())
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = storysnap.l();
            aobj1[1] = storysnap.d();
            Timber.b("SnapConsumptionRecorder", "SNAP-LOG: MARKING story snap from %s as viewed (TIMER FINISHED) due to 404 (%s)", aobj1);
        } else
        {
            Object aobj[] = new Object[2];
            aobj[0] = storysnap.l();
            aobj[1] = storysnap.d();
            Timber.b("SnapConsumptionRecorder", "SNAP-LOG: MARKING story snap from %s as viewed (TIMER FINISHED) (%s)", aobj);
        }
        StoryUtils.a(user, storysnap, true);
        b.a(new StoriesNotifyDatasetChangedEvent());
    }

    private void b(User user, ReceivedSnap receivedsnap)
    {
        if (receivedsnap instanceof StorySnap)
        {
            if (!user.e().isEmpty())
            {
                c.a().executeOnExecutor(ScExecutors.b, new String[0]);
            }
            return;
        } else
        {
            d.c();
            return;
        }
    }

    private void d(ReceivedSnap receivedsnap)
    {
        User user = (User)a.get();
        if (user != null)
        {
            if (receivedsnap instanceof StorySnap)
            {
                a(user, (StorySnap)receivedsnap);
            } else
            {
                a(user, receivedsnap);
            }
            b(user, receivedsnap);
        }
    }

    public void a(ReceivedSnap receivedsnap)
    {
        Object aobj[] = new Object[1];
        aobj[0] = receivedsnap.d();
        Timber.c("SnapConsumptionRecorder", "onTimerFinish %s", aobj);
        d(receivedsnap);
    }

    public void a(ReceivedSnap receivedsnap, long l)
    {
    }

    public void b(ReceivedSnap receivedsnap)
    {
        Object aobj[] = new Object[1];
        aobj[0] = receivedsnap.d();
        Timber.c("SnapConsumptionRecorder", "onTimerSkipped %s", aobj);
        d(receivedsnap);
    }

    public void c(ReceivedSnap receivedsnap)
    {
    }
}
