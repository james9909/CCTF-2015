// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Queue;

public class ArrayQueue extends AbstractCollection
    implements Serializable, Cloneable, Queue
{
    class QueueIterator
        implements Iterator
    {

        final ArrayQueue a;
        private int b;
        private int c;
        private int d;

        public boolean hasNext()
        {
            return b != c;
        }

        public Object next()
        {
            if (b == c)
            {
                throw new NoSuchElementException();
            }
            Object obj = ArrayQueue.c(a)[b];
            if (ArrayQueue.b(a) != c || obj == null)
            {
                throw new ConcurrentModificationException();
            } else
            {
                d = b;
                b = 1 + b & -1 + ArrayQueue.c(a).length;
                return obj;
            }
        }

        public void remove()
        {
            if (d < 0)
            {
                throw new IllegalStateException();
            }
            if (ArrayQueue.a(a, d))
            {
                b = -1 + b & -1 + ArrayQueue.c(a).length;
                c = ArrayQueue.b(a);
            }
            d = -1;
        }

        private QueueIterator()
        {
            a = ArrayQueue.this;
            super();
            b = ArrayQueue.a(a);
            c = ArrayQueue.b(a);
            d = -1;
        }

    }


    private transient Object a[];
    private transient int b;
    private transient int c;

    public ArrayQueue()
    {
        a = new Object[16];
    }

    static int a(ArrayQueue arrayqueue)
    {
        return arrayqueue.b;
    }

    private boolean a(int i)
    {
        Object aobj[] = a;
        int j = -1 + aobj.length;
        int k = b;
        int l = c;
        int i1 = j & i - k;
        int j1 = j & l - i;
        if (i1 >= (j & l - k))
        {
            throw new ConcurrentModificationException();
        }
        if (i1 < j1)
        {
            if (k <= i)
            {
                System.arraycopy(((Object) (aobj)), k, ((Object) (aobj)), k + 1, i1);
            } else
            {
                System.arraycopy(((Object) (aobj)), 0, ((Object) (aobj)), 1, i);
                aobj[0] = aobj[j];
                System.arraycopy(((Object) (aobj)), k, ((Object) (aobj)), k + 1, j - k);
            }
            aobj[k] = null;
            b = j & k + 1;
            return false;
        }
        if (i < l)
        {
            System.arraycopy(((Object) (aobj)), i + 1, ((Object) (aobj)), i, j1);
            c = l - 1;
        } else
        {
            System.arraycopy(((Object) (aobj)), i + 1, ((Object) (aobj)), i, j - i);
            aobj[j] = aobj[0];
            System.arraycopy(((Object) (aobj)), 1, ((Object) (aobj)), 0, l);
            c = j & l - 1;
        }
        return true;
    }

    static boolean a(ArrayQueue arrayqueue, int i)
    {
        return arrayqueue.a(i);
    }

    static int b(ArrayQueue arrayqueue)
    {
        return arrayqueue.c;
    }

    private void b()
    {
        int i = b;
        int j = a.length;
        int k = j - i;
        int l = j << 1;
        if (l < 0)
        {
            throw new IllegalStateException("Sorry, queue too big");
        } else
        {
            Object aobj[] = new Object[l];
            System.arraycopy(((Object) (a)), i, ((Object) (aobj)), 0, k);
            System.arraycopy(((Object) (a)), 0, ((Object) (aobj)), k, i);
            a = aobj;
            b = 0;
            c = j;
            return;
        }
    }

    static Object[] c(ArrayQueue arrayqueue)
    {
        return arrayqueue.a;
    }

    public ArrayQueue a()
    {
        ArrayQueue arrayqueue;
        try
        {
            arrayqueue = (ArrayQueue)super.clone();
            Object aobj[] = (Object[])(Object[])Array.newInstance(((Object) (a)).getClass().getComponentType(), a.length);
            System.arraycopy(((Object) (a)), 0, ((Object) (aobj)), 0, a.length);
            arrayqueue.a = aobj;
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new AssertionError();
        }
        return arrayqueue;
    }

    public boolean add(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("e == null");
        }
        a[c] = obj;
        int i = 1 + c & -1 + a.length;
        c = i;
        if (i == b)
        {
            b();
        }
        return true;
    }

    public void clear()
    {
        int i = b;
        int j = c;
        if (i != j)
        {
            c = 0;
            b = 0;
            int k = -1 + a.length;
            do
            {
                a[i] = null;
                i = k & i + 1;
            } while (i != j);
        }
    }

    public Object clone()
    {
        return a();
    }

    public boolean contains(Object obj)
    {
        if (obj == null)
        {
            return false;
        }
        int i = -1 + a.length;
        int j = b;
        do
        {
            Object obj1 = a[j];
            if (obj1 != null)
            {
                if (obj.equals(obj1))
                {
                    return true;
                }
                j = i & j + 1;
            } else
            {
                return false;
            }
        } while (true);
    }

    public Object element()
    {
        Object obj = a[b];
        if (obj == null)
        {
            throw new NoSuchElementException();
        } else
        {
            return obj;
        }
    }

    public boolean isEmpty()
    {
        return b == c;
    }

    public Iterator iterator()
    {
        return new QueueIterator();
    }

    public boolean offer(Object obj)
    {
        return add(obj);
    }

    public Object peek()
    {
        return a[b];
    }

    public Object poll()
    {
        int i = b;
        Object obj = a[i];
        if (obj == null)
        {
            return null;
        } else
        {
            a[i] = null;
            b = i + 1 & -1 + a.length;
            return obj;
        }
    }

    public Object remove()
    {
        Object obj = poll();
        if (obj == null)
        {
            throw new NoSuchElementException();
        } else
        {
            return obj;
        }
    }

    public boolean remove(Object obj)
    {
        if (obj == null)
        {
            return false;
        }
        int i = -1 + a.length;
        int j = b;
        do
        {
            Object obj1 = a[j];
            if (obj1 != null)
            {
                if (obj.equals(obj1))
                {
                    a(j);
                    return true;
                }
                j = i & j + 1;
            } else
            {
                return false;
            }
        } while (true);
    }

    public int size()
    {
        return c - b & -1 + a.length;
    }

    public Object[] toArray()
    {
        return toArray(new Object[size()]);
    }

    public Object[] toArray(Object aobj[])
    {
        int i = size();
        Object aobj1[];
        int j;
        if (aobj.length < i)
        {
            aobj1 = (Object[])(Object[])Array.newInstance(((Object) (aobj)).getClass().getComponentType(), i);
        } else
        {
            aobj1 = aobj;
        }
        if (b >= c) goto _L2; else goto _L1
_L1:
        System.arraycopy(((Object) (a)), b, ((Object) (aobj1)), 0, size());
_L4:
        if (aobj1.length > i)
        {
            aobj1[i] = null;
        }
        return aobj1;
_L2:
        if (b > c)
        {
            j = a.length - b;
            System.arraycopy(((Object) (a)), b, ((Object) (aobj1)), 0, j);
            System.arraycopy(((Object) (a)), 0, ((Object) (aobj1)), j, c);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
