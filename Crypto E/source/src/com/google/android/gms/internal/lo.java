// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            lp, lq, ln

public class lo
    implements SafeParcelable
{
    public static class a
        implements SafeParcelable
    {

        public static final lq CREATOR = new lq();
        final ArrayList Vo;
        final String className;
        final int versionCode;

        private static ArrayList c(HashMap hashmap)
        {
            if (hashmap == null)
            {
                return null;
            }
            ArrayList arraylist = new ArrayList();
            String s1;
            for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext(); arraylist.add(new b(s1, (lk.a)hashmap.get(s1))))
            {
                s1 = (String)iterator.next();
            }

            return arraylist;
        }

        public int describeContents()
        {
            lq _tmp = CREATOR;
            return 0;
        }

        HashMap kl()
        {
            HashMap hashmap = new HashMap();
            int i = Vo.size();
            for (int j = 0; j < i; j++)
            {
                b b1 = (b)Vo.get(j);
                hashmap.put(b1.fv, b1.Vp);
            }

            return hashmap;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            lq _tmp = CREATOR;
            lq.a(this, parcel, i);
        }


        a(int i, String s1, ArrayList arraylist)
        {
            versionCode = i;
            className = s1;
            Vo = arraylist;
        }

        a(String s1, HashMap hashmap)
        {
            versionCode = 1;
            className = s1;
            Vo = c(hashmap);
        }
    }

    public static class b
        implements SafeParcelable
    {

        public static final ln CREATOR = new ln();
        final lk.a Vp;
        final String fv;
        final int versionCode;

        public int describeContents()
        {
            ln _tmp = CREATOR;
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            ln _tmp = CREATOR;
            ln.a(this, parcel, i);
        }


        b(int i, String s1, lk.a a1)
        {
            versionCode = i;
            fv = s1;
            Vp = a1;
        }

        b(String s1, lk.a a1)
        {
            versionCode = 1;
            fv = s1;
            Vp = a1;
        }
    }


    public static final lp CREATOR = new lp();
    private final int DN;
    private final HashMap Vl;
    private final ArrayList Vm;
    private final String Vn;

    lo(int i, ArrayList arraylist, String s1)
    {
        DN = i;
        Vm = null;
        Vl = c(arraylist);
        Vn = (String)s.l(s1);
        kh();
    }

    public lo(Class class1)
    {
        DN = 1;
        Vm = null;
        Vl = new HashMap();
        Vn = class1.getCanonicalName();
    }

    private static HashMap c(ArrayList arraylist)
    {
        HashMap hashmap = new HashMap();
        int i = arraylist.size();
        for (int j = 0; j < i; j++)
        {
            a a1 = (a)arraylist.get(j);
            hashmap.put(a1.className, a1.kl());
        }

        return hashmap;
    }

    public void a(Class class1, HashMap hashmap)
    {
        Vl.put(class1.getCanonicalName(), hashmap);
    }

    public boolean b(Class class1)
    {
        return Vl.containsKey(class1.getCanonicalName());
    }

    public HashMap bn(String s1)
    {
        return (HashMap)Vl.get(s1);
    }

    public int describeContents()
    {
        lp _tmp = CREATOR;
        return 0;
    }

    int getVersionCode()
    {
        return DN;
    }

    public void kh()
    {
        for (Iterator iterator = Vl.keySet().iterator(); iterator.hasNext();)
        {
            String s1 = (String)iterator.next();
            HashMap hashmap = (HashMap)Vl.get(s1);
            Iterator iterator1 = hashmap.keySet().iterator();
            while (iterator1.hasNext()) 
            {
                ((lk.a)hashmap.get((String)iterator1.next())).a(this);
            }
        }

    }

    public void ki()
    {
        String s1;
        HashMap hashmap1;
        for (Iterator iterator = Vl.keySet().iterator(); iterator.hasNext(); Vl.put(s1, hashmap1))
        {
            s1 = (String)iterator.next();
            HashMap hashmap = (HashMap)Vl.get(s1);
            hashmap1 = new HashMap();
            String s2;
            for (Iterator iterator1 = hashmap.keySet().iterator(); iterator1.hasNext(); hashmap1.put(s2, ((lk.a)hashmap.get(s2)).jX()))
            {
                s2 = (String)iterator1.next();
            }

        }

    }

    ArrayList kj()
    {
        ArrayList arraylist = new ArrayList();
        String s1;
        for (Iterator iterator = Vl.keySet().iterator(); iterator.hasNext(); arraylist.add(new a(s1, (HashMap)Vl.get(s1))))
        {
            s1 = (String)iterator.next();
        }

        return arraylist;
    }

    public String kk()
    {
        return Vn;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (Iterator iterator = Vl.keySet().iterator(); iterator.hasNext();)
        {
            String s1 = (String)iterator.next();
            stringbuilder.append(s1).append(":\n");
            HashMap hashmap = (HashMap)Vl.get(s1);
            Iterator iterator1 = hashmap.keySet().iterator();
            while (iterator1.hasNext()) 
            {
                String s2 = (String)iterator1.next();
                stringbuilder.append("  ").append(s2).append(": ");
                stringbuilder.append(hashmap.get(s2));
            }
        }

        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        lp _tmp = CREATOR;
        lp.a(this, parcel, i);
    }

}
