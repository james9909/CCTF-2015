// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.RefreshOnFriendExistsTask;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload

public class FriendExistsTask extends BasicScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public class RequestPayload extends AuthPayload
    {

        String request_username;
        final FriendExistsTask this$0;

        public RequestPayload()
        {
            this$0 = FriendExistsTask.this;
            super();
            request_username = FriendExistsTask.a(FriendExistsTask.this).a();
        }
    }

    static class ResponsePayload
    {

        boolean exists;
        boolean logged;
        boolean throttled;

        ResponsePayload()
        {
        }
    }


    public static final int MIN_USERNAME_LENGTH = 3;
    private static final String TAG = "FriendExistsTask";
    private Bus mBus;
    private final Friend mFriend;

    public FriendExistsTask(Friend friend)
    {
        this(friend, BusProvider.a());
    }

    public FriendExistsTask(Friend friend, Bus bus)
    {
        mFriend = friend;
        mBus = bus;
        a(com/snapchat/android/api2/FriendExistsTask$ResponsePayload, this);
    }

    static Friend a(FriendExistsTask friendexiststask)
    {
        return friendexiststask.mFriend;
    }

    protected void a(ResponsePayload responsepayload)
    {
        com.snapchat.android.model.Friend.SuggestState suggeststate = com.snapchat.android.model.Friend.SuggestState.DOES_NOT_EXIST;
        if (!responsepayload.exists) goto _L2; else goto _L1
_L1:
        suggeststate = com.snapchat.android.model.Friend.SuggestState.EXISTS;
_L4:
        mFriend.a(suggeststate);
        mBus.a(new RefreshOnFriendExistsTask());
        return;
_L2:
        if (responsepayload.throttled && !responsepayload.logged)
        {
            suggeststate = com.snapchat.android.model.Friend.SuggestState.FAILED;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(ResponsePayload responsepayload, NetworkResult networkresult)
    {
        if (networkresult.h() && responsepayload != null)
        {
            a(responsepayload);
            return;
        } else
        {
            b(networkresult);
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ResponsePayload)obj, networkresult);
    }

    public Object b()
    {
        return g_();
    }

    protected void b(NetworkResult networkresult)
    {
        mFriend.a(com.snapchat.android.model.Friend.SuggestState.FAILED);
        mBus.a(new RefreshOnFriendExistsTask());
        if (networkresult != null)
        {
            Object aobj[] = new Object[1];
            aobj[0] = networkresult.k();
            Timber.d("FriendExistsTask", "Request failed: %s", aobj);
        }
        mBus.a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c0171));
    }

    public String d()
    {
        return "/bq/user_exists";
    }

    public Friend e()
    {
        return mFriend;
    }

    public RequestPayload g_()
    {
        return new RequestPayload();
    }
}
