// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents;

import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.identity.intents:
//            UserAddressRequest

public final class <init>
{

    final UserAddressRequest amX;

    public <init> addAllowedCountrySpecification(CountrySpecification countryspecification)
    {
        if (amX.amW == null)
        {
            amX.amW = new ArrayList();
        }
        amX.amW.add(countryspecification);
        return this;
    }

    public amX addAllowedCountrySpecifications(Collection collection)
    {
        if (amX.amW == null)
        {
            amX.amW = new ArrayList();
        }
        amX.amW.addAll(collection);
        return this;
    }

    public UserAddressRequest build()
    {
        if (amX.amW != null)
        {
            amX.amW = Collections.unmodifiableList(amX.amW);
        }
        return amX;
    }

    private (UserAddressRequest useraddressrequest)
    {
        amX = useraddressrequest;
        super();
    }

    amX(UserAddressRequest useraddressrequest, amX amx)
    {
        this(useraddressrequest);
    }
}
