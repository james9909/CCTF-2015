// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.AddressBookUtils;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ContactsOnSnapchatUpdatedEvent;
import com.squareup.otto.Bus;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class FindFriendsTask extends RequestTask
{

    private static final String TASK_NAME = "FindFriendsTask";
    private Context mContext;
    Map mPhoneNumbersToNames;
    private User mUser;

    public FindFriendsTask()
    {
        mContext = SnapchatApplication.e();
        if (!UserPrefs.J())
        {
            throw new RuntimeException("User has not given access to contacts. This is a privacy violation.");
        } else
        {
            return;
        }
    }

    protected transient ServerResponse a(String as[])
    {
        mUser = User.a(mContext);
        return super.a(as);
    }

    protected String a()
    {
        return "/ph/find_friends";
    }

    protected void a(String s, int i)
    {
        super.a("Finding friends failed", i);
        BusProvider.a().a(new ContactsOnSnapchatUpdatedEvent());
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        mPhoneNumbersToNames = AddressBookUtils.a(mContext);
        bundle.putString("numbers", GsonUtil.a().toJson(mPhoneNumbersToNames));
        String s = ((TelephonyManager)mContext.getSystemService("phone")).getNetworkCountryIso();
        if (TextUtils.isEmpty(s))
        {
            s = "us";
        }
        bundle.putString("countryCode", s.toUpperCase(Locale.US));
        return bundle;
    }

    protected void b(ServerResponse serverresponse)
    {
        if (mUser != null)
        {
            User user = mUser;
            com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[] = new com.snapchat.android.database.table.DbTable.DatabaseTable[2];
            adatabasetable[0] = com.snapchat.android.database.table.DbTable.DatabaseTable.a;
            adatabasetable[1] = com.snapchat.android.database.table.DbTable.DatabaseTable.b;
            user.a(adatabasetable);
        }
        BusProvider.a().a(new ContactsOnSnapchatUpdatedEvent());
    }

    protected String c()
    {
        return "FindFriendsTask";
    }

    protected void c(ServerResponse serverresponse)
    {
        if (mUser != null)
        {
            AddressBookUtils.a(mContext, serverresponse.results, mPhoneNumbersToNames, mUser);
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }
}
