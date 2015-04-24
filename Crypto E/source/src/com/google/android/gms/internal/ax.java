// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            bg, bj, av

public class ax
{

    public static final ax oy = new ax();

    private ax()
    {
    }

    public static ax bo()
    {
        return oy;
    }

    public av a(Context context, bg bg1)
    {
        Date date = bg1.getBirthday();
        long l;
        String s;
        int i;
        Set set;
        java.util.List list;
        boolean flag;
        int j;
        android.location.Location location;
        android.os.Bundle bundle;
        boolean flag1;
        String s1;
        com.google.android.gms.ads.search.SearchAdRequest searchadrequest;
        bj bj1;
        if (date != null)
        {
            l = date.getTime();
        } else
        {
            l = -1L;
        }
        s = bg1.getContentUrl();
        i = bg1.getGender();
        set = bg1.getKeywords();
        if (!set.isEmpty())
        {
            list = Collections.unmodifiableList(new ArrayList(set));
        } else
        {
            list = null;
        }
        flag = bg1.isTestDevice(context);
        j = bg1.bt();
        location = bg1.getLocation();
        bundle = bg1.getNetworkExtrasBundle(com/google/ads/mediation/admob/AdMobAdapter);
        flag1 = bg1.getManualImpressionsEnabled();
        s1 = bg1.getPublisherProvidedId();
        searchadrequest = bg1.bq();
        if (searchadrequest != null)
        {
            bj1 = new bj(searchadrequest);
        } else
        {
            bj1 = null;
        }
        return new av(4, l, bundle, i, list, flag, j, flag1, s1, bj1, location, s, bg1.bs());
    }

}
