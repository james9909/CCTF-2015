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

// Referenced classes of package com.snapchat.android.discover.controller.internal.edition:
//            BaseNetworkLoadingStrategy, RecencyRuleCalculator

class WanDSnapLoadingStrategy extends BaseNetworkLoadingStrategy
{

    public WanDSnapLoadingStrategy()
    {
        this(new UserPrefs(), DiscoverViewTrackingManager.a(), new DiscoverLoadingConfiguration(), new RecencyRuleCalculator());
    }

    protected WanDSnapLoadingStrategy(UserPrefs userprefs, DiscoverViewTrackingManager discoverviewtrackingmanager, DiscoverLoadingConfiguration discoverloadingconfiguration, RecencyRuleCalculator recencyrulecalculator)
    {
        super(userprefs, discoverviewtrackingmanager, discoverloadingconfiguration, recencyrulecalculator);
    }

    public boolean a(DiscoverUserState discoveruserstate, DSnapPage dsnappage, com.snapchat.android.networkmanager.DownloadRequest.Builder builder)
    {
        if (b(discoveruserstate, dsnappage, builder))
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = dsnappage;
            aobj1[1] = DownloadPriority.d.name();
            Timber.a("WanDSnapLoadingStrategy", "DISCOVER-MEDIA: Elected to download %s at %s priority, it is in range in the selected edition", aobj1);
            return true;
        }
        if (c(discoveruserstate, dsnappage, builder))
        {
            Object aobj[] = new Object[2];
            aobj[0] = dsnappage;
            aobj[1] = DownloadPriority.a.name();
            Timber.a("WanDSnapLoadingStrategy", "DISCOVER-MEDIA: Elected to download %s at %s priority, user has seen this channel recently", aobj);
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
            int i;
            int j;
            int k;
            if (discoveruserstate.b() != null)
            {
                i = discoveruserstate.b().c().intValue();
            } else
            {
                i = 0;
            }
            j = i - b.g();
            k = i + b.h();
            if (dsnappage.c().intValue() >= j && dsnappage.c().intValue() <= k)
            {
                builder.a(false);
                builder.a(DownloadPriority.d);
                return true;
            }
        }
        return false;
    }

    protected boolean c(DiscoverUserState discoveruserstate, DSnapPage dsnappage, com.snapchat.android.networkmanager.DownloadRequest.Builder builder)
    {
        if (d.a(dsnappage, c.d(dsnappage.e()), b.e(), b.f()))
        {
            builder.a(false);
            builder.a(DownloadPriority.a);
            return true;
        } else
        {
            return false;
        }
    }
}
