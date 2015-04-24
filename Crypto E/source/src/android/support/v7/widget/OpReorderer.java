// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import java.util.List;

class OpReorderer
{
    static interface Callback
    {

        public abstract AdapterHelper.UpdateOp a(int i, int j, int k);

        public abstract void a(AdapterHelper.UpdateOp updateop);
    }


    final Callback a;

    public OpReorderer(Callback callback)
    {
        a = callback;
    }

    private void a(List list, int i, int j)
    {
        AdapterHelper.UpdateOp updateop = (AdapterHelper.UpdateOp)list.get(i);
        AdapterHelper.UpdateOp updateop1 = (AdapterHelper.UpdateOp)list.get(j);
        switch (updateop1.a)
        {
        default:
            return;

        case 1: // '\001'
            a(list, i, updateop, j, updateop1);
            return;

        case 0: // '\0'
            c(list, i, updateop, j, updateop1);
            return;

        case 2: // '\002'
            b(list, i, updateop, j, updateop1);
            break;
        }
    }

    private int b(List list)
    {
        boolean flag;
        int i;
        flag = false;
        i = -1 + list.size();
_L2:
        boolean flag1;
        if (i < 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (((AdapterHelper.UpdateOp)list.get(i)).a == 3)
        {
            if (flag)
            {
                return i;
            }
            break MISSING_BLOCK_LABEL_52;
        }
        flag1 = true;
_L3:
        i--;
        flag = flag1;
        if (true) goto _L2; else goto _L1
_L1:
        return -1;
        flag1 = flag;
          goto _L3
    }

    private void c(List list, int i, AdapterHelper.UpdateOp updateop, int j, AdapterHelper.UpdateOp updateop1)
    {
        int k = updateop.c;
        int l = updateop1.b;
        int i1 = 0;
        if (k < l)
        {
            i1 = -1;
        }
        if (updateop.b < updateop1.b)
        {
            i1++;
        }
        if (updateop1.b <= updateop.b)
        {
            updateop.b = updateop.b + updateop1.c;
        }
        if (updateop1.b <= updateop.c)
        {
            updateop.c = updateop.c + updateop1.c;
        }
        updateop1.b = i1 + updateop1.b;
        list.set(i, updateop1);
        list.set(j, updateop);
    }

    void a(List list)
    {
        do
        {
            int i = b(list);
            if (i != -1)
            {
                a(list, i, i + 1);
            } else
            {
                return;
            }
        } while (true);
    }

    void a(List list, int i, AdapterHelper.UpdateOp updateop, int j, AdapterHelper.UpdateOp updateop1)
    {
        boolean flag = false;
        boolean flag1;
        AdapterHelper.UpdateOp updateop2;
        int k;
        if (updateop.b < updateop.c)
        {
            if (updateop1.b == updateop.b && updateop1.c == updateop.c - updateop.b)
            {
                flag1 = true;
            } else
            {
                flag = false;
                flag1 = false;
            }
        } else
        if (updateop1.b == 1 + updateop.c && updateop1.c == updateop.b - updateop.c)
        {
            flag = true;
            flag1 = true;
        } else
        {
            flag = true;
            flag1 = false;
        }
        if (updateop.c >= updateop1.b) goto _L2; else goto _L1
_L1:
        updateop1.b = -1 + updateop1.b;
_L4:
        if (updateop.b <= updateop1.b)
        {
            updateop1.b = 1 + updateop1.b;
            updateop2 = null;
        } else
        if (updateop.b < updateop1.b + updateop1.c)
        {
            k = (updateop1.b + updateop1.c) - updateop.b;
            updateop2 = a.a(1, 1 + updateop.b, k);
            updateop1.c = updateop.b - updateop1.b;
        } else
        {
            updateop2 = null;
        }
        if (flag1)
        {
            list.set(i, updateop1);
            list.remove(j);
            a.a(updateop);
        } else
        {
            if (flag)
            {
                if (updateop2 != null)
                {
                    if (updateop.b > updateop2.b)
                    {
                        updateop.b = updateop.b - updateop2.c;
                    }
                    if (updateop.c > updateop2.b)
                    {
                        updateop.c = updateop.c - updateop2.c;
                    }
                }
                if (updateop.b > updateop1.b)
                {
                    updateop.b = updateop.b - updateop1.c;
                }
                if (updateop.c > updateop1.b)
                {
                    updateop.c = updateop.c - updateop1.c;
                }
            } else
            {
                if (updateop2 != null)
                {
                    if (updateop.b >= updateop2.b)
                    {
                        updateop.b = updateop.b - updateop2.c;
                    }
                    if (updateop.c >= updateop2.b)
                    {
                        updateop.c = updateop.c - updateop2.c;
                    }
                }
                if (updateop.b >= updateop1.b)
                {
                    updateop.b = updateop.b - updateop1.c;
                }
                if (updateop.c >= updateop1.b)
                {
                    updateop.c = updateop.c - updateop1.c;
                }
            }
            list.set(i, updateop1);
            if (updateop.b != updateop.c)
            {
                list.set(j, updateop);
            } else
            {
                list.remove(j);
            }
            if (updateop2 != null)
            {
                list.add(i, updateop2);
                return;
            }
        }
_L5:
        return;
_L2:
        if (updateop.c >= updateop1.b + updateop1.c) goto _L4; else goto _L3
_L3:
        updateop1.c = -1 + updateop1.c;
        updateop.a = 1;
        updateop.c = 1;
        if (updateop1.c == 0)
        {
            list.remove(j);
            a.a(updateop1);
            return;
        }
          goto _L5
    }

    void b(List list, int i, AdapterHelper.UpdateOp updateop, int j, AdapterHelper.UpdateOp updateop1)
    {
        AdapterHelper.UpdateOp updateop2 = null;
        AdapterHelper.UpdateOp updateop3;
        if (updateop.c < updateop1.b)
        {
            updateop1.b = -1 + updateop1.b;
            updateop3 = null;
        } else
        if (updateop.c < updateop1.b + updateop1.c)
        {
            updateop1.c = -1 + updateop1.c;
            updateop3 = a.a(2, updateop.b, 1);
        } else
        {
            updateop3 = null;
        }
        if (updateop.b <= updateop1.b)
        {
            updateop1.b = 1 + updateop1.b;
        } else
        {
            int k = updateop.b;
            int l = updateop1.b + updateop1.c;
            updateop2 = null;
            if (k < l)
            {
                int i1 = (updateop1.b + updateop1.c) - updateop.b;
                updateop2 = a.a(2, 1 + updateop.b, i1);
                updateop1.c = updateop1.c - i1;
            }
        }
        list.set(j, updateop);
        if (updateop1.c > 0)
        {
            list.set(i, updateop1);
        } else
        {
            list.remove(i);
            a.a(updateop1);
        }
        if (updateop3 != null)
        {
            list.add(i, updateop3);
        }
        if (updateop2 != null)
        {
            list.add(i, updateop2);
        }
    }
}
