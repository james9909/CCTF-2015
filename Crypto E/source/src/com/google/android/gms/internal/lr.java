// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            lk, ls, lo, mb, 
//            lu, mc, lt

public class lr extends lk
    implements SafeParcelable
{

    public static final ls CREATOR = new ls();
    private final int DN;
    private final lo Vj;
    private final Parcel Vq;
    private final int Vr;
    private int Vs;
    private int Vt;
    private final String mClassName;

    lr(int i, Parcel parcel, lo lo1)
    {
        DN = i;
        Vq = (Parcel)s.l(parcel);
        Vr = 2;
        Vj = lo1;
        if (Vj == null)
        {
            mClassName = null;
        } else
        {
            mClassName = Vj.kk();
        }
        Vs = 2;
    }

    private lr(SafeParcelable safeparcelable, lo lo1, String s1)
    {
        DN = 1;
        Vq = Parcel.obtain();
        safeparcelable.writeToParcel(Vq, 0);
        Vr = 1;
        Vj = (lo)s.l(lo1);
        mClassName = (String)s.l(s1);
        Vs = 2;
    }

    public static lr a(lk lk1)
    {
        String s1 = lk1.getClass().getCanonicalName();
        lo lo1 = b(lk1);
        return new lr((SafeParcelable)lk1, lo1, s1);
    }

    private static void a(lo lo1, lk lk1)
    {
        Class class1 = lk1.getClass();
        if (!lo1.b(class1))
        {
            HashMap hashmap = lk1.jU();
            lo1.a(class1, lk1.jU());
            Iterator iterator = hashmap.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                lk.a a1 = (lk.a)hashmap.get((String)iterator.next());
                Class class2 = a1.kc();
                if (class2 != null)
                {
                    try
                    {
                        a(lo1, (lk)class2.newInstance());
                    }
                    catch (InstantiationException instantiationexception)
                    {
                        throw new IllegalStateException((new StringBuilder()).append("Could not instantiate an object of type ").append(a1.kc().getCanonicalName()).toString(), instantiationexception);
                    }
                    catch (IllegalAccessException illegalaccessexception)
                    {
                        throw new IllegalStateException((new StringBuilder()).append("Could not access object of type ").append(a1.kc().getCanonicalName()).toString(), illegalaccessexception);
                    }
                }
            } while (true);
        }
    }

    private void a(StringBuilder stringbuilder, int i, Object obj)
    {
        switch (i)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown type = ").append(i).toString());

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
            stringbuilder.append(obj);
            return;

        case 7: // '\007'
            stringbuilder.append("\"").append(mb.bo(obj.toString())).append("\"");
            return;

        case 8: // '\b'
            stringbuilder.append("\"").append(lu.d((byte[])(byte[])obj)).append("\"");
            return;

        case 9: // '\t'
            stringbuilder.append("\"").append(lu.e((byte[])(byte[])obj));
            stringbuilder.append("\"");
            return;

        case 10: // '\n'
            com.google.android.gms.internal.mc.a(stringbuilder, (HashMap)obj);
            return;

        case 11: // '\013'
            throw new IllegalArgumentException("Method does not accept concrete type.");
        }
    }

    private void a(StringBuilder stringbuilder, lk.a a1, Parcel parcel, int i)
    {
        switch (a1.jT())
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown field out type = ").append(a1.jT()).toString());

        case 0: // '\0'
            b(stringbuilder, a1, a(a1, Integer.valueOf(com.google.android.gms.common.internal.safeparcel.a.g(parcel, i))));
            return;

        case 1: // '\001'
            b(stringbuilder, a1, a(a1, com.google.android.gms.common.internal.safeparcel.a.k(parcel, i)));
            return;

        case 2: // '\002'
            b(stringbuilder, a1, a(a1, Long.valueOf(com.google.android.gms.common.internal.safeparcel.a.i(parcel, i))));
            return;

        case 3: // '\003'
            b(stringbuilder, a1, a(a1, Float.valueOf(com.google.android.gms.common.internal.safeparcel.a.l(parcel, i))));
            return;

        case 4: // '\004'
            b(stringbuilder, a1, a(a1, Double.valueOf(com.google.android.gms.common.internal.safeparcel.a.m(parcel, i))));
            return;

        case 5: // '\005'
            b(stringbuilder, a1, a(a1, com.google.android.gms.common.internal.safeparcel.a.o(parcel, i)));
            return;

        case 6: // '\006'
            b(stringbuilder, a1, a(a1, Boolean.valueOf(com.google.android.gms.common.internal.safeparcel.a.c(parcel, i))));
            return;

        case 7: // '\007'
            b(stringbuilder, a1, a(a1, com.google.android.gms.common.internal.safeparcel.a.p(parcel, i)));
            return;

        case 8: // '\b'
        case 9: // '\t'
            b(stringbuilder, a1, a(a1, com.google.android.gms.common.internal.safeparcel.a.s(parcel, i)));
            return;

        case 10: // '\n'
            b(stringbuilder, a1, a(a1, m(com.google.android.gms.common.internal.safeparcel.a.r(parcel, i))));
            return;

        case 11: // '\013'
            throw new IllegalArgumentException("Method does not accept concrete type.");
        }
    }

    private void a(StringBuilder stringbuilder, String s1, lk.a a1, Parcel parcel, int i)
    {
        stringbuilder.append("\"").append(s1).append("\":");
        if (a1.ke())
        {
            a(stringbuilder, a1, parcel, i);
            return;
        } else
        {
            b(stringbuilder, a1, parcel, i);
            return;
        }
    }

    private void a(StringBuilder stringbuilder, HashMap hashmap, Parcel parcel)
    {
        HashMap hashmap1 = d(hashmap);
        stringbuilder.append('{');
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        boolean flag = false;
        do
        {
            if (parcel.dataPosition() >= i)
            {
                break;
            }
            int j = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
            java.util.Map.Entry entry = (java.util.Map.Entry)hashmap1.get(Integer.valueOf(com.google.android.gms.common.internal.safeparcel.a.bO(j)));
            if (entry != null)
            {
                if (flag)
                {
                    stringbuilder.append(",");
                }
                a(stringbuilder, (String)entry.getKey(), (lk.a)entry.getValue(), parcel, j);
                flag = true;
            }
        } while (true);
        if (parcel.dataPosition() != i)
        {
            throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
        } else
        {
            stringbuilder.append('}');
            return;
        }
    }

    private static lo b(lk lk1)
    {
        lo lo1 = new lo(lk1.getClass());
        a(lo1, lk1);
        lo1.ki();
        lo1.kh();
        return lo1;
    }

    private void b(StringBuilder stringbuilder, lk.a a1, Parcel parcel, int i)
    {
        if (!a1.jZ()) goto _L2; else goto _L1
_L1:
        stringbuilder.append("[");
        a1.jT();
        JVM INSTR tableswitch 0 11: default 80
    //                   0 91
    //                   1 110
    //                   2 123
    //                   3 136
    //                   4 149
    //                   5 162
    //                   6 175
    //                   7 188
    //                   8 201
    //                   9 201
    //                   10 201
    //                   11 212;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L12 _L12 _L13
_L3:
        throw new IllegalStateException("Unknown field type out.");
_L4:
        com.google.android.gms.internal.lt.a(stringbuilder, com.google.android.gms.common.internal.safeparcel.a.v(parcel, i));
_L14:
        stringbuilder.append("]");
        return;
_L5:
        com.google.android.gms.internal.lt.a(stringbuilder, com.google.android.gms.common.internal.safeparcel.a.x(parcel, i));
        continue; /* Loop/switch isn't completed */
_L6:
        com.google.android.gms.internal.lt.a(stringbuilder, com.google.android.gms.common.internal.safeparcel.a.w(parcel, i));
        continue; /* Loop/switch isn't completed */
_L7:
        com.google.android.gms.internal.lt.a(stringbuilder, com.google.android.gms.common.internal.safeparcel.a.y(parcel, i));
        continue; /* Loop/switch isn't completed */
_L8:
        com.google.android.gms.internal.lt.a(stringbuilder, com.google.android.gms.common.internal.safeparcel.a.z(parcel, i));
        continue; /* Loop/switch isn't completed */
_L9:
        com.google.android.gms.internal.lt.a(stringbuilder, com.google.android.gms.common.internal.safeparcel.a.A(parcel, i));
        continue; /* Loop/switch isn't completed */
_L10:
        com.google.android.gms.internal.lt.a(stringbuilder, com.google.android.gms.common.internal.safeparcel.a.u(parcel, i));
        continue; /* Loop/switch isn't completed */
_L11:
        com.google.android.gms.internal.lt.a(stringbuilder, com.google.android.gms.common.internal.safeparcel.a.B(parcel, i));
        if (true) goto _L14; else goto _L12
_L12:
        throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
_L13:
        Parcel aparcel[] = com.google.android.gms.common.internal.safeparcel.a.F(parcel, i);
        int j = aparcel.length;
        int k = 0;
        while (k < j) 
        {
            if (k > 0)
            {
                stringbuilder.append(",");
            }
            aparcel[k].setDataPosition(0);
            a(stringbuilder, a1.kg(), aparcel[k]);
            k++;
        }
        if (true) goto _L14; else goto _L2
_L2:
        switch (a1.jT())
        {
        default:
            throw new IllegalStateException("Unknown field type out");

        case 0: // '\0'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.g(parcel, i));
            return;

        case 1: // '\001'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.k(parcel, i));
            return;

        case 2: // '\002'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.i(parcel, i));
            return;

        case 3: // '\003'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.l(parcel, i));
            return;

        case 4: // '\004'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.m(parcel, i));
            return;

        case 5: // '\005'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.o(parcel, i));
            return;

        case 6: // '\006'
            stringbuilder.append(com.google.android.gms.common.internal.safeparcel.a.c(parcel, i));
            return;

        case 7: // '\007'
            String s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, i);
            stringbuilder.append("\"").append(mb.bo(s2)).append("\"");
            return;

        case 8: // '\b'
            byte abyte1[] = com.google.android.gms.common.internal.safeparcel.a.s(parcel, i);
            stringbuilder.append("\"").append(lu.d(abyte1)).append("\"");
            return;

        case 9: // '\t'
            byte abyte0[] = com.google.android.gms.common.internal.safeparcel.a.s(parcel, i);
            stringbuilder.append("\"").append(lu.e(abyte0));
            stringbuilder.append("\"");
            return;

        case 10: // '\n'
            Bundle bundle = com.google.android.gms.common.internal.safeparcel.a.r(parcel, i);
            Set set = bundle.keySet();
            set.size();
            stringbuilder.append("{");
            Iterator iterator = set.iterator();
            for (boolean flag = true; iterator.hasNext(); flag = false)
            {
                String s1 = (String)iterator.next();
                if (!flag)
                {
                    stringbuilder.append(",");
                }
                stringbuilder.append("\"").append(s1).append("\"");
                stringbuilder.append(":");
                stringbuilder.append("\"").append(mb.bo(bundle.getString(s1))).append("\"");
            }

            stringbuilder.append("}");
            return;

        case 11: // '\013'
            Parcel parcel1 = com.google.android.gms.common.internal.safeparcel.a.E(parcel, i);
            parcel1.setDataPosition(0);
            a(stringbuilder, a1.kg(), parcel1);
            return;
        }
    }

    private void b(StringBuilder stringbuilder, lk.a a1, Object obj)
    {
        if (a1.jY())
        {
            b(stringbuilder, a1, (ArrayList)obj);
            return;
        } else
        {
            a(stringbuilder, a1.jS(), obj);
            return;
        }
    }

    private void b(StringBuilder stringbuilder, lk.a a1, ArrayList arraylist)
    {
        stringbuilder.append("[");
        int i = arraylist.size();
        for (int j = 0; j < i; j++)
        {
            if (j != 0)
            {
                stringbuilder.append(",");
            }
            a(stringbuilder, a1.jS(), arraylist.get(j));
        }

        stringbuilder.append("]");
    }

    private static HashMap d(HashMap hashmap)
    {
        HashMap hashmap1 = new HashMap();
        java.util.Map.Entry entry;
        for (Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); hashmap1.put(Integer.valueOf(((lk.a)entry.getValue()).kb()), entry))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return hashmap1;
    }

    public static HashMap m(Bundle bundle)
    {
        HashMap hashmap = new HashMap();
        String s1;
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext(); hashmap.put(s1, bundle.getString(s1)))
        {
            s1 = (String)iterator.next();
        }

        return hashmap;
    }

    protected Object bj(String s1)
    {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    protected boolean bk(String s1)
    {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public int describeContents()
    {
        ls _tmp = CREATOR;
        return 0;
    }

    public int getVersionCode()
    {
        return DN;
    }

    public HashMap jU()
    {
        if (Vj == null)
        {
            return null;
        } else
        {
            return Vj.bn(mClassName);
        }
    }

    public Parcel km()
    {
        Vs;
        JVM INSTR tableswitch 0 1: default 28
    //                   0 33
    //                   1 63;
           goto _L1 _L2 _L3
_L1:
        return Vq;
_L2:
        Vt = com.google.android.gms.common.internal.safeparcel.b.am(Vq);
        com.google.android.gms.common.internal.safeparcel.b.I(Vq, Vt);
        Vs = 2;
        continue; /* Loop/switch isn't completed */
_L3:
        com.google.android.gms.common.internal.safeparcel.b.I(Vq, Vt);
        Vs = 2;
        if (true) goto _L1; else goto _L4
_L4:
    }

    lo kn()
    {
        switch (Vr)
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Invalid creation type: ").append(Vr).toString());

        case 0: // '\0'
            return null;

        case 1: // '\001'
            return Vj;

        case 2: // '\002'
            return Vj;
        }
    }

    public String toString()
    {
        s.b(Vj, "Cannot convert to JSON on client side.");
        Parcel parcel = km();
        parcel.setDataPosition(0);
        StringBuilder stringbuilder = new StringBuilder(100);
        a(stringbuilder, Vj.bn(mClassName), parcel);
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ls _tmp = CREATOR;
        com.google.android.gms.internal.ls.a(this, parcel, i);
    }

}
