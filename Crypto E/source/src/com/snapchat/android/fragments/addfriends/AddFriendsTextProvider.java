// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.content.Context;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.ScTextUtils;

public class AddFriendsTextProvider
{

    private final boolean a = ScTextUtils.a(((TelephonyManager)SnapchatApplication.e().getSystemService("phone")).getNetworkCountryIso(), "US");

    public AddFriendsTextProvider()
    {
    }

    public String a(Friend friend)
    {
        return friend.o();
    }

    public String a(Friend friend, boolean flag)
    {
        if (friend.r_())
        {
            return friend.a();
        } else
        {
            return "";
        }
    }

    protected String b(Friend friend)
    {
        String s = friend.u();
        if (a)
        {
            android.text.Editable editable = android.text.Editable.Factory.getInstance().newEditable(s);
            PhoneNumberUtils.formatNanpNumber(editable);
            s = editable.toString();
        }
        return s;
    }

    protected String c(Friend friend)
    {
        Object aobj[] = new Object[1];
        aobj[0] = b(friend);
        return LocalizationUtils.a(0x7f0c00a5, aobj);
    }
}
