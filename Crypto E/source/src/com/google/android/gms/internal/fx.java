// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            fy, hg, ay, av

public final class fx
    implements SafeParcelable
{
    public static final class a
    {

        public final ApplicationInfo applicationInfo;
        public final String lE;
        public final hg lH;
        public final ay lL;
        public final List lV;
        public final Bundle uJ;
        public final av uK;
        public final PackageInfo uL;
        public final String uN;
        public final String uO;
        public final Bundle uP;
        public final int uQ;
        public final Bundle uR;
        public final boolean uS;
        public final Messenger uT;
        public final int uU;
        public final int uV;
        public final float uW;

        public a(Bundle bundle, av av, ay ay, String s, ApplicationInfo applicationinfo, PackageInfo packageinfo, String s1, 
                String s2, hg hg, Bundle bundle1, List list, Bundle bundle2, boolean flag, Messenger messenger, 
                int i, int j, float f)
        {
            uJ = bundle;
            uK = av;
            lL = ay;
            lE = s;
            applicationInfo = applicationinfo;
            uL = packageinfo;
            uN = s1;
            uO = s2;
            lH = hg;
            uP = bundle1;
            uS = flag;
            uT = messenger;
            uU = i;
            uV = j;
            uW = f;
            if (list != null && list.size() > 0)
            {
                uQ = 2;
                lV = list;
            } else
            {
                uQ = 0;
                lV = null;
            }
            uR = bundle2;
        }
    }


    public static final fy CREATOR = new fy();
    public final ApplicationInfo applicationInfo;
    public final String lE;
    public final hg lH;
    public final ay lL;
    public final List lV;
    public final Bundle uJ;
    public final av uK;
    public final PackageInfo uL;
    public final String uM;
    public final String uN;
    public final String uO;
    public final Bundle uP;
    public final int uQ;
    public final Bundle uR;
    public final boolean uS;
    public final Messenger uT;
    public final int uU;
    public final int uV;
    public final float uW;
    public final int versionCode;

    fx(int i, Bundle bundle, av av, ay ay, String s, ApplicationInfo applicationinfo, PackageInfo packageinfo, 
            String s1, String s2, String s3, hg hg, Bundle bundle1, int j, List list, 
            Bundle bundle2, boolean flag, Messenger messenger, int k, int l, float f)
    {
        versionCode = i;
        uJ = bundle;
        uK = av;
        lL = ay;
        lE = s;
        applicationInfo = applicationinfo;
        uL = packageinfo;
        uM = s1;
        uN = s2;
        uO = s3;
        lH = hg;
        uP = bundle1;
        uQ = j;
        lV = list;
        uR = bundle2;
        uS = flag;
        uT = messenger;
        uU = k;
        uV = l;
        uW = f;
    }

    public fx(Bundle bundle, av av, ay ay, String s, ApplicationInfo applicationinfo, PackageInfo packageinfo, String s1, 
            String s2, String s3, hg hg, Bundle bundle1, int i, List list, Bundle bundle2, 
            boolean flag, Messenger messenger, int j, int k, float f)
    {
        this(5, bundle, av, ay, s, applicationinfo, packageinfo, s1, s2, s3, hg, bundle1, i, list, bundle2, flag, messenger, j, k, f);
    }

    public fx(a a1, String s)
    {
        this(a1.uJ, a1.uK, a1.lL, a1.lE, a1.applicationInfo, a1.uL, s, a1.uN, a1.uO, a1.lH, a1.uP, a1.uQ, a1.lV, a1.uR, a1.uS, a1.uT, a1.uU, a1.uV, a1.uW);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        fy.a(this, parcel, i);
    }

}
