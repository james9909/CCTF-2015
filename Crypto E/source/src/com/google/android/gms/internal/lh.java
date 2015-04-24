// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            li, lj

public final class lh
    implements SafeParcelable, lk.b
{
    public static final class a
        implements SafeParcelable
    {

        public static final lj CREATOR = new lj();
        final String UZ;
        final int Va;
        final int versionCode;

        public int describeContents()
        {
            lj _tmp = CREATOR;
            return 0;
        }

        public void writeToParcel(Parcel parcel, int j)
        {
            lj _tmp = CREATOR;
            lj.a(this, parcel, j);
        }


        a(int j, String s, int k)
        {
            versionCode = j;
            UZ = s;
            Va = k;
        }

        a(String s, int j)
        {
            versionCode = 1;
            UZ = s;
            Va = j;
        }
    }


    public static final li CREATOR = new li();
    private final int DN;
    private final HashMap UW;
    private final HashMap UX;
    private final ArrayList UY;

    public lh()
    {
        DN = 1;
        UW = new HashMap();
        UX = new HashMap();
        UY = null;
    }

    lh(int j, ArrayList arraylist)
    {
        DN = j;
        UW = new HashMap();
        UX = new HashMap();
        UY = null;
        b(arraylist);
    }

    private void b(ArrayList arraylist)
    {
        a a1;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); i(a1.UZ, a1.Va))
        {
            a1 = (a)iterator.next();
        }

    }

    public String a(Integer integer)
    {
        String s = (String)UX.get(integer);
        if (s == null && UW.containsKey("gms_unknown"))
        {
            s = "gms_unknown";
        }
        return s;
    }

    public Object convertBack(Object obj)
    {
        return a((Integer)obj);
    }

    public int describeContents()
    {
        li _tmp = CREATOR;
        return 0;
    }

    int getVersionCode()
    {
        return DN;
    }

    public lh i(String s, int j)
    {
        UW.put(s, Integer.valueOf(j));
        UX.put(Integer.valueOf(j), s);
        return this;
    }

    ArrayList jR()
    {
        ArrayList arraylist = new ArrayList();
        String s;
        for (Iterator iterator = UW.keySet().iterator(); iterator.hasNext(); arraylist.add(new a(s, ((Integer)UW.get(s)).intValue())))
        {
            s = (String)iterator.next();
        }

        return arraylist;
    }

    public int jS()
    {
        return 7;
    }

    public int jT()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        li _tmp = CREATOR;
        li.a(this, parcel, j);
    }

}
