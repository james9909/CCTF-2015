// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.edition;

import com.snapchat.android.Timber;
import com.snapchat.android.discover.controller.internal.DiscoverLoadingConfiguration;
import com.snapchat.android.discover.controller.internal.DiscoverUserState;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.util.system.Clock;

// Referenced classes of package com.snapchat.android.discover.controller.internal.edition:
//            BaseNetworkLoadingStrategy, RecencyRuleCalculator

class WifiDSnapLoadingStrategy extends BaseNetworkLoadingStrategy
{

    private final Clock e;

    public WifiDSnapLoadingStrategy()
    {
        this(new UserPrefs(), DiscoverViewTrackingManager.a(), new DiscoverLoadingConfiguration(), new RecencyRuleCalculator(), new Clock());
    }

    protected WifiDSnapLoadingStrategy(UserPrefs userprefs, DiscoverViewTrackingManager discoverviewtrackingmanager, DiscoverLoadingConfiguration discoverloadingconfiguration, RecencyRuleCalculator recencyrulecalculator, Clock clock)
    {
        super(userprefs, discoverviewtrackingmanager, discoverloadingconfiguration, recencyrulecalculator);
        e = clock;
    }

    public boolean a(DiscoverUserState discoveruserstate, DSnapPage dsnappage, com.snapchat.android.networkmanager.DownloadRequest.Builder builder)
    {
        if (b(discoveruserstate, dsnappage, builder))
        {
            Object aobj2[] = new Object[2];
            aobj2[0] = dsnappage;
            aobj2[1] = DownloadPriority.d.name();
            Timber.a("WifiDSnapLoadingStrategy", "DISCOVER-MEDIA: Elected to download %s at %s priority, it is in the selected edition", aobj2);
            return true;
        }
        if (c(discoveruserstate, dsnappage, builder))
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = dsnappage;
            aobj1[1] = DownloadPriority.a.name();
            Timber.a("WifiDSnapLoadingStrategy", "DISCOVER-MEDIA: Elected to download %s at %s priority, user has been to discover recently", aobj1);
            return true;
        }
        if (d(discoveruserstate, dsnappage, builder))
        {
            Object aobj[] = new Object[2];
            aobj[0] = dsnappage;
            aobj[1] = DownloadPriority.a.name();
            Timber.a("WifiDSnapLoadingStrategy", "DISCOVER-MEDIA: Elected to download %s at %s priority, user has seen this channel recently", aobj);
            return true;
        } else
        {
            return false;
        }
    }

    protected boolean b(DiscoverUserState discoveruserstate, DSnapPage dsnappage, com.snapchat.android.networkmanager.DownloadRequest.Builder builder)
    {
        if (discoveruserstate.a() != null && discoveruserstate.a().f() != null && discoveruserstate.a().f().equals(dsnappage.d()))
        {
            builder.a(true);
            builder.a(DownloadPriority.d);
            return true;
        } else
        {
            return false;
        }
    }

    protected boolean c(DiscoverUserState discoveruserstate, DSnapPage dsnappage, com.snapchat.android.networkmanager.DownloadRequest.Builder builder)
    {
        long l;
        if (a.ar() == -1L)
        {
            l = e.a() - 1L;
        } else
        {
            l = a.ar();
        }
        if (d.a(dsnappage, l, b.a(), b.b()))
        {
            builder.a(true);
            builder.a(DownloadPriority.a);
            return true;
        } else
        {
            return false;
        }
    }

    protected boolean d(DiscoverUserState discoveruserstate, DSnapPage dsnappage, com.snapchat.android.networkmanager.DownloadRequest.Builder builder)
    {
        if (d.a(dsnappage, c.d(dsnappage.e()), b.c(), b.d()))
        {
            builder.a(true);
            builder.a(DownloadPriority.a);
            return true;
        } else
        {
            return false;
        }
    }
}
