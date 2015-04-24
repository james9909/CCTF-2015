// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.doubleclick;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.common.internal.s;
import java.util.Date;

// Referenced classes of package com.google.android.gms.ads.doubleclick:
//            PublisherAdRequest

public static final class 
{

    private final com.google.android.gms.internal.uilder.lh lh = new com.google.android.gms.internal.uilder.lh();

    static com.google.android.gms.internal.uilder a( )
    {
        return .lh;
    }

    public lh addCustomEventExtrasBundle(Class class1, Bundle bundle)
    {
        lh.lh(class1, bundle);
        return this;
    }

    public lh addKeyword(String s1)
    {
        lh.lh(s1);
        return this;
    }

    public lh addNetworkExtras(NetworkExtras networkextras)
    {
        lh.lh(networkextras);
        return this;
    }

    public lh addNetworkExtrasBundle(Class class1, Bundle bundle)
    {
        lh.lh(class1, bundle);
        return this;
    }

    public lh addTestDevice(String s1)
    {
        lh.lh(s1);
        return this;
    }

    public PublisherAdRequest build()
    {
        return new PublisherAdRequest(this, null);
    }

    public lh setBirthday(Date date)
    {
        lh.lh(date);
        return this;
    }

    public lh setContentUrl(String s1)
    {
        s.b(s1, "Content URL must be non-null.");
        s.b(s1, "Content URL must be non-empty.");
        boolean flag;
        Object aobj[];
        if (s1.length() <= 512)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aobj = new Object[2];
        aobj[0] = Integer.valueOf(512);
        aobj[1] = Integer.valueOf(s1.length());
        s.b(flag, "Content URL must not exceed %d in length.  Provided length was %d.", aobj);
        lh.lh(s1);
        return this;
    }

    public lh setGender(int i)
    {
        lh.lh(i);
        return this;
    }

    public lh setLocation(Location location)
    {
        lh.lh(location);
        return this;
    }

    public lh setManualImpressionsEnabled(boolean flag)
    {
        lh.lh(flag);
        return this;
    }

    public lh setPublisherProvidedId(String s1)
    {
        lh.lh(s1);
        return this;
    }

    public lh tagForChildDirectedTreatment(boolean flag)
    {
        lh.lh(flag);
        return this;
    }

    public ()
    {
    }
}
