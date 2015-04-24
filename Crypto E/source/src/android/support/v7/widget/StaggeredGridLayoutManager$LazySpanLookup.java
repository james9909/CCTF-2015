// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            StaggeredGridLayoutManager

static class FullSpanItem.c
{
    static class FullSpanItem
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public FullSpanItem a(Parcel parcel)
            {
                return new FullSpanItem(parcel);
            }

            public FullSpanItem[] a(int i)
            {
                return new FullSpanItem[i];
            }

            public Object createFromParcel(Parcel parcel)
            {
                return a(parcel);
            }

            public Object[] newArray(int i)
            {
                return a(i);
            }

        };
        int a;
        int b;
        int c[];

        int a(int i)
        {
            if (c == null)
            {
                return 0;
            } else
            {
                return c[i];
            }
        }

        public int describeContents()
        {
            return 0;
        }

        public String toString()
        {
            return (new StringBuilder()).append("FullSpanItem{mPosition=").append(a).append(", mGapDir=").append(b).append(", mGapPerSpan=").append(Arrays.toString(c)).append('}').toString();
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeInt(a);
            parcel.writeInt(b);
            if (c != null && c.length > 0)
            {
                parcel.writeInt(c.length);
                parcel.writeIntArray(c);
                return;
            } else
            {
                parcel.writeInt(0);
                return;
            }
        }


        public FullSpanItem()
        {
        }

        public FullSpanItem(Parcel parcel)
        {
            a = parcel.readInt();
            b = parcel.readInt();
            int i = parcel.readInt();
            if (i > 0)
            {
                c = new int[i];
                parcel.readIntArray(c);
            }
        }
    }


    int a[];
    List b;

    private void c(int i, int j)
    {
        if (b != null)
        {
            int k = i + j;
            int l = -1 + b.size();
            while (l >= 0) 
            {
                FullSpanItem fullspanitem = (FullSpanItem)b.get(l);
                if (fullspanitem.a >= i)
                {
                    if (fullspanitem.a < k)
                    {
                        b.remove(l);
                    } else
                    {
                        fullspanitem.a = fullspanitem.a - j;
                    }
                }
                l--;
            }
        }
    }

    private void d(int i, int j)
    {
        if (b != null)
        {
            int k = -1 + b.size();
            while (k >= 0) 
            {
                FullSpanItem fullspanitem = (FullSpanItem)b.get(k);
                if (fullspanitem.a >= i)
                {
                    fullspanitem.a = j + fullspanitem.a;
                }
                k--;
            }
        }
    }

    private int g(int i)
    {
        int j;
        int k;
        if (b == null)
        {
            return -1;
        }
        FullSpanItem fullspanitem = f(i);
        if (fullspanitem != null)
        {
            b.remove(fullspanitem);
        }
        j = b.size();
        k = 0;
_L3:
        if (k >= j)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        if (((FullSpanItem)b.get(k)).a < i) goto _L2; else goto _L1
_L1:
        if (k != -1)
        {
            FullSpanItem fullspanitem1 = (FullSpanItem)b.get(k);
            b.remove(k);
            return fullspanitem1.a;
        } else
        {
            return -1;
        }
_L2:
        k++;
          goto _L3
        k = -1;
          goto _L1
    }

    int a(int i)
    {
        if (b != null)
        {
            for (int j = -1 + b.size(); j >= 0; j--)
            {
                if (((FullSpanItem)b.get(j)).a >= i)
                {
                    b.remove(j);
                }
            }

        }
        return b(i);
    }

    public FullSpanItem a(int i, int j, int k)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        FullSpanItem fullspanitem = null;
_L4:
        return fullspanitem;
_L2:
        int l = 0;
label0:
        do
        {
label1:
            {
                if (l >= b.size())
                {
                    break label1;
                }
                fullspanitem = (FullSpanItem)b.get(l);
                if (fullspanitem.a >= j)
                {
                    return null;
                }
                if (fullspanitem.a >= i && (k == 0 || fullspanitem.b == k))
                {
                    break label0;
                }
                l++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return null;
    }

    void a()
    {
        if (a != null)
        {
            Arrays.fill(a, -1);
        }
        b = null;
    }

    void a(int i, int j)
    {
        if (a == null || i >= a.length)
        {
            return;
        } else
        {
            e(i + j);
            System.arraycopy(a, i + j, a, i, a.length - i - j);
            Arrays.fill(a, a.length - j, a.length, -1);
            c(i, j);
            return;
        }
    }

    void a(int i, c c1)
    {
        e(i);
        a[i] = c1.a;
    }

    public void a(FullSpanItem fullspanitem)
    {
        if (b == null)
        {
            b = new ArrayList();
        }
        int i = b.size();
        for (int j = 0; j < i; j++)
        {
            FullSpanItem fullspanitem1 = (FullSpanItem)b.get(j);
            if (fullspanitem1.a == fullspanitem.a)
            {
                b.remove(j);
            }
            if (fullspanitem1.a >= fullspanitem.a)
            {
                b.add(j, fullspanitem);
                return;
            }
        }

        b.add(fullspanitem);
    }

    int b(int i)
    {
        while (a == null || i >= a.length) 
        {
            return -1;
        }
        int j = g(i);
        if (j == -1)
        {
            Arrays.fill(a, i, a.length, -1);
            return a.length;
        } else
        {
            Arrays.fill(a, i, j + 1, -1);
            return j + 1;
        }
    }

    void b(int i, int j)
    {
        if (a == null || i >= a.length)
        {
            return;
        } else
        {
            e(i + j);
            System.arraycopy(a, i, a, i + j, a.length - i - j);
            Arrays.fill(a, i, i + j, -1);
            d(i, j);
            return;
        }
    }

    int c(int i)
    {
        if (a == null || i >= a.length)
        {
            return -1;
        } else
        {
            return a[i];
        }
    }

    int d(int i)
    {
        int j;
        for (j = a.length; j <= i; j *= 2) { }
        return j;
    }

    void e(int i)
    {
        if (a == null)
        {
            a = new int[1 + Math.max(i, 10)];
            Arrays.fill(a, -1);
        } else
        if (i >= a.length)
        {
            int ai[] = a;
            a = new int[d(i)];
            System.arraycopy(ai, 0, a, 0, ai.length);
            Arrays.fill(a, ai.length, a.length, -1);
            return;
        }
    }

    public FullSpanItem f(int i)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        FullSpanItem fullspanitem = null;
_L4:
        return fullspanitem;
_L2:
        int j = -1 + b.size();
label0:
        do
        {
label1:
            {
                if (j < 0)
                {
                    break label1;
                }
                fullspanitem = (FullSpanItem)b.get(j);
                if (fullspanitem.a == i)
                {
                    break label0;
                }
                j--;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return null;
    }

    FullSpanItem.c()
    {
    }
}
