// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ll, qe, lh, qb, 
//            qf, qg

public static final class awU extends ll
    implements com.google.android.gms.plus.model.people.n.Cover
{
    public static final class a extends ll
        implements com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
    {

        public static final qf CREATOR = new qf();
        private static final HashMap avy;
        final int DN;
        final Set avz;
        int awV;
        int awW;

        protected boolean a(lk.a a1)
        {
            return avz.contains(Integer.valueOf(a1.kb()));
        }

        protected Object b(lk.a a1)
        {
            switch (a1.kb())
            {
            default:
                throw new IllegalStateException((new StringBuilder()).append("Unknown safe parcelable id=").append(a1.kb()).toString());

            case 2: // '\002'
                return Integer.valueOf(awV);

            case 3: // '\003'
                return Integer.valueOf(awW);
            }
        }

        public int describeContents()
        {
            qf _tmp = CREATOR;
            return 0;
        }

        public boolean equals(Object obj)
        {
label0:
            {
                if (!(obj instanceof a))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                a a1 = (a)obj;
                lk.a a2;
label1:
                do
                {
                    for (Iterator iterator = avy.values().iterator(); iterator.hasNext();)
                    {
                        a2 = (lk.a)iterator.next();
                        if (!a(a2))
                        {
                            continue label1;
                        }
                        if (a1.a(a2))
                        {
                            if (!b(a2).equals(a1.b(a2)))
                            {
                                return false;
                            }
                        } else
                        {
                            return false;
                        }
                    }

                    break label0;
                } while (!a1.a(a2));
                return false;
            }
            return true;
        }

        public Object freeze()
        {
            return qW();
        }

        public int getLeftImageOffset()
        {
            return awV;
        }

        public int getTopImageOffset()
        {
            return awW;
        }

        public boolean hasLeftImageOffset()
        {
            return avz.contains(Integer.valueOf(2));
        }

        public boolean hasTopImageOffset()
        {
            return avz.contains(Integer.valueOf(3));
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

        public a qW()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            qf _tmp = CREATOR;
            qf.a(this, parcel, i);
        }

        static 
        {
            avy = new HashMap();
            avy.put("leftImageOffset", lk.a.j("leftImageOffset", 2));
            avy.put("topImageOffset", lk.a.j("topImageOffset", 3));
        }

        public a()
        {
            DN = 1;
            avz = new HashSet();
        }

        a(Set set, int i, int j, int k)
        {
            avz = set;
            DN = i;
            awV = j;
            awW = k;
        }
    }

    public static final class b extends ll
        implements com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
    {

        public static final qg CREATOR = new qg();
        private static final HashMap avy;
        final int DN;
        final Set avz;
        int li;
        int lj;
        String wh;

        protected boolean a(lk.a a1)
        {
            return avz.contains(Integer.valueOf(a1.kb()));
        }

        protected Object b(lk.a a1)
        {
            switch (a1.kb())
            {
            default:
                throw new IllegalStateException((new StringBuilder()).append("Unknown safe parcelable id=").append(a1.kb()).toString());

            case 2: // '\002'
                return Integer.valueOf(lj);

            case 3: // '\003'
                return wh;

            case 4: // '\004'
                return Integer.valueOf(li);
            }
        }

        public int describeContents()
        {
            qg _tmp = CREATOR;
            return 0;
        }

        public boolean equals(Object obj)
        {
label0:
            {
                if (!(obj instanceof b))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                b b1 = (b)obj;
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
                        if (b1.a(a1))
                        {
                            if (!b(a1).equals(b1.b(a1)))
                            {
                                return false;
                            }
                        } else
                        {
                            return false;
                        }
                    }

                    break label0;
                } while (!b1.a(a1));
                return false;
            }
            return true;
        }

        public Object freeze()
        {
            return qX();
        }

        public int getHeight()
        {
            return lj;
        }

        public String getUrl()
        {
            return wh;
        }

        public int getWidth()
        {
            return li;
        }

        public boolean hasHeight()
        {
            return avz.contains(Integer.valueOf(2));
        }

        public boolean hasUrl()
        {
            return avz.contains(Integer.valueOf(3));
        }

        public boolean hasWidth()
        {
            return avz.contains(Integer.valueOf(4));
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

        public b qX()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            qg _tmp = CREATOR;
            qg.a(this, parcel, i);
        }

        static 
        {
            avy = new HashMap();
            avy.put("height", lk.a.j("height", 2));
            avy.put("url", lk.a.m("url", 3));
            avy.put("width", lk.a.j("width", 4));
        }

        public b()
        {
            DN = 1;
            avz = new HashSet();
        }

        b(Set set, int i, int j, String s, int k)
        {
            avz = set;
            DN = i;
            lj = j;
            wh = s;
            li = k;
        }
    }


    public static final qe CREATOR = new qe();
    private static final HashMap avy;
    final int DN;
    final Set avz;
    a awS;
    b awT;
    int awU;

    protected boolean a(nit> nit>)
    {
        return avz.contains(Integer.valueOf(nit>.kb()));
    }

    protected Object b(kb kb)
    {
        switch (kb.kb())
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown safe parcelable id=").append(kb.kb()).toString());

        case 2: // '\002'
            return awS;

        case 3: // '\003'
            return awT;

        case 4: // '\004'
            return Integer.valueOf(awU);
        }
    }

    public int describeContents()
    {
        qe _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
label0:
        {
            if (!(obj instanceof CREATOR))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            CREATOR creator = (CREATOR)obj;
            CREATOR creator1;
label1:
            do
            {
                for (Iterator iterator = avy.values().iterator(); iterator.hasNext();)
                {
                    creator1 = (avy)iterator.next();
                    if (!a(creator1))
                    {
                        continue label1;
                    }
                    if (creator.a(creator1))
                    {
                        if (!b(creator1).equals(creator.b(creator1)))
                        {
                            return false;
                        }
                    } else
                    {
                        return false;
                    }
                }

                break label0;
            } while (!creator.a(creator1));
            return false;
        }
        return true;
    }

    public Object freeze()
    {
        return qV();
    }

    public com.google.android.gms.plus.model.people.n.Cover.CoverInfo getCoverInfo()
    {
        return awS;
    }

    public com.google.android.gms.plus.model.people.n.Cover.CoverPhoto getCoverPhoto()
    {
        return awT;
    }

    public int getLayout()
    {
        return awU;
    }

    public boolean hasCoverInfo()
    {
        return avz.contains(Integer.valueOf(2));
    }

    public boolean hasCoverPhoto()
    {
        return avz.contains(Integer.valueOf(3));
    }

    public boolean hasLayout()
    {
        return avz.contains(Integer.valueOf(4));
    }

    public int hashCode()
    {
        Iterator iterator = avy.values().iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            avz avz1 = (avy)iterator.next();
            int j;
            if (a(avz1))
            {
                j = i + avz1.kb() + b(avz1).hashCode();
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

    public avy qV()
    {
        return this;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        qe _tmp = CREATOR;
        qe.a(this, parcel, i);
    }

    static 
    {
        avy = new HashMap();
        avy.put("coverInfo", a("coverInfo", 2, com/google/android/gms/internal/qb$b$a));
        avy.put("coverPhoto", a("coverPhoto", 3, com/google/android/gms/internal/qb$b$b));
        avy.put("layout", a("layout", 4, (new lh()).i("banner", 0), false));
    }

    public b()
    {
        DN = 1;
        avz = new HashSet();
    }

    b(Set set, int i, a a1, b b1, int j)
    {
        avz = set;
        DN = i;
        awS = a1;
        awT = b1;
        awU = j;
    }
}
