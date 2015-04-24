// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.api2.framework.HyperRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;

// Referenced classes of package com.snapchat.android.ads:
//            AdManager, AdPlacement

class > extends HyperRequestTask
{

    final String a;
    final AdPlacement b;
    final a c;

    public void a(NetworkResult networkresult)
    {
        super.a(networkresult);
        if (networkresult.j() == 200)
        {
            Object aobj1[] = new Object[3];
            aobj1[0] = b;
            aobj1[1] = a;
            aobj1[2] = networkresult;
            Timber.c("AdManager", "onResult recordImpression: %s, url: %s, result: %s", aobj1);
            return;
        } else
        {
            Object aobj[] = new Object[3];
            aobj[0] = b;
            aobj[1] = a;
            aobj[2] = networkresult;
            Timber.e("AdManager", "onResult recordImpression: %s, url: %s, result: %s", aobj);
            return;
        }
    }

    public Object b()
    {
        return null;
    }

    public HttpMethod c()
    {
        return HttpMethod.GET;
    }

    public String m_()
    {
        return a;
    }

    ( , String s, AdPlacement adplacement)
    {
        c = ;
        a = s;
        b = adplacement;
        super();
    }
}
