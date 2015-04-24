// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ii, ib

public class ih
    implements SafeParcelable
{
    public static final class a
    {

        private String Er;
        private boolean Es;
        private int Et;
        private boolean Eu;
        private String Ev;
        private final List Ew = new ArrayList();
        private BitSet Ex;
        private String Ey;
        private final String mName;

        public a G(boolean flag)
        {
            Es = flag;
            return this;
        }

        public a H(boolean flag)
        {
            Eu = flag;
            return this;
        }

        public a S(int i)
        {
            if (Ex == null)
            {
                Ex = new BitSet();
            }
            Ex.set(i);
            return this;
        }

        public a av(String s)
        {
            Er = s;
            return this;
        }

        public a aw(String s)
        {
            Ey = s;
            return this;
        }

        public ih fP()
        {
            int i = 0;
            BitSet bitset = Ex;
            int ai[] = null;
            if (bitset != null)
            {
                ai = new int[Ex.cardinality()];
                for (int j = Ex.nextSetBit(0); j >= 0;)
                {
                    int k = i + 1;
                    ai[i] = j;
                    j = Ex.nextSetBit(j + 1);
                    i = k;
                }

            }
            return new ih(mName, Er, Es, Et, Eu, Ev, (ib[])Ew.toArray(new ib[Ew.size()]), ai, Ey);
        }

        public a(String s)
        {
            mName = s;
            Et = 1;
        }
    }


    public static final ii CREATOR = new ii();
    final int DN;
    public final String Ek;
    public final boolean El;
    public final boolean Em;
    public final String En;
    public final ib Eo[];
    final int Ep[];
    public final String Eq;
    public final String name;
    public final int weight;

    ih(int i, String s, String s1, boolean flag, int j, boolean flag1, String s2, 
            ib aib[], int ai[], String s3)
    {
        DN = i;
        name = s;
        Ek = s1;
        El = flag;
        weight = j;
        Em = flag1;
        En = s2;
        Eo = aib;
        Ep = ai;
        Eq = s3;
    }

    ih(String s, String s1, boolean flag, int i, boolean flag1, String s2, ib aib[], 
            int ai[], String s3)
    {
        this(2, s, s1, flag, i, flag1, s2, aib, ai, s3);
    }

    public int describeContents()
    {
        ii _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof ih;
        boolean flag1 = false;
        if (flag)
        {
            ih ih1 = (ih)obj;
            boolean flag2 = name.equals(ih1.name);
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = Ek.equals(ih1.Ek);
                flag1 = false;
                if (flag3)
                {
                    boolean flag4 = El;
                    boolean flag5 = ih1.El;
                    flag1 = false;
                    if (flag4 == flag5)
                    {
                        flag1 = true;
                    }
                }
            }
        }
        return flag1;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ii _tmp = CREATOR;
        ii.a(this, parcel, i);
    }

}
