// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.internal:
//            pb

public class pa
    implements SafeParcelable
{

    public static final pb CREATOR = new pb();
    public static final pa aru;
    public final String FE;
    public final String arv;
    public final String arw;
    public final String arx;
    public final int versionCode;

    public pa(int i, String s, String s1, String s2, String s3)
    {
        versionCode = i;
        arv = s;
        arw = s1;
        FE = s2;
        arx = s3;
    }

    public pa(String s, Locale locale, String s1)
    {
        this(1, s, locale.toString(), s1, null);
    }

    public int describeContents()
    {
        pb _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || !(obj instanceof pa))
            {
                return false;
            }
            pa pa1 = (pa)obj;
            if (!arw.equals(pa1.arw) || !arv.equals(pa1.arv) || !r.equal(FE, pa1.FE) || !r.equal(arx, pa1.arx))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = arv;
        aobj[1] = arw;
        aobj[2] = FE;
        return r.hashCode(aobj);
    }

    public String toString()
    {
        return r.k(this).a("clientPackageName", arv).a("locale", arw).a("accountName", FE).a("gCoreClientName", arx).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        pb _tmp = CREATOR;
        pb.a(this, parcel, i);
    }

    static 
    {
        aru = new pa("com.google.android.gms", Locale.ENGLISH, null);
    }
}
