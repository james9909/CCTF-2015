// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import android.location.Location;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload, GetLocationDataTask

public class this._cls0 extends AuthPayload
{

    Double accuracy;
    Double latitude;
    Double longitude;
    final GetLocationDataTask this$0;
    String username;

    public ()
    {
        this$0 = GetLocationDataTask.this;
        super();
        username = UserPrefs.k();
        latitude = Double.valueOf(GetLocationDataTask.a(GetLocationDataTask.this).getLatitude());
        longitude = Double.valueOf(GetLocationDataTask.a(GetLocationDataTask.this).getLongitude());
        accuracy = Double.valueOf(GetLocationDataTask.a(GetLocationDataTask.this).getAccuracy());
    }
}
