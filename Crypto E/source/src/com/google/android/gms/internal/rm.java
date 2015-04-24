// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rn

class rm
{

    private static final rn aGr = new rn();
    private boolean aGs;
    private int aGt[];
    private rn aGu[];
    private int mSize;

    public rm()
    {
        this(10);
    }

    public rm(int i)
    {
        aGs = false;
        int j = idealIntArraySize(i);
        aGt = new int[j];
        aGu = new rn[j];
        mSize = 0;
    }

    private boolean a(int ai[], int ai1[], int i)
    {
        for (int j = 0; j < i; j++)
        {
            if (ai[j] != ai1[j])
            {
                return false;
            }
        }

        return true;
    }

    private boolean a(rn arn[], rn arn1[], int i)
    {
        for (int j = 0; j < i; j++)
        {
            if (!arn[j].equals(arn1[j]))
            {
                return false;
            }
        }

        return true;
    }

    private void gc()
    {
        int i = mSize;
        int ai[] = aGt;
        rn arn[] = aGu;
        int j = 0;
        int k = 0;
        for (; j < i; j++)
        {
            rn rn1 = arn[j];
            if (rn1 == aGr)
            {
                continue;
            }
            if (j != k)
            {
                ai[k] = ai[j];
                arn[k] = rn1;
                arn[j] = null;
            }
            k++;
        }

        aGs = false;
        mSize = k;
    }

    private int idealByteArraySize(int i)
    {
        int j = 4;
        do
        {
label0:
            {
                if (j < 32)
                {
                    if (i > -12 + (1 << j))
                    {
                        break label0;
                    }
                    i = -12 + (1 << j);
                }
                return i;
            }
            j++;
        } while (true);
    }

    private int idealIntArraySize(int i)
    {
        return idealByteArraySize(i * 4) / 4;
    }

    private int io(int i)
    {
        int j = 0;
        for (int k = -1 + mSize; j <= k;)
        {
            int l = j + k >>> 1;
            int i1 = aGt[l];
            if (i1 < i)
            {
                j = l + 1;
            } else
            if (i1 > i)
            {
                k = l - 1;
            } else
            {
                return l;
            }
        }

        return ~j;
    }

    public void a(int i, rn rn1)
    {
        int j = io(i);
        if (j >= 0)
        {
            aGu[j] = rn1;
            return;
        }
        int k = ~j;
        if (k < mSize && aGu[k] == aGr)
        {
            aGt[k] = i;
            aGu[k] = rn1;
            return;
        }
        if (aGs && mSize >= aGt.length)
        {
            gc();
            k = -1 ^ io(i);
        }
        if (mSize >= aGt.length)
        {
            int l = idealIntArraySize(1 + mSize);
            int ai[] = new int[l];
            rn arn[] = new rn[l];
            System.arraycopy(aGt, 0, ai, 0, aGt.length);
            System.arraycopy(aGu, 0, arn, 0, aGu.length);
            aGt = ai;
            aGu = arn;
        }
        if (mSize - k != 0)
        {
            System.arraycopy(aGt, k, aGt, k + 1, mSize - k);
            System.arraycopy(aGu, k, aGu, k + 1, mSize - k);
        }
        aGt[k] = i;
        aGu[k] = rn1;
        mSize = 1 + mSize;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof rm))
            {
                return false;
            }
            rm rm1 = (rm)obj;
            if (size() != rm1.size())
            {
                return false;
            }
            if (!a(aGt, rm1.aGt, mSize) || !a(aGu, rm1.aGu, mSize))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        if (aGs)
        {
            gc();
        }
        int i = 17;
        for (int j = 0; j < mSize; j++)
        {
            i = 31 * (i * 31 + aGt[j]) + aGu[j].hashCode();
        }

        return i;
    }

    public rn im(int i)
    {
        int j = io(i);
        if (j < 0 || aGu[j] == aGr)
        {
            return null;
        } else
        {
            return aGu[j];
        }
    }

    public rn in(int i)
    {
        if (aGs)
        {
            gc();
        }
        return aGu[i];
    }

    public boolean isEmpty()
    {
        return size() == 0;
    }

    public int size()
    {
        if (aGs)
        {
            gc();
        }
        return mSize;
    }

}
