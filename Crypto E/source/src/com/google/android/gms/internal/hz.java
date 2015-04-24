// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            ia, ig, ih

public class hz
    implements SafeParcelable
{

    public static final ia CREATOR = new ia();
    public static final int DY = Integer.parseInt("-1");
    private static final ih DZ = (new ih.a("SsbContext")).G(true).av("blob").fP();
    final int DN;
    public final String Ea;
    final ih Eb;
    public final int Ec;
    public final byte Ed[];

    hz(int i, String s1, ih ih, int j, byte abyte0[])
    {
        boolean flag;
        String s2;
        if (j == DY || ig.R(j) != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.b(flag, (new StringBuilder()).append("Invalid section type ").append(j).toString());
        DN = i;
        Ea = s1;
        Eb = ih;
        Ec = j;
        Ed = abyte0;
        s2 = fN();
        if (s2 != null)
        {
            throw new IllegalArgumentException(s2);
        } else
        {
            return;
        }
    }

    public hz(String s1, ih ih)
    {
        this(1, s1, ih, DY, null);
    }

    public hz(String s1, ih ih, String s2)
    {
        this(1, s1, ih, ig.au(s2), null);
    }

    public hz(byte abyte0[], ih ih)
    {
        this(1, null, ih, DY, abyte0);
    }

    public int describeContents()
    {
        ia _tmp = CREATOR;
        return 0;
    }

    public String fN()
    {
        if (Ec != DY && ig.R(Ec) == null)
        {
            return (new StringBuilder()).append("Invalid section type ").append(Ec).toString();
        }
        if (Ea != null && Ed != null)
        {
            return "Both content and blobContent set";
        } else
        {
            return null;
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ia _tmp = CREATOR;
        ia.a(this, parcel, i);
    }

}
