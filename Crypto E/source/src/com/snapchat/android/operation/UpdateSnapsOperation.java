// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.content.Context;
import android.content.Intent;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.server.SnapUpdate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.operation:
//            BasicScRequestOperation

public class UpdateSnapsOperation extends BasicScRequestOperation
{
    public class RequestPayload extends AuthPayload
    {

        final Map a;
        final Long b = Long.valueOf(UserPrefs.a().j());
        final List c;
        final UpdateSnapsOperation d;

        RequestPayload(Map map)
        {
            d = UpdateSnapsOperation.this;
            super();
            a = map;
            c = UpdateSnapsOperation.this.c;
            Timber.c("UpdateSnapOperation", (new StringBuilder()).append("RequestPayload - snapUpdates.size() ").append(map.size()).append(" addedFriendsTimeStamp ").append(b).append(" analyticsEvents.size() ").append(c.size()).toString(), new Object[0]);
        }
    }


    protected Map b;
    protected List c;
    protected UpdateSnapsAnalyticsPlatform e;

    public UpdateSnapsOperation(Intent intent)
    {
        super(intent);
        SnapchatApplication.e().a(this);
    }

    private void i()
    {
        Map map = a.B();
        Iterator iterator = b.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            map.remove(entry.getKey());
            ChatFeedItem chatfeeditem = (ChatFeedItem)entry.getValue();
            ChatConversation chatconversation = ConversationUtils.b(chatfeeditem.l());
            if (chatconversation != null)
            {
                ChatFeedItem chatfeeditem1 = chatconversation.d(chatfeeditem.d());
                if (chatfeeditem1 != null && (chatfeeditem1 instanceof ReceivedSnap))
                {
                    ((ReceivedSnap)chatfeeditem1).a(true);
                }
            }
        } while (true);
        a.a(true);
    }

    private void k()
    {
        e.a(c);
    }

    public void a(Context context)
    {
        if (a == null)
        {
            Timber.c("UpdateSnapOperation", "Load the user data in background because the User object is null", new Object[0]);
            a = User.a(context);
        }
        super.a(context);
    }

    public void a(NetworkResult networkresult)
    {
        super.a(networkresult);
        if (networkresult.h())
        {
            i();
            return;
        } else
        {
            k();
            return;
        }
    }

    public Object b()
    {
        return g();
    }

    protected String e()
    {
        return "/bq/update_snaps";
    }

    public RequestPayload g()
    {
        b = new HashMap(a.B());
        HashMap hashmap = new HashMap(b.size());
        ReceivedSnap receivedsnap;
        for (Iterator iterator = b.entrySet().iterator(); iterator.hasNext(); hashmap.put(receivedsnap.d(), new SnapUpdate(receivedsnap)))
        {
            receivedsnap = (ReceivedSnap)((java.util.Map.Entry)iterator.next()).getValue();
            if (receivedsnap.A())
            {
                a.a(false);
            }
        }

        c = e.a();
        return new RequestPayload(hashmap);
    }
}
