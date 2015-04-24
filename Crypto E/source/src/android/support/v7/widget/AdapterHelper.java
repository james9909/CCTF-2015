// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            OpReorderer

class AdapterHelper
    implements OpReorderer.Callback
{
    static interface Callback
    {

        public abstract RecyclerView.ViewHolder a(int i);

        public abstract void a(int i, int j);

        public abstract void a(UpdateOp updateop);

        public abstract void b(int i, int j);

        public abstract void b(UpdateOp updateop);

        public abstract void c(int i, int j);

        public abstract void d(int i, int j);

        public abstract void e(int i, int j);
    }

    static class UpdateOp
    {

        int a;
        int b;
        int c;

        String a()
        {
            switch (a)
            {
            default:
                return "??";

            case 0: // '\0'
                return "add";

            case 1: // '\001'
                return "rm";

            case 2: // '\002'
                return "up";

            case 3: // '\003'
                return "mv";
            }
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                UpdateOp updateop = (UpdateOp)obj;
                if (a != updateop.a)
                {
                    return false;
                }
                if (a != 3 || Math.abs(c - b) != 1 || c != updateop.b || b != updateop.c)
                {
                    if (c != updateop.c)
                    {
                        return false;
                    }
                    if (b != updateop.b)
                    {
                        return false;
                    }
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 * (31 * a + b) + c;
        }

        public String toString()
        {
            return (new StringBuilder()).append("[").append(a()).append(",s:").append(b).append("c:").append(c).append("]").toString();
        }

        UpdateOp(int i, int j, int k)
        {
            a = i;
            b = j;
            c = k;
        }
    }


    final ArrayList a;
    final ArrayList b;
    final Callback c;
    Runnable d;
    final boolean e;
    final OpReorderer f;
    private android.support.v4.util.Pools.Pool g;

    AdapterHelper(Callback callback)
    {
        this(callback, false);
    }

    AdapterHelper(Callback callback, boolean flag)
    {
        g = new android.support.v4.util.Pools.SimplePool(30);
        a = new ArrayList();
        b = new ArrayList();
        c = callback;
        e = flag;
        f = new OpReorderer(this);
    }

    private void b(UpdateOp updateop)
    {
        g(updateop);
    }

    private boolean b(int i)
    {
        int j = b.size();
label0:
        for (int k = 0; k < j; k++)
        {
            UpdateOp updateop = (UpdateOp)b.get(k);
            if (updateop.a == 3)
            {
                if (a(updateop.c, k + 1) == i)
                {
                    return true;
                }
                continue;
            }
            if (updateop.a != 0)
            {
                continue;
            }
            int l = updateop.b + updateop.c;
            int i1 = updateop.b;
            do
            {
                if (i1 >= l)
                {
                    continue label0;
                }
                if (a(i1, k + 1) == i)
                {
                    return true;
                }
                i1++;
            } while (true);
        }

        return false;
    }

    private int c(int i, int j)
    {
        int k;
        int l;
        k = -1 + b.size();
        l = i;
_L4:
        UpdateOp updateop1;
        int l1;
        if (k < 0)
        {
            break MISSING_BLOCK_LABEL_377;
        }
        updateop1 = (UpdateOp)b.get(k);
        if (updateop1.a != 3)
        {
            break MISSING_BLOCK_LABEL_285;
        }
        int j1;
        int k1;
        if (updateop1.b < updateop1.c)
        {
            j1 = updateop1.b;
            k1 = updateop1.c;
        } else
        {
            j1 = updateop1.c;
            k1 = updateop1.b;
        }
        if (l >= j1 && l <= k1)
        {
            if (j1 == updateop1.b)
            {
                if (j == 0)
                {
                    updateop1.c = 1 + updateop1.c;
                } else
                if (j == 1)
                {
                    updateop1.c = -1 + updateop1.c;
                }
                l1 = l + 1;
            } else
            {
                if (j == 0)
                {
                    updateop1.b = 1 + updateop1.b;
                } else
                if (j == 1)
                {
                    updateop1.b = -1 + updateop1.b;
                }
                l1 = l - 1;
            }
        } else
        {
label0:
            {
                if (l >= updateop1.b)
                {
                    break MISSING_BLOCK_LABEL_278;
                }
                if (j != 0)
                {
                    break label0;
                }
                updateop1.b = 1 + updateop1.b;
                updateop1.c = 1 + updateop1.c;
                l1 = l;
            }
        }
_L1:
        l = l1;
_L2:
        k--;
        continue; /* Loop/switch isn't completed */
        if (j == 1)
        {
            updateop1.b = -1 + updateop1.b;
            updateop1.c = -1 + updateop1.c;
        }
        l1 = l;
          goto _L1
        if (updateop1.b <= l)
        {
            if (updateop1.a == 0)
            {
                l -= updateop1.c;
            } else
            if (updateop1.a == 1)
            {
                l += updateop1.c;
            }
        } else
        if (j == 0)
        {
            updateop1.b = 1 + updateop1.b;
        } else
        if (j == 1)
        {
            updateop1.b = -1 + updateop1.b;
        }
          goto _L2
        int i1 = -1 + b.size();
        while (i1 >= 0) 
        {
            UpdateOp updateop = (UpdateOp)b.get(i1);
            if (updateop.a == 3)
            {
                if (updateop.c == updateop.b || updateop.c < 0)
                {
                    b.remove(i1);
                    a(updateop);
                }
            } else
            if (updateop.c <= 0)
            {
                b.remove(i1);
                a(updateop);
            }
            i1--;
        }
        return l;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void c(UpdateOp updateop)
    {
        int i = updateop.b;
        int j = updateop.b + updateop.c;
        byte byte0 = -1;
        int k = updateop.b;
        int l = 0;
        while (k < j) 
        {
            if (c.a(k) != null || b(k))
            {
                boolean flag;
                int i1;
                int j1;
                int k1;
                int l1;
                int i2;
                int j2;
                if (byte0 == 0)
                {
                    e(a(1, i, l));
                    flag = true;
                } else
                {
                    flag = false;
                }
                byte0 = 1;
            } else
            {
                if (byte0 == 1)
                {
                    g(a(1, i, l));
                    flag = true;
                } else
                {
                    flag = false;
                }
                byte0 = 0;
            }
            if (flag)
            {
                i2 = k - l;
                k1 = j - l;
                l1 = 1;
            } else
            {
                i1 = l + 1;
                j1 = k;
                k1 = j;
                l1 = i1;
                i2 = j1;
            }
            j2 = i2 + 1;
            l = l1;
            j = k1;
            k = j2;
        }
        if (l != updateop.c)
        {
            a(updateop);
            updateop = a(1, i, l);
        }
        if (byte0 == 0)
        {
            e(updateop);
            return;
        } else
        {
            g(updateop);
            return;
        }
    }

    private void d(UpdateOp updateop)
    {
        int i = updateop.b;
        int j = updateop.b + updateop.c;
        int k = updateop.b;
        byte byte0 = -1;
        int l = 0;
        while (k < j) 
        {
            int i1;
            int j1;
            boolean flag;
            int k1;
            boolean flag1;
            if (c.a(k) != null || b(k))
            {
                if (byte0 == 0)
                {
                    e(a(2, i, l));
                    l = 0;
                    i = k;
                }
                i1 = i;
                j1 = l;
                flag = true;
            } else
            {
                if (byte0 == 1)
                {
                    g(a(2, i, l));
                    l = 0;
                    i = k;
                }
                i1 = i;
                j1 = l;
                flag = false;
            }
            k1 = j1 + 1;
            k++;
            flag1 = flag;
            l = k1;
            i = i1;
            byte0 = flag1;
        }
        if (l != updateop.c)
        {
            a(updateop);
            updateop = a(2, i, l);
        }
        if (byte0 == 0)
        {
            e(updateop);
            return;
        } else
        {
            g(updateop);
            return;
        }
    }

    private void e(UpdateOp updateop)
    {
        int i;
        int j;
        if (updateop.a == 0 || updateop.a == 3)
        {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        i = c(updateop.b, updateop.a);
        j = updateop.b;
        updateop.a;
        JVM INSTR tableswitch 1 2: default 68
    //                   1 181
    //                   2 95;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("op should be remove or update.").append(updateop).toString());
_L3:
        int k = 1;
_L8:
        int l;
        int i1;
        int j1;
        int k1;
        l = 1;
        i1 = i;
        j1 = j;
        k1 = 1;
_L7:
        int l1;
        if (k1 >= updateop.c)
        {
            break MISSING_BLOCK_LABEL_280;
        }
        l1 = c(updateop.b + k * k1, updateop.a);
        updateop.a;
        JVM INSTR tableswitch 1 2: default 164
    //                   1 208
    //                   2 187;
           goto _L4 _L5 _L6
_L4:
        boolean flag = false;
_L9:
        if (flag)
        {
            l++;
        } else
        {
            UpdateOp updateop2 = a(updateop.a, i1, l);
            a(updateop2, j1);
            a(updateop2);
            if (updateop.a == 2)
            {
                j1 += l;
            }
            l = 1;
            i1 = l1;
        }
        k1++;
          goto _L7
_L2:
        k = 0;
          goto _L8
_L6:
        if (l1 == i1 + 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L9
_L5:
        if (l1 == i1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L9
        a(updateop);
        if (l > 0)
        {
            UpdateOp updateop1 = a(updateop.a, i1, l);
            a(updateop1, j1);
            a(updateop1);
        }
        return;
          goto _L7
    }

    private void f(UpdateOp updateop)
    {
        g(updateop);
    }

    private void g(UpdateOp updateop)
    {
        b.add(updateop);
        switch (updateop.a)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown update op type for ").append(updateop).toString());

        case 0: // '\0'
            c.d(updateop.b, updateop.c);
            return;

        case 3: // '\003'
            c.e(updateop.b, updateop.c);
            return;

        case 1: // '\001'
            c.b(updateop.b, updateop.c);
            return;

        case 2: // '\002'
            c.c(updateop.b, updateop.c);
            return;
        }
    }

    int a(int i)
    {
        return a(i, 0);
    }

    int a(int i, int j)
    {
        int k;
        int l;
        k = b.size();
        l = i;
_L5:
        if (j >= k) goto _L2; else goto _L1
_L1:
        UpdateOp updateop = (UpdateOp)b.get(j);
        if (updateop.a != 3) goto _L4; else goto _L3
_L3:
        if (updateop.b == l)
        {
            l = updateop.c;
        } else
        {
            if (updateop.b < l)
            {
                l--;
            }
            if (updateop.c <= l)
            {
                l++;
            }
        }
_L7:
        j++;
          goto _L5
_L4:
        if (updateop.b > l) goto _L7; else goto _L6
_L6:
        if (updateop.a != 1)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        if (l >= updateop.b + updateop.c) goto _L9; else goto _L8
_L8:
        l = -1;
_L2:
        return l;
_L9:
        l -= updateop.c;
          goto _L7
        if (updateop.a == 0)
        {
            l += updateop.c;
        }
          goto _L7
    }

    public UpdateOp a(int i, int j, int k)
    {
        UpdateOp updateop = (UpdateOp)g.acquire();
        if (updateop == null)
        {
            return new UpdateOp(i, j, k);
        } else
        {
            updateop.a = i;
            updateop.b = j;
            updateop.c = k;
            return updateop;
        }
    }

    void a()
    {
        a(((List) (a)));
        a(((List) (b)));
    }

    public void a(UpdateOp updateop)
    {
        if (!e)
        {
            g.release(updateop);
        }
    }

    void a(UpdateOp updateop, int i)
    {
        c.a(updateop);
        switch (updateop.a)
        {
        default:
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");

        case 1: // '\001'
            c.a(i, updateop.c);
            return;

        case 2: // '\002'
            c.c(i, updateop.c);
            break;
        }
    }

    void a(List list)
    {
        int i = list.size();
        for (int j = 0; j < i; j++)
        {
            a((UpdateOp)list.get(j));
        }

        list.clear();
    }

    void b()
    {
        int i;
        int j;
        f.a(a);
        i = a.size();
        j = 0;
_L7:
        UpdateOp updateop;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        updateop = (UpdateOp)a.get(j);
        updateop.a;
        JVM INSTR tableswitch 0 3: default 72
    //                   0 94
    //                   1 102
    //                   2 110
    //                   3 118;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_118;
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break; /* Loop/switch isn't completed */
_L8:
        if (d != null)
        {
            d.run();
        }
        j++;
        if (true) goto _L7; else goto _L6
_L6:
        f(updateop);
          goto _L8
_L3:
        c(updateop);
          goto _L8
_L4:
        d(updateop);
          goto _L8
        b(updateop);
          goto _L8
        a.clear();
        return;
    }

    boolean b(int i, int j)
    {
        a.add(a(1, i, j));
        return a.size() == 1;
    }

    void c()
    {
        int i = b.size();
        for (int j = 0; j < i; j++)
        {
            c.b((UpdateOp)b.get(j));
        }

        a(b);
    }

    boolean d()
    {
        return a.size() > 0;
    }

    void e()
    {
        int i;
        int j;
        c();
        i = a.size();
        j = 0;
_L7:
        UpdateOp updateop;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        updateop = (UpdateOp)a.get(j);
        updateop.a;
        JVM INSTR tableswitch 0 3: default 64
    //                   0 86
    //                   1 116
    //                   2 146
    //                   3 176;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_176;
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break; /* Loop/switch isn't completed */
_L8:
        if (d != null)
        {
            d.run();
        }
        j++;
        if (true) goto _L7; else goto _L6
_L6:
        c.b(updateop);
        c.d(updateop.b, updateop.c);
          goto _L8
_L3:
        c.b(updateop);
        c.a(updateop.b, updateop.c);
          goto _L8
_L4:
        c.b(updateop);
        c.c(updateop.b, updateop.c);
          goto _L8
        c.b(updateop);
        c.e(updateop.b, updateop.c);
          goto _L8
        a(a);
        return;
    }
}
