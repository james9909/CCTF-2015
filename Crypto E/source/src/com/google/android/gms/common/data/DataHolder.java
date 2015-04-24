// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.common.data:
//            f

public final class DataHolder
    implements SafeParcelable
{
    public static class a
    {

        private final ArrayList SC;
        private final String SD;
        private final HashMap SE;
        private boolean SF;
        private String SG;
        private final String St[];

        static String[] a(a a1)
        {
            return a1.St;
        }

        private int b(HashMap hashmap)
        {
            if (SD == null)
            {
                return -1;
            }
            Object obj = hashmap.get(SD);
            if (obj == null)
            {
                return -1;
            }
            Integer integer = (Integer)SE.get(obj);
            if (integer == null)
            {
                SE.put(obj, Integer.valueOf(SC.size()));
                return -1;
            } else
            {
                return integer.intValue();
            }
        }

        static ArrayList b(a a1)
        {
            return a1.SC;
        }

        public a a(ContentValues contentvalues)
        {
            com.google.android.gms.common.internal.b.i(contentvalues);
            HashMap hashmap = new HashMap(contentvalues.size());
            java.util.Map.Entry entry;
            for (Iterator iterator = contentvalues.valueSet().iterator(); iterator.hasNext(); hashmap.put(entry.getKey(), entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            return a(hashmap);
        }

        public a a(HashMap hashmap)
        {
            com.google.android.gms.common.internal.b.i(hashmap);
            int i = b(hashmap);
            if (i == -1)
            {
                SC.add(hashmap);
            } else
            {
                SC.remove(i);
                SC.add(i, hashmap);
            }
            SF = false;
            return this;
        }

        public DataHolder bD(int i)
        {
            return new DataHolder(this, i, null);
        }

        private a(String as[], String s1)
        {
            St = (String[])s.l(as);
            SC = new ArrayList();
            SD = s1;
            SE = new HashMap();
            SF = false;
            SG = null;
        }

    }


    public static final f CREATOR = new f();
    private static final a SB = new a(new String[0], null) {

        public a a(ContentValues contentvalues)
        {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }

        public a a(HashMap hashmap)
        {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }

    };
    private final int DN;
    private final int Pu;
    private boolean SA;
    private final String St[];
    Bundle Su;
    private final CursorWindow Sv[];
    private final Bundle Sw;
    int Sx[];
    int Sy;
    private Object Sz;
    boolean mClosed;

    DataHolder(int i, String as[], CursorWindow acursorwindow[], int j, Bundle bundle)
    {
        mClosed = false;
        SA = true;
        DN = i;
        St = as;
        Sv = acursorwindow;
        Pu = j;
        Sw = bundle;
    }

    private DataHolder(a a1, int i, Bundle bundle)
    {
        this(a.a(a1), a(a1, -1), i, bundle);
    }


    public DataHolder(String as[], CursorWindow acursorwindow[], int i, Bundle bundle)
    {
        mClosed = false;
        SA = true;
        DN = 1;
        St = (String[])s.l(as);
        Sv = (CursorWindow[])s.l(acursorwindow);
        Pu = i;
        Sw = bundle;
        jn();
    }

    public static DataHolder a(int i, Bundle bundle)
    {
        return new DataHolder(SB, i, bundle);
    }

    private static CursorWindow[] a(a a1, int i)
    {
        int j;
        Object obj;
        CursorWindow cursorwindow;
        ArrayList arraylist;
        int l;
        boolean flag;
        j = 0;
        if (a.a(a1).length == 0)
        {
            return new CursorWindow[0];
        }
        int k;
        CursorWindow acursorwindow[];
        if (i < 0 || i >= com.google.android.gms.common.data.a.b(a1).size())
        {
            obj = com.google.android.gms.common.data.a.b(a1);
        } else
        {
            obj = com.google.android.gms.common.data.a.b(a1).subList(0, i);
        }
        k = ((List) (obj)).size();
        cursorwindow = new CursorWindow(false);
        arraylist = new ArrayList();
        arraylist.add(cursorwindow);
        cursorwindow.setNumColumns(a.a(a1).length);
        l = 0;
        flag = false;
_L3:
        if (l >= k) goto _L2; else goto _L1
_L1:
        if (cursorwindow.allocRow())
        {
            break MISSING_BLOCK_LABEL_732;
        }
        Log.d("DataHolder", (new StringBuilder()).append("Allocating additional cursor window for large data set (row ").append(l).append(")").toString());
        cursorwindow = new CursorWindow(false);
        cursorwindow.setStartPosition(l);
        cursorwindow.setNumColumns(a.a(a1).length);
        arraylist.add(cursorwindow);
        if (cursorwindow.allocRow())
        {
            break MISSING_BLOCK_LABEL_227;
        }
        Log.e("DataHolder", "Unable to allocate row to hold data.");
        arraylist.remove(cursorwindow);
        acursorwindow = (CursorWindow[])arraylist.toArray(new CursorWindow[arraylist.size()]);
        return acursorwindow;
        int j1 = 0;
_L5:
        Map map = (Map)((List) (obj)).get(l);
        boolean flag1;
        flag1 = true;
        RuntimeException runtimeexception;
        int i1;
        String s1;
        Object obj1;
        long l1;
        int i2;
        int j2;
        CursorWindow cursorwindow1;
        int k2;
        CursorWindow cursorwindow2;
        for (int k1 = 0; k1 >= a.a(a1).length || !flag1; k1++)
        {
            break MISSING_BLOCK_LABEL_591;
        }

        s1 = a.a(a1)[k1];
        obj1 = map.get(s1);
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_303;
        }
        flag1 = cursorwindow.putNull(j1, k1);
        break MISSING_BLOCK_LABEL_739;
        if (obj1 instanceof String)
        {
            flag1 = cursorwindow.putString((String)obj1, j1, k1);
            break MISSING_BLOCK_LABEL_739;
        }
        if (obj1 instanceof Long)
        {
            flag1 = cursorwindow.putLong(((Long)obj1).longValue(), j1, k1);
            break MISSING_BLOCK_LABEL_739;
        }
        if (obj1 instanceof Integer)
        {
            flag1 = cursorwindow.putLong(((Integer)obj1).intValue(), j1, k1);
            break MISSING_BLOCK_LABEL_739;
        }
        if (!(obj1 instanceof Boolean))
        {
            break MISSING_BLOCK_LABEL_429;
        }
        if (((Boolean)obj1).booleanValue())
        {
            l1 = 1L;
        } else
        {
            l1 = 0L;
        }
        flag1 = cursorwindow.putLong(l1, j1, k1);
        break MISSING_BLOCK_LABEL_739;
        if (obj1 instanceof byte[])
        {
            flag1 = cursorwindow.putBlob((byte[])(byte[])obj1, j1, k1);
            break MISSING_BLOCK_LABEL_739;
        }
        if (obj1 instanceof Double)
        {
            flag1 = cursorwindow.putDouble(((Double)obj1).doubleValue(), j1, k1);
            break MISSING_BLOCK_LABEL_739;
        }
        if (obj1 instanceof Float)
        {
            flag1 = cursorwindow.putDouble(((Float)obj1).floatValue(), j1, k1);
            break MISSING_BLOCK_LABEL_739;
        }
        throw new IllegalArgumentException((new StringBuilder()).append("Unsupported object for column ").append(s1).append(": ").append(obj1).toString());
        runtimeexception;
        for (i1 = arraylist.size(); j < i1; j++)
        {
            ((CursorWindow)arraylist.get(j)).close();
        }

        break MISSING_BLOCK_LABEL_712;
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_695;
        }
        Log.d("DataHolder", (new StringBuilder()).append("Couldn't populate window data for row ").append(l).append(" - allocating new window.").toString());
        cursorwindow.freeLastRow();
        cursorwindow2 = new CursorWindow(false);
        cursorwindow2.setNumColumns(a.a(a1).length);
        arraylist.add(cursorwindow2);
        j2 = l - 1;
        cursorwindow1 = cursorwindow2;
        i2 = 0;
_L4:
        k2 = j2 + 1;
        cursorwindow = cursorwindow1;
        l = k2;
        flag = i2;
          goto _L3
        i2 = j1 + 1;
        j2 = l;
        cursorwindow1 = cursorwindow;
          goto _L4
        throw runtimeexception;
          goto _L3
_L2:
        return (CursorWindow[])arraylist.toArray(new CursorWindow[arraylist.size()]);
        j1 = ((flag) ? 1 : 0);
          goto _L5
    }

    public static DataHolder bC(int i)
    {
        return a(i, ((Bundle) (null)));
    }

    public static a d(String as[])
    {
        return new a(as, null);
    }

    private void h(String s1, int i)
    {
        if (Su == null || !Su.containsKey(s1))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No such column: ").append(s1).toString());
        }
        if (isClosed())
        {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i < 0 || i >= Sy)
        {
            throw new CursorIndexOutOfBoundsException(i, Sy);
        } else
        {
            return;
        }
    }

    public long a(String s1, int i, int j)
    {
        h(s1, i);
        return Sv[j].getLong(i, Su.getInt(s1));
    }

    public void a(String s1, int i, int j, CharArrayBuffer chararraybuffer)
    {
        h(s1, i);
        Sv[j].copyStringToBuffer(i, Su.getInt(s1), chararraybuffer);
    }

    public boolean aX(String s1)
    {
        return Su.containsKey(s1);
    }

    public int b(String s1, int i, int j)
    {
        h(s1, i);
        return Sv[j].getInt(i, Su.getInt(s1));
    }

    public int bB(int i)
    {
        int j = 0;
        boolean flag;
        if (i >= 0 && i < Sy)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.N(flag);
        do
        {
label0:
            {
                if (j < Sx.length)
                {
                    if (i >= Sx[j])
                    {
                        break label0;
                    }
                    j--;
                }
                if (j == Sx.length)
                {
                    j--;
                }
                return j;
            }
            j++;
        } while (true);
    }

    public String c(String s1, int i, int j)
    {
        h(s1, i);
        return Sv[j].getString(i, Su.getInt(s1));
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        if (mClosed) goto _L2; else goto _L1
_L1:
        mClosed = true;
        int i = 0;
_L3:
        if (i >= Sv.length)
        {
            break; /* Loop/switch isn't completed */
        }
        Sv[i].close();
        i++;
        if (true) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean d(String s1, int i, int j)
    {
        h(s1, i);
        return Long.valueOf(Sv[j].getLong(i, Su.getInt(s1))).longValue() == 1L;
    }

    public int describeContents()
    {
        return 0;
    }

    public float e(String s1, int i, int j)
    {
        h(s1, i);
        return Sv[j].getFloat(i, Su.getInt(s1));
    }

    public byte[] f(String s1, int i, int j)
    {
        h(s1, i);
        return Sv[j].getBlob(i, Su.getInt(s1));
    }

    protected void finalize()
    {
        if (!SA || Sv.length <= 0 || isClosed()) goto _L2; else goto _L1
_L1:
        if (Sz != null) goto _L4; else goto _L3
_L3:
        String s2 = (new StringBuilder()).append("internal object: ").append(toString()).toString();
_L5:
        Log.e("DataBuffer", (new StringBuilder()).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (").append(s2).append(")").toString());
        close();
_L2:
        super.finalize();
        return;
_L4:
        String s1 = Sz.toString();
        s2 = s1;
          goto _L5
        Exception exception;
        exception;
        super.finalize();
        throw exception;
    }

    public Uri g(String s1, int i, int j)
    {
        String s2 = c(s1, i, j);
        if (s2 == null)
        {
            return null;
        } else
        {
            return Uri.parse(s2);
        }
    }

    public int getCount()
    {
        return Sy;
    }

    public int getStatusCode()
    {
        return Pu;
    }

    int getVersionCode()
    {
        return DN;
    }

    public void h(Object obj)
    {
        Sz = obj;
    }

    public boolean h(String s1, int i, int j)
    {
        h(s1, i);
        return Sv[j].isNull(i, Su.getInt(s1));
    }

    public boolean isClosed()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mClosed;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Bundle jk()
    {
        return Sw;
    }

    public void jn()
    {
        int i = 0;
        Su = new Bundle();
        for (int j = 0; j < St.length; j++)
        {
            Su.putInt(St[j], j);
        }

        Sx = new int[Sv.length];
        int k = 0;
        for (; i < Sv.length; i++)
        {
            Sx[i] = k;
            int l = k - Sv[i].getStartPosition();
            k += Sv[i].getNumRows() - l;
        }

        Sy = k;
    }

    String[] jo()
    {
        return St;
    }

    CursorWindow[] jp()
    {
        return Sv;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.common.data.f.a(this, parcel, i);
    }

}
