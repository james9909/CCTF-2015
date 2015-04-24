// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

// Referenced classes of package com.google.android.gms.internal:
//            dx, t, dz, hk, 
//            cf, ec, ci, hg, 
//            dv, y

public final class dy
    implements SafeParcelable
{

    public static final dx CREATOR = new dx();
    public final hg lH;
    public final int orientation;
    public final dv sO;
    public final t sP;
    public final dz sQ;
    public final hk sR;
    public final cf sS;
    public final String sT;
    public final boolean sU;
    public final String sV;
    public final ec sW;
    public final int sX;
    public final ci sY;
    public final String sZ;
    public final String st;
    public final y ta;
    public final int versionCode;

    dy(int i, dv dv, IBinder ibinder, IBinder ibinder1, IBinder ibinder2, IBinder ibinder3, String s, 
            boolean flag, String s1, IBinder ibinder4, int j, int k, String s2, hg hg, 
            IBinder ibinder5, String s3, y y)
    {
        versionCode = i;
        sO = dv;
        sP = (t)e.f(com.google.android.gms.dynamic.d.a.aX(ibinder));
        sQ = (dz)e.f(com.google.android.gms.dynamic.d.a.aX(ibinder1));
        sR = (hk)e.f(com.google.android.gms.dynamic.d.a.aX(ibinder2));
        sS = (cf)e.f(com.google.android.gms.dynamic.d.a.aX(ibinder3));
        sT = s;
        sU = flag;
        sV = s1;
        sW = (ec)e.f(com.google.android.gms.dynamic.d.a.aX(ibinder4));
        orientation = j;
        sX = k;
        st = s2;
        lH = hg;
        sY = (ci)e.f(com.google.android.gms.dynamic.d.a.aX(ibinder5));
        sZ = s3;
        ta = y;
    }

    public dy(dv dv, t t1, dz dz1, ec ec1, hg hg)
    {
        versionCode = 4;
        sO = dv;
        sP = t1;
        sQ = dz1;
        sR = null;
        sS = null;
        sT = null;
        sU = false;
        sV = null;
        sW = ec1;
        orientation = -1;
        sX = 4;
        st = null;
        lH = hg;
        sY = null;
        sZ = null;
        ta = null;
    }

    public dy(t t1, dz dz1, cf cf1, ec ec1, hk hk1, boolean flag, int i, 
            String s, hg hg, ci ci1)
    {
        versionCode = 4;
        sO = null;
        sP = t1;
        sQ = dz1;
        sR = hk1;
        sS = cf1;
        sT = null;
        sU = flag;
        sV = null;
        sW = ec1;
        orientation = i;
        sX = 3;
        st = s;
        lH = hg;
        sY = ci1;
        sZ = null;
        ta = null;
    }

    public dy(t t1, dz dz1, cf cf1, ec ec1, hk hk1, boolean flag, int i, 
            String s, String s1, hg hg, ci ci1)
    {
        versionCode = 4;
        sO = null;
        sP = t1;
        sQ = dz1;
        sR = hk1;
        sS = cf1;
        sT = s1;
        sU = flag;
        sV = s;
        sW = ec1;
        orientation = i;
        sX = 3;
        st = null;
        lH = hg;
        sY = ci1;
        sZ = null;
        ta = null;
    }

    public dy(t t1, dz dz1, ec ec1, hk hk1, int i, hg hg, String s, 
            y y)
    {
        versionCode = 4;
        sO = null;
        sP = t1;
        sQ = dz1;
        sR = hk1;
        sS = null;
        sT = null;
        sU = false;
        sV = null;
        sW = ec1;
        orientation = i;
        sX = 1;
        st = null;
        lH = hg;
        sY = null;
        sZ = s;
        ta = y;
    }

    public dy(t t1, dz dz1, ec ec1, hk hk1, boolean flag, int i, hg hg)
    {
        versionCode = 4;
        sO = null;
        sP = t1;
        sQ = dz1;
        sR = hk1;
        sS = null;
        sT = null;
        sU = flag;
        sV = null;
        sW = ec1;
        orientation = i;
        sX = 2;
        st = null;
        lH = hg;
        sY = null;
        sZ = null;
        ta = null;
    }

    public static void a(Intent intent, dy dy1)
    {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", dy1);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static dy b(Intent intent)
    {
        dy dy1;
        try
        {
            Bundle bundle = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundle.setClassLoader(com/google/android/gms/internal/dy.getClassLoader());
            dy1 = (dy)bundle.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        }
        catch (Exception exception)
        {
            return null;
        }
        return dy1;
    }

    IBinder cs()
    {
        return e.n(sP).asBinder();
    }

    IBinder ct()
    {
        return e.n(sQ).asBinder();
    }

    IBinder cu()
    {
        return e.n(sR).asBinder();
    }

    IBinder cv()
    {
        return e.n(sS).asBinder();
    }

    IBinder cw()
    {
        return e.n(sY).asBinder();
    }

    IBinder cx()
    {
        return e.n(sW).asBinder();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        dx.a(this, parcel, i);
    }

}
