// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            pp

public class po
    implements SafeParcelable
{

    public static final pp CREATOR = new pp();
    public final int aut;
    public final int auu;
    public final String auv;
    public final String auw;
    public final boolean aux;
    public final String auy;
    public final String packageName;
    public final int versionCode;

    public po(int i, String s1, int j, int k, String s2, String s3, boolean flag, 
            String s4)
    {
        versionCode = i;
        packageName = s1;
        aut = j;
        auu = k;
        auv = s2;
        auw = s3;
        aux = flag;
        auy = s4;
    }

    public po(String s1, int i, int j, String s2, String s3, boolean flag)
    {
        versionCode = 1;
        packageName = (String)s.l(s1);
        aut = i;
        auu = j;
        auy = null;
        auv = s2;
        auw = s3;
        aux = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        po po1;
        if (this != obj)
        {
            if (obj instanceof po)
            {
                if (!packageName.equals((po1 = (po)obj).packageName) || aut != po1.aut || auu != po1.auu || !r.equal(auy, po1.auy) || !r.equal(auv, po1.auv) || !r.equal(auw, po1.auw) || aux != po1.aux)
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[6];
        aobj[0] = packageName;
        aobj[1] = Integer.valueOf(aut);
        aobj[2] = Integer.valueOf(auu);
        aobj[3] = auv;
        aobj[4] = auw;
        aobj[5] = Boolean.valueOf(aux);
        return r.hashCode(aobj);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("PlayLoggerContext[");
        stringbuilder.append("package=").append(packageName).append(',');
        stringbuilder.append("versionCode=").append(versionCode).append(',');
        stringbuilder.append("logSource=").append(auu).append(',');
        stringbuilder.append("logSourceName=").append(auy).append(',');
        stringbuilder.append("uploadAccount=").append(auv).append(',');
        stringbuilder.append("loggingId=").append(auw).append(',');
        stringbuilder.append("logAndroidId=").append(aux);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        pp.a(this, parcel, i);
    }

}
