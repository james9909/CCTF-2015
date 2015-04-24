// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.content.Intent;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.EmojiUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.StringUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.DisplayInAppNotificationEvent;
import com.snapchat.data.gson.Friend;
import com.snapchat.data.gson.SnaptagResponse;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.operation:
//            BasicScRequestOperation

public class SnapTagOperation extends BasicScRequestOperation
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public static class Payload extends AuthPayload
    {

        final String a;

        Payload(String s)
        {
            a = s;
        }
    }


    private final String b;

    public SnapTagOperation(Intent intent)
    {
        super(intent);
        b = StringUtils.a(intent.getByteArrayExtra("snapTag"));
        Timber.c("SnapTagOperation", (new StringBuilder()).append("SnapTag - ").append(b).toString(), new Object[0]);
        a(com/snapchat/data/gson/SnaptagResponse, this);
    }

    protected void a(SnaptagResponse snaptagresponse)
    {
        Friend friend = snaptagresponse.d();
        if (TextUtils.equals(snaptagresponse.a(), "add_friend") && friend != null)
        {
            b(snaptagresponse);
            return;
        } else
        {
            c(snaptagresponse);
            return;
        }
    }

    public void a(SnaptagResponse snaptagresponse, NetworkResult networkresult)
    {
        if (networkresult.h() && snaptagresponse != null)
        {
            a(snaptagresponse);
            return;
        } else
        {
            b(networkresult);
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((SnaptagResponse)obj, networkresult);
    }

    public Object b()
    {
        return new Payload(b);
    }

    protected void b(NetworkResult networkresult)
    {
        BusProvider.a().a(new DisplayInAppNotificationEvent(0, null, LocalizationUtils.a(0x7f0c01f7, new Object[0])));
    }

    protected void b(SnaptagResponse snaptagresponse)
    {
        Friend friend = snaptagresponse.d();
        String s = friend.a();
        if (TextUtils.equals(s, UserPrefs.k()))
        {
            BusProvider.a().a(new DisplayInAppNotificationEvent(0, EmojiUtils.a(EmojiUtils.b), null));
        } else
        {
            User user = User.c();
            if (user != null)
            {
                if (TextUtils.equals(snaptagresponse.e(), "already_friend"))
                {
                    BusProvider.a().a(new DisplayInAppNotificationEvent(0, snaptagresponse.b(), null));
                    return;
                }
                com.snapchat.android.model.Friend friend1 = user.b(s);
                if (friend1 == null)
                {
                    friend1 = new com.snapchat.android.model.Friend(friend);
                    user.d(friend1);
                }
                friend1.b(true);
                BusProvider.a().a(new DisplayInAppNotificationEvent(0x7f020003, s, snaptagresponse.b()));
                ProfileEventAnalytics.a(FriendAction.ADD, com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext.CAMERA_PAGE, friend1, com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType.QR_CODE, true, null);
                return;
            }
        }
    }

    public HttpMethod c()
    {
        return HttpMethod.POST;
    }

    protected void c(SnaptagResponse snaptagresponse)
    {
        BusProvider.a().a(new DisplayInAppNotificationEvent(0, null, snaptagresponse.c()));
    }

    protected String e()
    {
        return "/bq/snaptag";
    }
}
