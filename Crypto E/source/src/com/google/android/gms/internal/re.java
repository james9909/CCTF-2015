// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            rf

public final class re
{
    public static class a
    {

        public final rf aFx;
        public final List aFy;

        public a(rf rf1, List list)
        {
            aFx = rf1;
            aFy = list;
        }
    }


    private static int a(String s, rf.a.a aa[])
    {
        int i;
        int j;
        int k;
        i = aa.length;
        j = 0;
        k = 14;
_L5:
        rf.a.a a1;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_178;
        }
        a1 = aa[j];
        if (k != 14) goto _L2; else goto _L1
_L1:
        if (a1.type != 9 && a1.type != 2 && a1.type != 6) goto _L4; else goto _L3
_L3:
        k = a1.type;
_L7:
        j++;
          goto _L5
_L4:
        if (a1.type == 14) goto _L7; else goto _L6
_L6:
        throw new IllegalArgumentException((new StringBuilder()).append("Unexpected TypedValue type: ").append(a1.type).append(" for key ").append(s).toString());
_L2:
        if (a1.type == k) goto _L7; else goto _L8
_L8:
        throw new IllegalArgumentException((new StringBuilder()).append("The ArrayList elements should all be the same type, but ArrayList with key ").append(s).append(" contains items of type ").append(k).append(" and ").append(a1.type).toString());
        return k;
    }

    static int a(List list, Asset asset)
    {
        list.add(asset);
        return -1 + list.size();
    }

    public static a a(DataMap datamap)
    {
        rf rf1 = new rf();
        ArrayList arraylist = new ArrayList();
        rf1.aFz = a(datamap, ((List) (arraylist)));
        return new a(rf1, arraylist);
    }

    private static rf.a.a a(List list, Object obj)
    {
        rf.a.a a1;
        a1 = new rf.a.a();
        if (obj == null)
        {
            a1.type = 14;
            return a1;
        }
        a1.aFD = new rf.a.a.a();
        if (obj instanceof String)
        {
            a1.type = 2;
            a1.aFD.aFF = (String)obj;
        } else
        if (obj instanceof Integer)
        {
            a1.type = 6;
            a1.aFD.aFJ = ((Integer)obj).intValue();
        } else
        if (obj instanceof Long)
        {
            a1.type = 5;
            a1.aFD.aFI = ((Long)obj).longValue();
        } else
        if (obj instanceof Double)
        {
            a1.type = 3;
            a1.aFD.aFG = ((Double)obj).doubleValue();
        } else
        if (obj instanceof Float)
        {
            a1.type = 4;
            a1.aFD.aFH = ((Float)obj).floatValue();
        } else
        if (obj instanceof Boolean)
        {
            a1.type = 8;
            a1.aFD.aFL = ((Boolean)obj).booleanValue();
        } else
        if (obj instanceof Byte)
        {
            a1.type = 7;
            a1.aFD.aFK = ((Byte)obj).byteValue();
        } else
        if (obj instanceof byte[])
        {
            a1.type = 1;
            a1.aFD.aFE = (byte[])(byte[])obj;
        } else
        if (obj instanceof String[])
        {
            a1.type = 11;
            a1.aFD.aFO = (String[])(String[])obj;
        } else
        if (obj instanceof long[])
        {
            a1.type = 12;
            a1.aFD.aFP = (long[])(long[])obj;
        } else
        if (obj instanceof float[])
        {
            a1.type = 15;
            a1.aFD.aFQ = (float[])(float[])obj;
        } else
        if (obj instanceof Asset)
        {
            a1.type = 13;
            a1.aFD.aFR = a(list, (Asset)obj);
        } else
        {
label0:
            {
                if (!(obj instanceof DataMap))
                {
                    break label0;
                }
                a1.type = 9;
                DataMap datamap = (DataMap)obj;
                Set set = datamap.keySet();
                rf.a aa1[] = new rf.a[set.size()];
                Iterator iterator = set.iterator();
                for (int i1 = 0; iterator.hasNext(); i1++)
                {
                    String s = (String)iterator.next();
                    aa1[i1] = new rf.a();
                    aa1[i1].name = s;
                    aa1[i1].aFB = a(list, datamap.get(s));
                }

                a1.aFD.aFM = aa1;
            }
        }
_L8:
        return a1;
        if (!(obj instanceof ArrayList)) goto _L2; else goto _L1
_L1:
        ArrayList arraylist;
        rf.a.a aa[];
        Object obj1;
        int i;
        int j;
        int k;
        a1.type = 10;
        arraylist = (ArrayList)obj;
        aa = new rf.a.a[arraylist.size()];
        obj1 = null;
        i = arraylist.size();
        j = 0;
        k = 14;
_L7:
        if (j >= i) goto _L4; else goto _L3
_L3:
        Object obj2;
        rf.a.a a2;
        obj2 = arraylist.get(j);
        a2 = a(list, obj2);
        if (a2.type != 14 && a2.type != 2 && a2.type != 6 && a2.type != 9)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a ").append(obj2.getClass()).toString());
        }
        if (k != 14 || a2.type == 14) goto _L6; else goto _L5
_L5:
        int l = a2.type;
_L9:
        aa[j] = a2;
        j++;
        k = l;
        obj1 = obj2;
          goto _L7
