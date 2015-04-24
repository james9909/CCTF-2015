// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ll, qc, lh, qd, 
//            qe, qf, qg, qh, 
//            qi, qj, qk, ql

public final class qb extends ll
    implements Person
{
    public static final class a extends ll
        implements com.google.android.gms.plus.model.people.Person.AgeRange
    {

        public static final qd CREATOR = new qd();
        private static final HashMap avy;
        final int DN;
        final Set avz;
        int awQ;
        int awR;

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
                return Integer.valueOf(awQ);

            case 3: // '\003'
                return Integer.valueOf(awR);
            }
        }

        public int describeContents()
        {
            qd _tmp = CREATOR;
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
            return qU();
        }

        public int getMax()
        {
            return awQ;
        }

        public int getMin()
        {
            return awR;
        }

        public boolean hasMax()
        {
            return avz.contains(Integer.valueOf(2));
        }

        public boolean hasMin()
        {
            return avz.contains(Integer.valueOf(3));
        }

        public int hashCode()
        {
            Iterator iterator = avy.values().iterator();
            int j = 0;
            while (iterator.hasNext()) 
            {
                lk.a a1 = (lk.a)iterator.next();
                int k;
                if (a(a1))
                {
                    k = j + a1.kb() + b(a1).hashCode();
                } else
                {
                    k = j;
                }
                j = k;
            }
            return j;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public HashMap jU()
        {
            return avy;
        }

        public a qU()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int j)
        {
            qd _tmp = CREATOR;
            qd.a(this, parcel, j);
        }

        static 
        {
            avy = new HashMap();
            avy.put("max", lk.a.j("max", 2));
            avy.put("min", lk.a.j("min", 3));
        }

        public a()
        {
            DN = 1;
            avz = new HashSet();
        }

        a(Set set, int j, int k, int l)
        {
            avz = set;
            DN = j;
            awQ = k;
            awR = l;
        }
    }

    public static final class b extends ll
        implements com.google.android.gms.plus.model.people.Person.Cover
    {

        public static final qe CREATOR = new qe();
        private static final HashMap avy;
        final int DN;
        final Set avz;
        a awS;
        b awT;
        int awU;

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
            return qV();
        }

        public com.google.android.gms.plus.model.people.Person.Cover.CoverInfo getCoverInfo()
        {
            return awS;
        }

        public com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto getCoverPhoto()
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
            int j = 0;
            while (iterator.hasNext()) 
            {
                lk.a a1 = (lk.a)iterator.next();
                int k;
                if (a(a1))
                {
                    k = j + a1.kb() + b(a1).hashCode();
                } else
                {
                    k = j;
                }
                j = k;
            }
            return j;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public HashMap jU()
        {
            return avy;
        }

        public b qV()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int j)
        {
            qe _tmp = CREATOR;
            qe.a(this, parcel, j);
        }

        static 
        {
            avy = new HashMap();
            avy.put("coverInfo", lk.a.a("coverInfo", 2, com/google/android/gms/internal/qb$b$a));
            avy.put("coverPhoto", lk.a.a("coverPhoto", 3, com/google/android/gms/internal/qb$b$b));
            avy.put("layout", lk.a.a("layout", 4, (new lh()).i("banner", 0), false));
        }

        public b()
        {
            DN = 1;
            avz = new HashSet();
        }

        b(Set set, int j, a a1, b b1, int k)
        {
            avz = set;
            DN = j;
            awS = a1;
            awT = b1;
            awU = k;
        }
    }

    public static final class b.a extends ll
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
                if (!(obj instanceof b.a))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                b.a a1 = (b.a)obj;
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
            int j = 0;
            while (iterator.hasNext()) 
            {
                lk.a a1 = (lk.a)iterator.next();
                int k;
                if (a(a1))
                {
                    k = j + a1.kb() + b(a1).hashCode();
                } else
                {
                    k = j;
                }
                j = k;
            }
            return j;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public HashMap jU()
        {
            return avy;
        }

        public b.a qW()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int j)
        {
            qf _tmp = CREATOR;
            qf.a(this, parcel, j);
        }

        static 
        {
            avy = new HashMap();
            avy.put("leftImageOffset", lk.a.j("leftImageOffset", 2));
            avy.put("topImageOffset", lk.a.j("topImageOffset", 3));
        }

        public b.a()
        {
            DN = 1;
            avz = new HashSet();
        }

        b.a(Set set, int j, int k, int l)
        {
            avz = set;
            DN = j;
            awV = k;
            awW = l;
        }
    }

    public static final class b.b extends ll
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
                if (!(obj instanceof b.b))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                b.b b1 = (b.b)obj;
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
            int j = 0;
            while (iterator.hasNext()) 
            {
                lk.a a1 = (lk.a)iterator.next();
                int k;
                if (a(a1))
                {
                    k = j + a1.kb() + b(a1).hashCode();
                } else
                {
                    k = j;
                }
                j = k;
            }
            return j;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public HashMap jU()
        {
            return avy;
        }

        public b.b qX()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int j)
        {
            qg _tmp = CREATOR;
            qg.a(this, parcel, j);
        }

        static 
        {
            avy = new HashMap();
            avy.put("height", lk.a.j("height", 2));
            avy.put("url", lk.a.m("url", 3));
            avy.put("width", lk.a.j("width", 4));
        }

        public b.b()
        {
            DN = 1;
            avz = new HashSet();
        }

        b.b(Set set, int j, int k, String s, int l)
        {
            avz = set;
            DN = j;
            lj = k;
            wh = s;
            li = l;
        }
    }

    public static final class c extends ll
        implements com.google.android.gms.plus.model.people.Person.Image
    {

        public static final qh CREATOR = new qh();
        private static final HashMap avy;
        final int DN;
        final Set avz;
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
                return wh;
            }
        }

        public int describeContents()
        {
            qh _tmp = CREATOR;
            return 0;
        }

        public boolean equals(Object obj)
        {
label0:
            {
                if (!(obj instanceof c))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                c c1 = (c)obj;
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
                        if (c1.a(a1))
                        {
                            if (!b(a1).equals(c1.b(a1)))
                            {
                                return false;
                            }
                        } else
                        {
                            return false;
                        }
                    }

                    break label0;
                } while (!c1.a(a1));
                return false;
            }
            return true;
        }

        public Object freeze()
        {
            return qY();
        }

        public String getUrl()
        {
            return wh;
        }

        public boolean hasUrl()
        {
            return avz.contains(Integer.valueOf(2));
        }

        public int hashCode()
        {
            Iterator iterator = avy.values().iterator();
            int j = 0;
            while (iterator.hasNext()) 
            {
                lk.a a1 = (lk.a)iterator.next();
                int k;
                if (a(a1))
                {
                    k = j + a1.kb() + b(a1).hashCode();
                } else
                {
                    k = j;
                }
                j = k;
            }
            return j;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public HashMap jU()
        {
            return avy;
        }

        public c qY()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int j)
        {
            qh _tmp = CREATOR;
            qh.a(this, parcel, j);
        }

        static 
        {
            avy = new HashMap();
            avy.put("url", lk.a.m("url", 2));
        }

        public c()
        {
            DN = 1;
            avz = new HashSet();
        }

        public c(String s)
        {
            avz = new HashSet();
            DN = 1;
            wh = s;
            avz.add(Integer.valueOf(2));
        }

        c(Set set, int j, String s)
        {
            avz = set;
            DN = j;
            wh = s;
        }
    }

    public static final class d extends ll
        implements com.google.android.gms.plus.model.people.Person.Name
    {

        public static final qi CREATOR = new qi();
        private static final HashMap avy;
        final int DN;
        String avX;
        final Set avz;
        String awX;
        String awY;
        String awZ;
        String awa;
        String axa;

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
                return avX;

            case 3: // '\003'
                return awX;

            case 4: // '\004'
                return awa;

            case 5: // '\005'
                return awY;

            case 6: // '\006'
                return awZ;

            case 7: // '\007'
                return axa;
            }
        }

        public int describeContents()
        {
            qi _tmp = CREATOR;
            return 0;
        }

        public boolean equals(Object obj)
        {
label0:
            {
                if (!(obj instanceof d))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                d d1 = (d)obj;
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
                        if (d1.a(a1))
                        {
                            if (!b(a1).equals(d1.b(a1)))
                            {
                                return false;
                            }
                        } else
                        {
                            return false;
                        }
                    }

                    break label0;
                } while (!d1.a(a1));
                return false;
            }
            return true;
        }

        public Object freeze()
        {
            return qZ();
        }

        public String getFamilyName()
        {
            return avX;
        }

        public String getFormatted()
        {
            return awX;
        }

        public String getGivenName()
        {
            return awa;
        }

        public String getHonorificPrefix()
        {
            return awY;
        }

        public String getHonorificSuffix()
        {
            return awZ;
        }

        public String getMiddleName()
        {
            return axa;
        }

        public boolean hasFamilyName()
        {
            return avz.contains(Integer.valueOf(2));
        }

        public boolean hasFormatted()
        {
            return avz.contains(Integer.valueOf(3));
        }

        public boolean hasGivenName()
        {
            return avz.contains(Integer.valueOf(4));
        }

        public boolean hasHonorificPrefix()
        {
            return avz.contains(Integer.valueOf(5));
        }

        public boolean hasHonorificSuffix()
        {
            return avz.contains(Integer.valueOf(6));
        }

        public boolean hasMiddleName()
        {
            return avz.contains(Integer.valueOf(7));
        }

        public int hashCode()
        {
            Iterator iterator = avy.values().iterator();
            int j = 0;
            while (iterator.hasNext()) 
            {
                lk.a a1 = (lk.a)iterator.next();
                int k;
                if (a(a1))
                {
                    k = j + a1.kb() + b(a1).hashCode();
                } else
                {
                    k = j;
                }
                j = k;
            }
            return j;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public HashMap jU()
        {
            return avy;
        }

        public d qZ()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int j)
        {
            qi _tmp = CREATOR;
            qi.a(this, parcel, j);
        }

        static 
        {
            avy = new HashMap();
            avy.put("familyName", lk.a.m("familyName", 2));
            avy.put("formatted", lk.a.m("formatted", 3));
            avy.put("givenName", lk.a.m("givenName", 4));
            avy.put("honorificPrefix", lk.a.m("honorificPrefix", 5));
            avy.put("honorificSuffix", lk.a.m("honorificSuffix", 6));
            avy.put("middleName", lk.a.m("middleName", 7));
        }

        public d()
        {
            DN = 1;
            avz = new HashSet();
        }

        d(Set set, int j, String s, String s1, String s2, String s3, String s4, 
                String s5)
        {
            avz = set;
            DN = j;
            avX = s;
            awX = s1;
            awa = s2;
            awY = s3;
            awZ = s4;
            axa = s5;
        }
    }

    public static class e
    {

        public static int cr(String s)
        {
            if (s.equals("person"))
            {
                return 0;
            }
            if (s.equals("page"))
            {
                return 1;
            } else
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Unknown objectType string: ").append(s).toString());
            }
        }
    }

    public static final class f extends ll
        implements com.google.android.gms.plus.model.people.Person.Organizations
    {

        public static final qj CREATOR = new qj();
        private static final HashMap avy;
        final int DN;
        int Ml;
        String VX;
        String acd;
        String avW;
        final Set avz;
        String awm;
        String axb;
        String axc;
        boolean axd;
        String mName;

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
                return axb;

            case 3: // '\003'
                return acd;

            case 4: // '\004'
                return avW;

            case 5: // '\005'
                return axc;

            case 6: // '\006'
                return mName;

            case 7: // '\007'
                return Boolean.valueOf(axd);

            case 8: // '\b'
                return awm;

            case 9: // '\t'
                return VX;

            case 10: // '\n'
                return Integer.valueOf(Ml);
            }
        }

        public int describeContents()
        {
            qj _tmp = CREATOR;
            return 0;
        }

        public boolean equals(Object obj)
        {
label0:
            {
                if (!(obj instanceof f))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                f f1 = (f)obj;
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
                        if (f1.a(a1))
                        {
                            if (!b(a1).equals(f1.b(a1)))
                            {
                                return false;
                            }
                        } else
                        {
                            return false;
                        }
                    }

                    break label0;
                } while (!f1.a(a1));
                return false;
            }
            return true;
        }

        public Object freeze()
        {
            return ra();
        }

        public String getDepartment()
        {
            return axb;
        }

        public String getDescription()
        {
            return acd;
        }

        public String getEndDate()
        {
            return avW;
        }

        public String getLocation()
        {
            return axc;
        }

        public String getName()
        {
            return mName;
        }

        public String getStartDate()
        {
            return awm;
        }

        public String getTitle()
        {
            return VX;
        }

        public int getType()
        {
            return Ml;
        }

        public boolean hasDepartment()
        {
            return avz.contains(Integer.valueOf(2));
        }

        public boolean hasDescription()
        {
            return avz.contains(Integer.valueOf(3));
        }

        public boolean hasEndDate()
        {
            return avz.contains(Integer.valueOf(4));
        }

        public boolean hasLocation()
        {
            return avz.contains(Integer.valueOf(5));
        }

        public boolean hasName()
        {
            return avz.contains(Integer.valueOf(6));
        }

        public boolean hasPrimary()
        {
            return avz.contains(Integer.valueOf(7));
        }

        public boolean hasStartDate()
        {
            return avz.contains(Integer.valueOf(8));
        }

        public boolean hasTitle()
        {
            return avz.contains(Integer.valueOf(9));
        }

        public boolean hasType()
        {
            return avz.contains(Integer.valueOf(10));
        }

        public int hashCode()
        {
            Iterator iterator = avy.values().iterator();
            int j = 0;
            while (iterator.hasNext()) 
            {
                lk.a a1 = (lk.a)iterator.next();
                int k;
                if (a(a1))
                {
                    k = j + a1.kb() + b(a1).hashCode();
                } else
                {
                    k = j;
                }
                j = k;
            }
            return j;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public boolean isPrimary()
        {
            return axd;
        }

        public HashMap jU()
        {
            return avy;
        }

        public f ra()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int j)
        {
            qj _tmp = CREATOR;
            qj.a(this, parcel, j);
        }

        static 
        {
            avy = new HashMap();
            avy.put("department", lk.a.m("department", 2));
            avy.put("description", lk.a.m("description", 3));
            avy.put("endDate", lk.a.m("endDate", 4));
            avy.put("location", lk.a.m("location", 5));
            avy.put("name", lk.a.m("name", 6));
            avy.put("primary", lk.a.l("primary", 7));
            avy.put("startDate", lk.a.m("startDate", 8));
            avy.put("title", lk.a.m("title", 9));
            avy.put("type", lk.a.a("type", 10, (new lh()).i("work", 0).i("school", 1), false));
        }

        public f()
        {
            DN = 1;
            avz = new HashSet();
        }

        f(Set set, int j, String s, String s1, String s2, String s3, String s4, 
                boolean flag, String s5, String s6, int k)
        {
            avz = set;
            DN = j;
            axb = s;
            acd = s1;
            avW = s2;
            axc = s3;
            mName = s4;
            axd = flag;
            awm = s5;
            VX = s6;
            Ml = k;
        }
    }

    public static final class g extends ll
        implements com.google.android.gms.plus.model.people.Person.PlacesLived
    {

        public static final qk CREATOR = new qk();
        private static final HashMap avy;
        final int DN;
        final Set avz;
        boolean axd;
        String mValue;

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
                return Boolean.valueOf(axd);

            case 3: // '\003'
                return mValue;
            }
        }

        public int describeContents()
        {
            qk _tmp = CREATOR;
            return 0;
        }

        public boolean equals(Object obj)
        {
label0:
            {
                if (!(obj instanceof g))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                g g1 = (g)obj;
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
                        if (g1.a(a1))
                        {
                            if (!b(a1).equals(g1.b(a1)))
                            {
                                return false;
                            }
                        } else
                        {
                            return false;
                        }
                    }

                    break label0;
                } while (!g1.a(a1));
                return false;
            }
            return true;
        }

        public Object freeze()
        {
            return rb();
        }

        public String getValue()
        {
            return mValue;
        }

        public boolean hasPrimary()
        {
            return avz.contains(Integer.valueOf(2));
        }

        public boolean hasValue()
        {
            return avz.contains(Integer.valueOf(3));
        }

        public int hashCode()
        {
            Iterator iterator = avy.values().iterator();
            int j = 0;
            while (iterator.hasNext()) 
            {
                lk.a a1 = (lk.a)iterator.next();
                int k;
                if (a(a1))
                {
                    k = j + a1.kb() + b(a1).hashCode();
                } else
                {
                    k = j;
                }
                j = k;
            }
            return j;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public boolean isPrimary()
        {
            return axd;
        }

        public HashMap jU()
        {
            return avy;
        }

        public g rb()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int j)
        {
            qk _tmp = CREATOR;
            qk.a(this, parcel, j);
        }

        static 
        {
            avy = new HashMap();
            avy.put("primary", lk.a.l("primary", 2));
            avy.put("value", lk.a.m("value", 3));
        }

        public g()
        {
            DN = 1;
            avz = new HashSet();
        }

        g(Set set, int j, boolean flag, String s)
        {
            avz = set;
            DN = j;
            axd = flag;
            mValue = s;
        }
    }

    public static final class h extends ll
        implements com.google.android.gms.plus.model.people.Person.Urls
    {

        public static final ql CREATOR = new ql();
        private static final HashMap avy;
        final int DN;
        int Ml;
        String afa;
        final Set avz;
        private final int axe;
        String mValue;

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

            case 5: // '\005'
                return afa;

            case 6: // '\006'
                return Integer.valueOf(Ml);

            case 4: // '\004'
                return mValue;
            }
        }

        public int describeContents()
        {
            ql _tmp = CREATOR;
            return 0;
        }

        public boolean equals(Object obj)
        {
label0:
            {
                if (!(obj instanceof h))
                {
                    return false;
                }
                if (this == obj)
                {
                    return true;
                }
                h h1 = (h)obj;
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
                        if (h1.a(a1))
                        {
                            if (!b(a1).equals(h1.b(a1)))
                            {
                                return false;
                            }
                        } else
                        {
                            return false;
                        }
                    }

                    break label0;
                } while (!h1.a(a1));
                return false;
            }
            return true;
        }

        public Object freeze()
        {
            return rd();
        }

        public String getLabel()
        {
            return afa;
        }

        public int getType()
        {
            return Ml;
        }

        public String getValue()
        {
            return mValue;
        }

        public boolean hasLabel()
        {
            return avz.contains(Integer.valueOf(5));
        }

        public boolean hasType()
        {
            return avz.contains(Integer.valueOf(6));
        }

        public boolean hasValue()
        {
            return avz.contains(Integer.valueOf(4));
        }

        public int hashCode()
        {
            Iterator iterator = avy.values().iterator();
            int j = 0;
            while (iterator.hasNext()) 
            {
                lk.a a1 = (lk.a)iterator.next();
                int k;
                if (a(a1))
                {
                    k = j + a1.kb() + b(a1).hashCode();
                } else
                {
                    k = j;
                }
                j = k;
            }
            return j;
        }

        public boolean isDataValid()
        {
            return true;
        }

        public HashMap jU()
        {
            return avy;
        }

        public int rc()
        {
            return 4;
        }

        public h rd()
        {
            return this;
        }

        public void writeToParcel(Parcel parcel, int j)
        {
            ql _tmp = CREATOR;
            ql.a(this, parcel, j);
        }

        static 
        {
            avy = new HashMap();
            avy.put("label", lk.a.m("label", 5));
            avy.put("type", lk.a.a("type", 6, (new lh()).i("home", 0).i("work", 1).i("blog", 2).i("profile", 3).i("other", 4).i("otherProfile", 5).i("contributor", 6).i("website", 7), false));
            avy.put("value", lk.a.m("value", 4));
        }

        public h()
        {
            axe = 4;
            DN = 1;
            avz = new HashSet();
        }

        h(Set set, int j, String s, int k, String s1, int l)
        {
            axe = 4;
            avz = set;
            DN = j;
            afa = s;
            Ml = k;
            mValue = s1;
        }
    }


    public static final qc CREATOR = new qc();
    private static final HashMap avy;
    String DH;
    final int DN;
    String LK;
    String Wi;
    final Set avz;
    String awA;
    int awB;
    b awC;
    String awD;
    c awE;
    boolean awF;
    d awG;
    String awH;
    int awI;
    List awJ;
    List awK;
    int awL;
    int awM;
    String awN;
    List awO;
    boolean awP;
    String awx;
    a awy;
    String awz;
    int oG;
    String wh;

    public qb()
    {
        DN = 1;
        avz = new HashSet();
    }

    public qb(String s, String s1, c c1, int j, String s2)
    {
        DN = 1;
        avz = new HashSet();
        Wi = s;
        avz.add(Integer.valueOf(9));
        DH = s1;
        avz.add(Integer.valueOf(14));
        awE = c1;
        avz.add(Integer.valueOf(15));
        awI = j;
        avz.add(Integer.valueOf(21));
        wh = s2;
        avz.add(Integer.valueOf(27));
    }

    qb(Set set, int j, String s, a a1, String s1, String s2, int k, 
            b b1, String s3, String s4, int l, String s5, c c1, boolean flag, 
            String s6, d d1, String s7, int i1, List list, List list1, int j1, 
            int k1, String s8, String s9, List list2, boolean flag1)
    {
        avz = set;
        DN = j;
        awx = s;
        awy = a1;
        awz = s1;
        awA = s2;
        awB = k;
        awC = b1;
        awD = s3;
        Wi = s4;
        oG = l;
        DH = s5;
        awE = c1;
        awF = flag;
        LK = s6;
        awG = d1;
        awH = s7;
        awI = i1;
        awJ = list;
        awK = list1;
        awL = j1;
        awM = k1;
        awN = s8;
        wh = s9;
        awO = list2;
        awP = flag1;
    }

    public static qb i(byte abyte0[])
    {
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall(abyte0, 0, abyte0.length);
        parcel.setDataPosition(0);
        qb qb1 = CREATOR.ed(parcel);
        parcel.recycle();
        return qb1;
    }

    protected boolean a(lk.a a1)
    {
        return avz.contains(Integer.valueOf(a1.kb()));
    }

    protected Object b(lk.a a1)
    {
        switch (a1.kb())
        {
        case 10: // '\n'
        case 11: // '\013'
        case 13: // '\r'
        case 17: // '\021'
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown safe parcelable id=").append(a1.kb()).toString());

        case 2: // '\002'
            return awx;

        case 3: // '\003'
            return awy;

        case 4: // '\004'
            return awz;

        case 5: // '\005'
            return awA;

        case 6: // '\006'
            return Integer.valueOf(awB);

        case 7: // '\007'
            return awC;

        case 8: // '\b'
            return awD;

        case 9: // '\t'
            return Wi;

        case 12: // '\f'
            return Integer.valueOf(oG);

        case 14: // '\016'
            return DH;

        case 15: // '\017'
            return awE;

        case 16: // '\020'
            return Boolean.valueOf(awF);

        case 18: // '\022'
            return LK;

        case 19: // '\023'
            return awG;

        case 20: // '\024'
            return awH;

        case 21: // '\025'
            return Integer.valueOf(awI);

        case 22: // '\026'
            return awJ;

        case 23: // '\027'
            return awK;

        case 24: // '\030'
            return Integer.valueOf(awL);

        case 25: // '\031'
            return Integer.valueOf(awM);

        case 26: // '\032'
            return awN;

        case 27: // '\033'
            return wh;

        case 28: // '\034'
            return awO;

        case 29: // '\035'
            return Boolean.valueOf(awP);
        }
    }

    public int describeContents()
    {
        qc _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
label0:
        {
            if (!(obj instanceof qb))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            qb qb1 = (qb)obj;
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
                    if (qb1.a(a1))
                    {
                        if (!b(a1).equals(qb1.b(a1)))
                        {
                            return false;
                        }
                    } else
                    {
                        return false;
                    }
                }

                break label0;
            } while (!qb1.a(a1));
            return false;
        }
        return true;
    }

    public Object freeze()
    {
        return qT();
    }

    public String getAboutMe()
    {
        return awx;
    }

    public com.google.android.gms.plus.model.people.Person.AgeRange getAgeRange()
    {
        return awy;
    }

    public String getBirthday()
    {
        return awz;
    }

    public String getBraggingRights()
    {
        return awA;
    }

    public int getCircledByCount()
    {
        return awB;
    }

    public com.google.android.gms.plus.model.people.Person.Cover getCover()
    {
        return awC;
    }

    public String getCurrentLocation()
    {
        return awD;
    }

    public String getDisplayName()
    {
        return Wi;
    }

    public int getGender()
    {
        return oG;
    }

    public String getId()
    {
        return DH;
    }

    public com.google.android.gms.plus.model.people.Person.Image getImage()
    {
        return awE;
    }

    public String getLanguage()
    {
        return LK;
    }

    public com.google.android.gms.plus.model.people.Person.Name getName()
    {
        return awG;
    }

    public String getNickname()
    {
        return awH;
    }

    public int getObjectType()
    {
        return awI;
    }

    public List getOrganizations()
    {
        return (ArrayList)awJ;
    }

    public List getPlacesLived()
    {
        return (ArrayList)awK;
    }

    public int getPlusOneCount()
    {
        return awL;
    }

    public int getRelationshipStatus()
    {
        return awM;
    }

    public String getTagline()
    {
        return awN;
    }

    public String getUrl()
    {
        return wh;
    }

    public List getUrls()
    {
        return (ArrayList)awO;
    }

    public boolean hasAboutMe()
    {
        return avz.contains(Integer.valueOf(2));
    }

    public boolean hasAgeRange()
    {
        return avz.contains(Integer.valueOf(3));
    }

    public boolean hasBirthday()
    {
        return avz.contains(Integer.valueOf(4));
    }

    public boolean hasBraggingRights()
    {
        return avz.contains(Integer.valueOf(5));
    }

    public boolean hasCircledByCount()
    {
        return avz.contains(Integer.valueOf(6));
    }

    public boolean hasCover()
    {
        return avz.contains(Integer.valueOf(7));
    }

    public boolean hasCurrentLocation()
    {
        return avz.contains(Integer.valueOf(8));
    }

    public boolean hasDisplayName()
    {
        return avz.contains(Integer.valueOf(9));
    }

    public boolean hasGender()
    {
        return avz.contains(Integer.valueOf(12));
    }

    public boolean hasId()
    {
        return avz.contains(Integer.valueOf(14));
    }

    public boolean hasImage()
    {
        return avz.contains(Integer.valueOf(15));
    }

    public boolean hasIsPlusUser()
    {
        return avz.contains(Integer.valueOf(16));
    }

    public boolean hasLanguage()
    {
        return avz.contains(Integer.valueOf(18));
    }

    public boolean hasName()
    {
        return avz.contains(Integer.valueOf(19));
    }

    public boolean hasNickname()
    {
        return avz.contains(Integer.valueOf(20));
    }

    public boolean hasObjectType()
    {
        return avz.contains(Integer.valueOf(21));
    }

    public boolean hasOrganizations()
    {
        return avz.contains(Integer.valueOf(22));
    }

    public boolean hasPlacesLived()
    {
        return avz.contains(Integer.valueOf(23));
    }

    public boolean hasPlusOneCount()
    {
        return avz.contains(Integer.valueOf(24));
    }

    public boolean hasRelationshipStatus()
    {
        return avz.contains(Integer.valueOf(25));
    }

    public boolean hasTagline()
    {
        return avz.contains(Integer.valueOf(26));
    }

    public boolean hasUrl()
    {
        return avz.contains(Integer.valueOf(27));
    }

    public boolean hasUrls()
    {
        return avz.contains(Integer.valueOf(28));
    }

    public boolean hasVerified()
    {
        return avz.contains(Integer.valueOf(29));
    }

    public int hashCode()
    {
        Iterator iterator = avy.values().iterator();
        int j = 0;
        while (iterator.hasNext()) 
        {
            lk.a a1 = (lk.a)iterator.next();
            int k;
            if (a(a1))
            {
                k = j + a1.kb() + b(a1).hashCode();
            } else
            {
                k = j;
            }
            j = k;
        }
        return j;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public boolean isPlusUser()
    {
        return awF;
    }

    public boolean isVerified()
    {
        return awP;
    }

    public HashMap jU()
    {
        return avy;
    }

    public qb qT()
    {
        return this;
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        qc _tmp = CREATOR;
        qc.a(this, parcel, j);
    }

    static 
    {
        avy = new HashMap();
        avy.put("aboutMe", lk.a.m("aboutMe", 2));
        avy.put("ageRange", lk.a.a("ageRange", 3, com/google/android/gms/internal/qb$a));
        avy.put("birthday", lk.a.m("birthday", 4));
        avy.put("braggingRights", lk.a.m("braggingRights", 5));
        avy.put("circledByCount", lk.a.j("circledByCount", 6));
        avy.put("cover", lk.a.a("cover", 7, com/google/android/gms/internal/qb$b));
        avy.put("currentLocation", lk.a.m("currentLocation", 8));
        avy.put("displayName", lk.a.m("displayName", 9));
        avy.put("gender", lk.a.a("gender", 12, (new lh()).i("male", 0).i("female", 1).i("other", 2), false));
        avy.put("id", lk.a.m("id", 14));
        avy.put("image", lk.a.a("image", 15, com/google/android/gms/internal/qb$c));
        avy.put("isPlusUser", lk.a.l("isPlusUser", 16));
        avy.put("language", lk.a.m("language", 18));
        avy.put("name", lk.a.a("name", 19, com/google/android/gms/internal/qb$d));
        avy.put("nickname", lk.a.m("nickname", 20));
        avy.put("objectType", lk.a.a("objectType", 21, (new lh()).i("person", 0).i("page", 1), false));
        avy.put("organizations", lk.a.b("organizations", 22, com/google/android/gms/internal/qb$f));
        avy.put("placesLived", lk.a.b("placesLived", 23, com/google/android/gms/internal/qb$g));
        avy.put("plusOneCount", lk.a.j("plusOneCount", 24));
        avy.put("relationshipStatus", lk.a.a("relationshipStatus", 25, (new lh()).i("single", 0).i("in_a_relationship", 1).i("engaged", 2).i("married", 3).i("its_complicated", 4).i("open_relationship", 5).i("widowed", 6).i("in_domestic_partnership", 7).i("in_civil_union", 8), false));
        avy.put("tagline", lk.a.m("tagline", 26));
        avy.put("url", lk.a.m("url", 27));
        avy.put("urls", lk.a.b("urls", 28, com/google/android/gms/internal/qb$h));
        avy.put("verified", lk.a.l("verified", 29));
    }
}
