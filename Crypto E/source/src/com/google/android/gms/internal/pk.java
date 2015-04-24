// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            pm

public class pk
    implements SafeParcelable
{

    public static final pm CREATOR = new pm();
    public final long auj;
    public final byte auk[];
    public final Bundle aul;
    public final String tag;
    public final int versionCode;

    pk(int i, long l, String s, byte abyte0[], Bundle bundle)
    {
        versionCode = i;
        auj = l;
        tag = s;
        auk = abyte0;
        aul = bundle;
    }

    public transient pk(long l, String s, byte abyte0[], String as[])
    {
        versionCode = 1;
        auj = l;
        tag = s;
        auk = abyte0;
        aul = h(as);
    }

    private static transient Bundle h(String as[])
    {
        Bundle bundle = null;
        if (as != null) goto _L2; else goto _L1
_L1:
        return bundle;
_L2:
        if (as.length % 2 != 0)
        {
            throw new IllegalArgumentException("extras must have an even number of elements");
        }
        int i = as.length / 2;
        bundle = null;
        if (i != 0)
        {
            bundle = new Bundle(i);
            int j = 0;
            while (j < i) 
            {
                bundle.putString(as[j * 2], as[1 + j * 2]);
                j++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("tag=").append(tag).append(",");
        stringbuilder.append("eventTime=").append(auj).append(",");
        if (aul != null && !aul.isEmpty())
        {
            stringbuilder.append("keyValues=");
            for (Iterator iterator = aul.keySet().iterator(); iterator.hasNext(); stringbuilder.append(" "))
            {
                String s = (String)iterator.next();
                stringbuilder.append("(").append(s).append(",");
                stringbuilder.append(aul.getString(s)).append(")");
            }

        }
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        pm.a(this, parcel, i);
    }

}
