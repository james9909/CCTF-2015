// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.model.moments.ItemScope;
import com.google.android.gms.plus.model.moments.Moment;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ll, pz, pw

public final class py extends ll
    implements Moment
{

    public static final pz CREATOR = new pz();
    private static final HashMap avy;
    String DH;
    final int DN;
    final Set avz;
    String awm;
    pw awu;
    pw awv;
    String we;

    public py()
    {
        DN = 1;
        avz = new HashSet();
    }

    py(Set set, int i, String s, pw pw1, String s1, pw pw2, String s2)
    {
        avz = set;
        DN = i;
        DH = s;
        awu = pw1;
        awm = s1;
        awv = pw2;
        we = s2;
    }

    public py(Set set, String s, pw pw1, String s1, pw pw2, String s2)
    {
        avz = set;
        DN = 1;
        DH = s;
        awu = pw1;
        awm = s1;
        awv = pw2;
        we = s2;
    }

    protected boolean a(lk.a a1)
    {
        return avz.contains(Integer.valueOf(a1.kb()));
    }

    protected Object b(lk.a a1)
    {
        switch (a1.kb())
        {
        case 3: // '\003'
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown safe parcelable id=").append(a1.kb()).toString());

        case 2: // '\002'
            return DH;

        case 4: // '\004'
            return awu;

        case 5: // '\005'
            return awm;

        case 6: // '\006'
            return awv;

        case 7: // '\007'
            return we;
        }
    }

    public int describeContents()
    {
        pz _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
label0:
        {
            if (!(obj instanceof py))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            py py1 = (py)obj;
            lk.a a1;
label1:
            do
            {
                for (Iterator iterator = avy.values().iterator(); iterator.hasNext();)
                {
                    a1 = (lk.a)iterator.next();
                    if (!a(a1))
                    {
                        continue label1;
                    }
                    if (py1.a(a1))
                    {
                        if (!b(a1).equals(py1.b(a1)))
                        {
                            return false;
                        }
                    } else
                    {
                        return false;
                    }
                }

                break label0;
            } while (!py1.a(a1));
            return false;
        }
        return true;
    }

    public Object freeze()
    {
        return qR();
    }

    public String getId()
    {
        return DH;
    }

    public ItemScope getResult()
    {
        return awu;
    }

    public String getStartDate()
    {
        return awm;
    }

    public ItemScope getTarget()
    {
        return awv;
    }

    public String getType()
    {
        return we;
    }

    public boolean hasId()
    {
        return avz.contains(Integer.valueOf(2));
    }

    public boolean hasResult()
    {
        return avz.contains(Integer.valueOf(4));
    }

    public boolean hasStartDate()
    {
        return avz.contains(Integer.valueOf(5));
    }

    public boolean hasTarget()
    {
        return avz.contains(Integer.valueOf(6));
    }

    public boolean hasType()
    {
        return avz.contains(Integer.valueOf(7));
    }

    public int hashCode()
    {
        Iterator iterator = avy.values().iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            lk.a a1 = (lk.a)iterator.next();
            int j;
            if (a(a1))
            {
                j = i + a1.kb() + b(a1).hashCode();
            } else
            {
                j = i;
            }
            i = j;
        }
        return i;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public HashMap jU()
    {
        return avy;
    }

    public py qR()
    {
        return this;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        pz _tmp = CREATOR;
        pz.a(this, parcel, i);
    }

    static 
    {
        avy = new HashMap();
        avy.put("id", lk.a.m("id", 2));
        avy.put("result", lk.a.a("result", 4, com/google/android/gms/internal/pw));
        avy.put("startDate", lk.a.m("startDate", 5));
        avy.put("target", lk.a.a("target", 6, com/google/android/gms/internal/pw));
        avy.put("type", lk.a.m("type", 7));
    }
}
