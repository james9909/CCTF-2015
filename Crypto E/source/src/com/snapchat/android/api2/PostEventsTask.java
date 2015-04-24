// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.api2.framework.HyperRequestTask;
import com.snapchat.android.api2.framework.RequestBodyType;
import com.snapchat.android.api2.framework.RequestBodyWrapper;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.StringUtils;
import com.snapchat.android.util.crypto.SecureHash;
import com.snapchat.android.util.network.HttpHeaderUtils;
import com.snapchat.data.gson.analytics.CommonParams;
import com.snapchat.data.gson.analytics.PostEventsRequest;
import java.util.List;
import java.util.UUID;

public class PostEventsTask extends HyperRequestTask
{

    public static String PATH = "/post_events";
    public static String POST_EVENTS_ENDPOINT = "https://sc-analytics.appspot.com";
    private final List mEvents;

    public PostEventsTask(List list)
    {
        mEvents = list;
    }

    protected static String e()
    {
        String s = StringUtils.a(HttpHeaderUtils.a());
        return (new StringBuilder()).append(UUID.randomUUID().toString()).append(s).append(System.currentTimeMillis()).toString();
    }

    protected static String f()
    {
        return SecureHash.a(UserPrefs.k());
    }

    protected static int i_()
    {
        User user = User.c();
        if (user == null)
        {
            return -1;
        } else
        {
            return user.t();
        }
    }

    public Object b()
    {
        CommonParams commonparams = (new CommonParams()).a(Integer.valueOf(i_())).a(HttpHeaderUtils.a()).b(f());
        return new RequestBodyWrapper((new PostEventsRequest()).a(e()).a(mEvents).a(commonparams), RequestBodyType.JSON_ENCODED);
    }

    public String m_()
    {
        return (new StringBuilder()).append(POST_EVENTS_ENDPOINT).append(PATH).toString();
    }

}
