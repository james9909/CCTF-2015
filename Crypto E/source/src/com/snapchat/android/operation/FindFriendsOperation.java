// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.AuthPayload;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.AddressBookUtils;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ContactsOnSnapchatUpdatedEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.snapchat.android.operation:
//            BasicScRequestOperation

public class FindFriendsOperation extends BasicScRequestOperation
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public class RequestPayload extends AuthPayload
    {

        String a;
        String b;
        final FindFriendsOperation c;

        public RequestPayload()
        {
            c = FindFriendsOperation.this;
            super();
            a = GsonUtil.a().toJson(c.b);
            b = c.c.toUpperCase(Locale.US);
        }
    }

    static class ResponsePayload
    {

        List a;
        long b;

        ResponsePayload()
        {
        }
    }


    Map b;
    String c;
    private User e;
    private Context f;
    private Bus g;

    public FindFriendsOperation(Intent intent)
    {
        super(intent);
        if (!UserPrefs.J())
        {
            throw new RuntimeException("User has not given access to contacts. This is a privacy violation.");
        } else
        {
            g = BusProvider.a();
            a(com/snapchat/android/operation/FindFriendsOperation$ResponsePayload, this);
            return;
        }
    }

    public void a(Context context)
    {
        e = User.a(context);
        f = context;
        b = AddressBookUtils.a(context);
        c = ((TelephonyManager)context.getSystemService("phone")).getNetworkCountryIso();
        if (TextUtils.isEmpty(c))
        {
            c = "us";
        }
        super.a(context);
    }

    protected void a(ResponsePayload responsepayload)
    {
        AddressBookUtils.a(f, responsepayload.a, b, e);
        UserPrefs.b(responsepayload.b);
        g.a(new ContactsOnSnapchatUpdatedEvent());
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
        return g();
    }

    public void b(Context context)
    {
        if (e != null)
        {
            User user = e;
            com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[] = new com.snapchat.android.database.table.DbTable.DatabaseTable[2];
            adatabasetable[0] = com.snapchat.android.database.table.DbTable.DatabaseTable.a;
            adatabasetable[1] = com.snapchat.android.database.table.DbTable.DatabaseTable.b;
            user.a(adatabasetable);
        }
    }

    protected void b(NetworkResult networkresult)
    {
        g.a(new ContactsOnSnapchatUpdatedEvent());
        Object aobj[] = new Object[1];
        aobj[0] = networkresult.k();
        Timber.d("FindFriendsOperation", "Request failed: %s", aobj);
        g.a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c0171));
    }

    protected String e()
    {
        return "/ph/find_friends";
    }

    public RequestPayload g()
    {
        return new RequestPayload();
    }
}
