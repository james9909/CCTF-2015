// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

// Referenced classes of package com.google.android.gms.internal:
//            ej, eu, ew, et

public final class ek
    implements SafeParcelable
{

    public static final ej CREATOR = new ej();
    public final eu lW;
    public final ew ts;
    public final Context tt;
    public final et tu;
    public final int versionCode;

    ek(int i, IBinder ibinder, IBinder ibinder1, IBinder ibinder2, IBinder ibinder3)
    {
        versionCode = i;
        lW = (eu)e.f(com.google.android.gms.dynamic.d.a.aX(ibinder));
        ts = (ew)e.f(com.google.android.gms.dynamic.d.a.aX(ibinder1));
        tt = (Context)e.f(com.google.android.gms.dynamic.d.a.aX(ibinder2));
        tu = (et)e.f(com.google.android.gms.dynamic.d.a.aX(ibinder3));
    }

    public ek(Context context, eu eu1, ew ew1, et et1)
    {
        versionCode = 2;
        tt = context;
        lW = eu1;
        ts = ew1;
        tu = et1;
    }

    public static void a(Intent intent, ek ek1)
    {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", ek1);
        intent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", bundle);
    }

    public static ek c(Intent intent)
    {
        ek ek1;
        try
        {
            Bundle bundle = intent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
            bundle.setClassLoader(com/google/android/gms/internal/ek.getClassLoader());
            ek1 = (ek)bundle.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
        }
        catch (Exception exception)
        {
            return null;
        }
        return ek1;
    }

    IBinder cC()
    {
        return e.n(tu).asBinder();
    }

    IBinder cD()
    {
        return e.n(lW).asBinder();
    }

    IBinder cE()
    {
        return e.n(ts).asBinder();
    }

    IBinder cF()
    {
        return e.n(tt).asBinder();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ej.a(this, parcel, i);
    }

}
