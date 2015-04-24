// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.google.gson.Gson;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class SettingsTask extends RequestTask
{

    public static final String SET_BIRTHDAY_ACTION_PARAM = "updateBirthday";
    public static final String SET_EMAIL_ACTION_PARAM = "updateEmail";
    public static final String SET_PRIVACY_ACTION_PARAM = "updatePrivacy";
    public static final String SET_SEARCHABLE_BY_PHONE_NUMBER = "updateSearchableByPhoneNumber";
    public static final String SET_STORY_PRIVACY_ACTION_PARAM = "updateStoryPrivacy";
    private static final String TASK_NAME = "SettingsTask";
    private String mAction;
    private String mData[];

    public transient SettingsTask(String s, String as[])
    {
        mAction = s;
        mData = as;
    }

    protected String a()
    {
        return "/ph/settings";
    }

    protected void a(String s, int i)
    {
        BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, s));
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("action", mAction);
        bundle.putString("username", UserPrefs.k());
        if (mAction.equals("updateBirthday"))
        {
            bundle.putString("birthday", mData[0]);
        }
        if (mAction.equals("updateEmail"))
        {
            bundle.putString("email", mData[0]);
        }
        if (mAction.equals("updatePrivacy"))
        {
            bundle.putString("privacySetting", mData[0]);
        }
        if (mAction.equals("updateStoryPrivacy"))
        {
            String s = mData[0];
            bundle.putString("privacySetting", s);
            if (s.equals("CUSTOM"))
            {
                bundle.putString("storyFriendsToBlock", GsonUtil.a().toJson(User.c().A()));
            }
        }
        if (mAction.equals("updateSearchableByPhoneNumber"))
        {
            bundle.putString("searchable", mData[0]);
        }
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        if (mAction.equals("updateBirthday"))
        {
            UserPrefs.d((new StringBuilder()).append("0000-").append(mData[0]).toString());
        }
        if (mAction.equals("updateEmail"))
        {
            UserPrefs.i(mData[0]);
        }
        if (mAction.equals("updatePrivacy"))
        {
            UserPrefs.c(Integer.parseInt(mData[0]));
        }
        if (mAction.equals("updateStoryPrivacy"))
        {
            UserPrefs.d(com.snapchat.android.fragments.settings.SettingsFragment.PrivacyOptions.valueOf(mData[0]).ordinal());
        }
        if (mAction.equals("updateSearchableByPhoneNumber"))
        {
            UserPrefs.o(mData[0].equals("1"));
        }
        if (serverresponse != null)
        {
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, serverresponse.message));
        }
    }

    protected String c()
    {
        return "SettingsTask";
    }
}