_L6:
        if (a2.type != k)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("ArrayList elements must all be of the sameclass, but this one contains a ").append(obj1.getClass()).append(" and a ").append(obj2.getClass()).toString());
        }
        break MISSING_BLOCK_LABEL_795;
_L4:
        a1.aFD.aFN = aa;
          goto _L8
_L2:
        throw new RuntimeException((new StringBuilder()).append("newFieldValueFromValue: unexpected value ").append(obj.getClass().getSimpleName()).toString());
        obj2 = obj1;
        l = k;
          goto _L9
    }

    public static DataMap a(a a1)
    {
        DataMap datamap = new DataMap();
        rf.a aa[] = a1.aFx.aFz;
        int i = aa.length;
        for (int j = 0; j < i; j++)
        {
            rf.a a2 = aa[j];
            a(a1.aFy, datamap, a2.name, a2.aFB);
        }

        return datamap;
    }

    private static ArrayList a(List list, rf.a.a.a a1, int i)
    {
        ArrayList arraylist = new ArrayList(a1.aFN.length);
        rf.a.a aa[] = a1.aFN;
        int j = aa.length;
        int k = 0;
        while (k < j) 
        {
            rf.a.a a2 = aa[k];
            if (a2.type == 14)
            {
                arraylist.add(null);
            } else
            if (i == 9)
            {
                DataMap datamap = new DataMap();
                rf.a aa1[] = a2.aFD.aFM;
                int l = aa1.length;
                for (int i1 = 0; i1 < l; i1++)
                {
                    rf.a a3 = aa1[i1];
                    a(list, datamap, a3.name, a3.aFB);
                }

                arraylist.add(datamap);
            } else
            if (i == 2)
            {
                arraylist.add(a2.aFD.aFF);
            } else
            if (i == 6)
            {
                arraylist.add(Integer.valueOf(a2.aFD.aFJ));
            } else
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Unexpected typeOfArrayList: ").append(i).toString());
            }
            k++;
        }
        return arraylist;
    }

    private static void a(List list, DataMap datamap, String s, rf.a.a a1)
    {
        int i = a1.type;
        if (i == 14)
        {
            datamap.putString(s, null);
            return;
        }
        rf.a.a.a a2 = a1.aFD;
        if (i == 1)
        {
            datamap.putByteArray(s, a2.aFE);
            return;
        }
        if (i == 11)
        {
            datamap.putStringArray(s, a2.aFO);
            return;
        }
        if (i == 12)
        {
            datamap.putLongArray(s, a2.aFP);
            return;
        }
        if (i == 15)
        {
            datamap.putFloatArray(s, a2.aFQ);
            return;
        }
        if (i == 2)
        {
            datamap.putString(s, a2.aFF);
            return;
        }
        if (i == 3)
        {
            datamap.putDouble(s, a2.aFG);
            return;
        }
        if (i == 4)
        {
            datamap.putFloat(s, a2.aFH);
            return;
        }
        if (i == 5)
        {
            datamap.putLong(s, a2.aFI);
            return;
        }
        if (i == 6)
        {
            datamap.putInt(s, a2.aFJ);
            return;
        }
        if (i == 7)
        {
            datamap.putByte(s, (byte)a2.aFK);
            return;
        }
        if (i == 8)
        {
            datamap.putBoolean(s, a2.aFL);
            return;
        }
        if (i == 13)
        {
            if (list == null)
            {
                throw new RuntimeException((new StringBuilder()).append("populateBundle: unexpected type for: ").append(s).toString());
            } else
            {
                datamap.putAsset(s, (Asset)list.get((int)a2.aFR));
                return;
            }
        }
        if (i == 9)
        {
            DataMap datamap1 = new DataMap();
            rf.a aa[] = a2.aFM;
            int j = aa.length;
            for (int k = 0; k < j; k++)
            {
                rf.a a3 = aa[k];
                a(list, datamap1, a3.name, a3.aFB);
            }

            datamap.putDataMap(s, datamap1);
            return;
        }
        if (i == 10)
        {
            int l = a(s, a2.aFN);
            ArrayList arraylist = a(list, a2, l);
            if (l == 14)
            {
                datamap.putStringArrayList(s, arraylist);
                return;
            }
            if (l == 9)
            {
                datamap.putDataMapArrayList(s, arraylist);
                return;
            }
            if (l == 2)
            {
                datamap.putStringArrayList(s, arraylist);
                return;
            }
            if (l == 6)
            {
                datamap.putIntegerArrayList(s, arraylist);
                return;
            } else
            {
                throw new IllegalStateException((new StringBuilder()).append("Unexpected typeOfArrayList: ").append(l).toString());
            }
        } else
        {
            throw new RuntimeException((new StringBuilder()).append("populateBundle: unexpected type ").append(i).toString());
        }
    }

    private static rf.a[] a(DataMap datamap, List list)
    {
        Set set = datamap.keySet();
        rf.a aa[] = new rf.a[set.size()];
        Iterator iterator = set.iterator();
        for (int i = 0; iterator.hasNext(); i++)
        {
            String s = (String)iterator.next();
            Object obj = datamap.get(s);
            aa[i] = new rf.a();
            aa[i].name = s;
            aa[i].aFB = a(list, obj);
        }

        return aa;
    }
}
