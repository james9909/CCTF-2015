// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.identity.intents:
//            a

public final class UserAddressRequest
    implements SafeParcelable
{
    public final class Builder
    {

        final UserAddressRequest amX;

        public Builder addAllowedCountrySpecification(CountrySpecification countryspecification)
        {
            if (amX.amW == null)
            {
                amX.amW = new ArrayList();
            }
            amX.amW.add(countryspecification);
            return this;
        }

        public Builder addAllowedCountrySpecifications(Collection collection)
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

        private Builder()
        {
            amX = UserAddressRequest.this;
            super();
        }

    }


    public static final android.os.Parcelable.Creator CREATOR = new a();
    private final int DN;
    List amW;

    UserAddressRequest()
    {
        DN = 1;
    }

    UserAddressRequest(int i, List list)
    {
        DN = i;
        amW = list;
    }

    public static Builder newBuilder()
    {
        UserAddressRequest useraddressrequest = new UserAddressRequest();
        useraddressrequest.getClass();
        return useraddressrequest. new Builder();
    }

    public int describeContents()
    {
        return 0;
    }

    public int getVersionCode()
    {
        return DN;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        a.a(this, parcel, i);
    }

}