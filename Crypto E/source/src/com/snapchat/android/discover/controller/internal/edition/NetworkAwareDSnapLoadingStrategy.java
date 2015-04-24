// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.edition;

import android.net.NetworkInfo;
import com.snapchat.android.discover.controller.internal.DiscoverUserState;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.networkmanager.NetworkStatusManager;

// Referenced classes of package com.snapchat.android.discover.controller.internal.edition:
//            DSnapLoadingStrategy, WifiDSnapLoadingStrategy, WanDSnapLoadingStrategy

public class NetworkAwareDSnapLoadingStrategy
    implements DSnapLoadingStrategy
{

    private final NetworkStatusManager a;
    private final WifiDSnapLoadingStrategy b;
    private final WanDSnapLoadingStrategy c;

    public NetworkAwareDSnapLoadingStrategy()
    {
        this(NetworkStatusManager.a(), new WifiDSnapLoadingStrategy(), new WanDSnapLoadingStrategy());
    }

    protected NetworkAwareDSnapLoadingStrategy(NetworkStatusManager networkstatusmanager, WifiDSnapLoadingStrategy wifidsnaploadingstrategy, WanDSnapLoadingStrategy wandsnaploadingstrategy)
    {
        a = networkstatusmanager;
        c = wandsnaploadingstrategy;
        b = wifidsnaploadingstrategy;
    }

    public boolean a(DiscoverUserState discoveruserstate, DSnapPage dsnappage, com.snapchat.android.networkmanager.DownloadRequest.Builder builder)
    {
        NetworkInfo networkinfo = a.b();
        if (networkinfo == null)
        {
            return false;
        }
        if (networkinfo.getType() == 1)
        {
            return b.a(discoveruserstate, dsnappage, builder);
        } else
        {
            return c.a(discoveruserstate, dsnappage, builder);
        }
    }
}
