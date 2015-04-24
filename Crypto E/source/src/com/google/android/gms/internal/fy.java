// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Messenger;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            fx, av, ay, hg

public class fy
    implements android.os.Parcelable.Creator
{

    public fy()
    {
    }

    static void a(fx fx1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        b.c(parcel, 1, fx1.versionCode);
        b.a(parcel, 2, fx1.uJ, false);
        b.a(parcel, 3, fx1.uK, i, false);
        b.a(parcel, 4, fx1.lL, i, false);
        b.a(parcel, 5, fx1.lE, false);
        b.a(parcel, 6, fx1.applicationInfo, i, false);
        b.a(parcel, 7, fx1.uL, i, false);
        b.a(parcel, 8, fx1.uM, false);
        b.a(parcel, 9, fx1.uN, false);
        b.a(parcel, 10, fx1.uO, false);
        b.a(parcel, 11, fx1.lH, i, false);
        b.a(parcel, 12, fx1.uP, false);
        b.c(parcel, 13, fx1.uQ);
        b.b(parcel, 14, fx1.lV, false);
        b.a(parcel, 15, fx1.uR, false);
        b.a(parcel, 17, fx1.uT, i, false);
        b.a(parcel, 16, fx1.uS);
        b.c(parcel, 19, fx1.uV);
        b.c(parcel, 18, fx1.uU);
        b.a(parcel, 20, fx1.uW);
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return h(parcel);
    }

    public fx h(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        int j = 0;
        android.os.Bundle bundle = null;
        av av1 = null;
        ay ay1 = null;
        String s1 = null;
        ApplicationInfo applicationinfo = null;
        PackageInfo packageinfo = null;
        String s2 = null;
        String s3 = null;
        String s4 = null;
        hg hg1 = null;
        android.os.Bundle bundle1 = null;
        int k = 0;
        java.util.ArrayList arraylist = null;
        android.os.Bundle bundle2 = null;
        boolean flag = false;
        Messenger messenger = null;
        int l = 0;
        int i1 = 0;
        float f = 0.0F;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int j1 = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(j1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.r(parcel, j1);
                    break;

                case 3: // '\003'
                    av1 = (av)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, av.CREATOR);
                    break;

                case 4: // '\004'
                    ay1 = (ay)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, ay.CREATOR);
                    break;

                case 5: // '\005'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 6: // '\006'
                    applicationinfo = (ApplicationInfo)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, ApplicationInfo.CREATOR);
                    break;

                case 7: // '\007'
                    packageinfo = (PackageInfo)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, PackageInfo.CREATOR);
                    break;

                case 8: // '\b'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 9: // '\t'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 10: // '\n'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 11: // '\013'
                    hg1 = (hg)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, hg.CREATOR);
                    break;

                case 12: // '\f'
                    bundle1 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, j1);
                    break;

                case 13: // '\r'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 14: // '\016'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.D(parcel, j1);
                    break;

                case 15: // '\017'
                    bundle2 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, j1);
                    break;

                case 17: // '\021'
                    messenger = (Messenger)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, Messenger.CREATOR);
                    break;

                case 16: // '\020'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 19: // '\023'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 18: // '\022'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 20: // '\024'
                    f = com.google.android.gms.common.internal.safeparcel.a.l(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new fx(j, bundle, av1, ay1, s1, applicationinfo, packageinfo, s2, s3, s4, hg1, bundle1, k, arraylist, bundle2, flag, messenger, l, i1, f);
            }
        } while (true);
    }

    public Object[] newArray(int i)
    {
        return s(i);
    }

    public fx[] s(int i)
    {
        return new fx[i];
    }
}
