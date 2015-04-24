// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import android.content.Context;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.snapchat.PhoneNumberBlocker;
import com.snapchat.android.api2.cash.blockers.snapchat.SendConfirmationBlocker;
import com.snapchat.android.api2.cash.blockers.snapchat.ValidateTransactionBlocker;
import com.snapchat.android.model.chat.CashFeedItem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

// Referenced classes of package com.snapchat.android.api2.cash:
//            ICashProvider

public class ScProvider
    implements ICashProvider
{

    public static final String NAME = "snapcash";

    public ScProvider()
    {
    }

    public String a()
    {
        return "snapcash";
    }

    public void a(Context context, String s)
    {
    }

    public void a(CashFeedItem cashfeeditem)
    {
    }

    public void b()
    {
    }

    public Collection c()
    {
        Blocker ablocker[] = new Blocker[1];
        ablocker[0] = new PhoneNumberBlocker();
        return Arrays.asList(ablocker);
    }

    public Collection d()
    {
        Blocker ablocker[] = new Blocker[1];
        ablocker[0] = new SendConfirmationBlocker();
        return Arrays.asList(ablocker);
    }

    public Collection e()
    {
        Blocker ablocker[] = new Blocker[1];
        ablocker[0] = new ValidateTransactionBlocker();
        return Arrays.asList(ablocker);
    }

    public Collection f()
    {
        return new ArrayList();
    }

    public Collection g()
    {
        Blocker ablocker[] = new Blocker[1];
        ablocker[0] = new PhoneNumberBlocker();
        return Arrays.asList(ablocker);
    }

    public Collection h()
    {
        return new ArrayList();
    }
}
