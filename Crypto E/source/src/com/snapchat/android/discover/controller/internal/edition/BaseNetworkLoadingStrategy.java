// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.edition;

import com.snapchat.android.discover.controller.internal.DiscoverLoadingConfiguration;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.discover.controller.internal.edition:
//            DSnapLoadingStrategy, RecencyRuleCalculator

abstract class BaseNetworkLoadingStrategy
    implements DSnapLoadingStrategy
{

    protected final UserPrefs a;
    protected final DiscoverLoadingConfiguration b;
    protected final DiscoverViewTrackingManager c;
    protected final RecencyRuleCalculator d;

    protected BaseNetworkLoadingStrategy(UserPrefs userprefs, DiscoverViewTrackingManager discoverviewtrackingmanager, DiscoverLoadingConfiguration discoverloadingconfiguration, RecencyRuleCalculator recencyrulecalculator)
    {
        a = userprefs;
        c = discoverviewtrackingmanager;
        b = discoverloadingconfiguration;
        d = recencyrulecalculator;
    }
}
