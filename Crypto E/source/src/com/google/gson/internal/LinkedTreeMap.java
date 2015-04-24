// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

public final class LinkedTreeMap extends AbstractMap
    implements Serializable
{
    class EntrySet extends AbstractSet
    {

        final LinkedTreeMap a;

        public void clear()
        {
            a.clear();
        }

        public boolean contains(Object obj)
        {
            return (obj instanceof java.util.Map.Entry) && a.a((java.util.Map.Entry)obj) != null;
        }

        public Iterator iterator()
        {
            return new LinkedTreeMapIterator(this) {

                final EntrySet a;

                public java.util.Map.Entry a()
                {
                    return b();
                }

                public Object next()
                {
                    return a();
                }

            
            {
                a = entryset;
                entryset.a. super();
            }
            };
        }

        public boolean remove(Object obj)
        {
            Node node;
            if (obj instanceof java.util.Map.Entry)
            {
                if ((node = a.a((java.util.Map.Entry)obj)) != null)
                {
                    a.a(node, true);
                    return true;
                }
            }
            return false;
        }

        public int size()
        {
            return a.c;
        }

        EntrySet()
        {
            a = LinkedTreeMap.this;
            super();
        }
    }

    class KeySet extends AbstractSet
    {

        final LinkedTreeMap a;

        public void clear()
        {
            a.clear();
        }

        public boolean contains(Object obj)
        {
            return a.containsKey(obj);
        }

        public Iterator iterator()
        {
            return new LinkedTreeMapIterator(this) {

                final KeySet a;

                public Object next()
                {
                    return b().f;
                }

            
            {
                a = keyset;
                keyset.a. super();
            }
            };
        }

        public boolean remove(Object obj)
        {
            return a.b(obj) != null;
        }

        public int size()
        {
            return a.c;
        }

        KeySet()
        {
            a = LinkedTreeMap.this;
            super();
        }
    }

    abstract class LinkedTreeMapIterator
        implements Iterator
    {

        Node b;
        Node c;
        int d;
        final LinkedTreeMap e;

        final Node b()
        {
            Node node = b;
            if (node == e.e)
            {
                throw new NoSuchElementException();
            }
            if (e.d != d)
            {
                throw new ConcurrentModificationException();
            } else
            {
                b = node.d;
                c = node;
                return node;
            }
        }

        public final boolean hasNext()
        {
            return b != e.e;
        }

        public final void remove()
        {
            if (c == null)
            {
                throw new IllegalStateException();
            } else
            {
                e.a(c, true);
                c = null;
                d = e.d;
                return;
            }
        }

        private LinkedTreeMapIterator()
        {
            e = LinkedTreeMap.this;
            super();
            b = e.e.d;
            c = null;
            d = e.d;
        }

    }

    static final class Node
        implements java.util.Map.Entry
    {

        Node a;
        Node b;
        Node c;
        Node d;
        Node e;
        final Object f;
        Object g;
        int h;

        public Node a()
        {
            Node node1;
            for (Node node = b; node != null; node = node1)
            {
                node1 = node.b;
                this = node;
            }

            return this;
        }

        public Node b()
        {
            Node node1;
            for (Node node = c; node != null; node = node1)
            {
                node1 = node.c;
                this = node;
            }

            return this;
        }

        public boolean equals(Object obj)
        {
            boolean flag;
            boolean flag1;
            flag = obj instanceof java.util.Map.Entry;
            flag1 = false;
            if (!flag) goto _L2; else goto _L1
_L1:
            java.util.Map.Entry entry = (java.util.Map.Entry)obj;
            if (f != null) goto _L4; else goto _L3
_L3:
            Object obj2;
            obj2 = entry.getKey();
            flag1 = false;
            if (obj2 != null) goto _L2; else goto _L5
_L5:
            if (g != null) goto _L7; else goto _L6
_L6:
            Object obj1;
            obj1 = entry.getValue();
            flag1 = false;
            if (obj1 != null) goto _L2; else goto _L8
_L8:
            flag1 = true;
_L2:
            return flag1;
_L4:
            boolean flag2;
            flag2 = f.equals(entry.getKey());
            flag1 = false;
            if (!flag2) goto _L2; else goto _L5
_L7:
            boolean flag3;
            flag3 = g.equals(entry.getValue());
            flag1 = false;
            if (!flag3) goto _L2; else goto _L8
        }

        public Object getKey()
        {
            return f;
        }

        public Object getValue()
        {
            return g;
        }

        public int hashCode()
        {
            int j;
            Object obj;
            int k;
            if (f == null)
            {
                j = 0;
            } else
            {
                j = f.hashCode();
            }
            obj = g;
            k = 0;
            if (obj != null)
            {
                k = g.hashCode();
            }
            return j ^ k;
        }

        public Object setValue(Object obj)
        {
            Object obj1 = g;
            g = obj;
            return obj1;
        }

        public String toString()
        {
            return (new StringBuilder()).append(f).append("=").append(g).toString();
        }

        Node()
        {
            f = null;
            e = this;
            d = this;
        }

        Node(Node node, Object obj, Node node1, Node node2)
        {
            a = node;
            f = obj;
            h = 1;
            d = node1;
            e = node2;
            node2.d = this;
            node1.e = this;
        }
    }


    static final boolean f;
    private static final Comparator g = new Comparator() {

        public int a(Comparable comparable, Comparable comparable1)
        {
            return comparable.compareTo(comparable1);
        }

        public int compare(Object obj, Object obj1)
        {
            return a((Comparable)obj, (Comparable)obj1);
        }

    };
    Comparator a;
    Node b;
    int c;
    int d;
    final Node e;
    private EntrySet h;
    private KeySet i;

    public LinkedTreeMap()
    {
        this(g);
    }

    public LinkedTreeMap(Comparator comparator)
    {
        c = 0;
        d = 0;
        e = new Node();
        if (comparator == null)
        {
            comparator = g;
        }
        a = comparator;
    }

    private void a(Node node)
    {
        Node node1 = node.b;
        Node node2 = node.c;
        Node node3 = node2.b;
        Node node4 = node2.c;
        node.c = node3;
        if (node3 != null)
        {
            node3.a = node;
        }
        a(node, node2);
        node2.b = node;
        node.a = node2;
        int j;
        int k;
        int l;
        int i1;
        if (node1 != null)
        {
            j = node1.h;
        } else
        {
            j = 0;
        }
        if (node3 != null)
        {
            k = node3.h;
        } else
        {
            k = 0;
        }
        node.h = 1 + Math.max(j, k);
        l = node.h;
        i1 = 0;
        if (node4 != null)
        {
            i1 = node4.h;
        }
        node2.h = 1 + Math.max(l, i1);
    }

    private void a(Node node, Node node1)
    {
        Node node2 = node.a;
        node.a = null;
        if (node1 != null)
        {
            node1.a = node2;
        }
        if (node2 != null)
        {
            if (node2.b == node)
            {
                node2.b = node1;
                return;
            }
            if (!f && node2.c != node)
            {
                throw new AssertionError();
            } else
            {
                node2.c = node1;
                return;
            }
        } else
        {
            b = node1;
            return;
        }
    }

    private boolean a(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

    private void b(Node node)
    {
        Node node1 = node.b;
        Node node2 = node.c;
        Node node3 = node1.b;
        Node node4 = node1.c;
        node.b = node4;
        if (node4 != null)
        {
            node4.a = node;
        }
        a(node, node1);
        node1.c = node;
        node.a = node1;
        int j;
        int k;
        int l;
        int i1;
        if (node2 != null)
        {
            j = node2.h;
        } else
        {
            j = 0;
        }
        if (node4 != null)
        {
            k = node4.h;
        } else
        {
            k = 0;
        }
        node.h = 1 + Math.max(j, k);
        l = node.h;
        i1 = 0;
        if (node3 != null)
        {
            i1 = node3.h;
        }
        node1.h = 1 + Math.max(l, i1);
    }

    private void b(Node node, boolean flag)
    {
_L11:
        if (node == null) goto _L2; else goto _L1
_L1:
        Node node1;
        Node node2;
        int j;
        int k;
        int l;
        node1 = node.b;
        node2 = node.c;
        Node node5;
        Node node6;
        if (node1 != null)
        {
            j = node1.h;
        } else
        {
            j = 0;
        }
        if (node2 != null)
        {
            k = node2.h;
        } else
        {
            k = 0;
        }
        l = j - k;
        if (l != -2) goto _L4; else goto _L3
_L3:
        node5 = node2.b;
        node6 = node2.c;
        int l1;
        int i2;
        int j2;
        if (node6 != null)
        {
            l1 = node6.h;
        } else
        {
            l1 = 0;
        }
        if (node5 != null)
        {
            i2 = node5.h;
        } else
        {
            i2 = 0;
        }
        j2 = i2 - l1;
        if (j2 == -1 || j2 == 0 && !flag)
        {
            a(node);
        } else
        {
            if (!f && j2 != 1)
            {
                throw new AssertionError();
            }
            b(node2);
            a(node);
        }
        if (!flag) goto _L5; else goto _L2
_L2:
        return;
_L4:
        if (l != 2) goto _L7; else goto _L6
_L6:
        Node node3 = node1.b;
        Node node4 = node1.c;
        int i1;
        int j1;
        int k1;
        if (node4 != null)
        {
            i1 = node4.h;
        } else
        {
            i1 = 0;
        }
        if (node3 != null)
        {
            j1 = node3.h;
        } else
        {
            j1 = 0;
        }
        k1 = j1 - i1;
        if (k1 == 1 || k1 == 0 && !flag)
        {
            b(node);
        } else
        {
            if (!f && k1 != -1)
            {
                throw new AssertionError();
            }
            a(node1);
            b(node);
        }
        if (flag) goto _L2; else goto _L5
_L5:
        node = node.a;
        continue; /* Loop/switch isn't completed */
_L7:
        if (l != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        node.h = j + 1;
        if (flag)
        {
            return;
        }
        if (true) goto _L5; else goto _L8
_L8:
        if (!f && l != -1 && l != 1)
        {
            throw new AssertionError();
        }
        node.h = 1 + Math.max(j, k);
        if (flag) goto _L5; else goto _L9
_L9:
        return;
        if (true) goto _L11; else goto _L10
_L10:
    }

    Node a(Object obj)
    {
        Node node = null;
        if (obj != null)
        {
            Node node1;
            try
            {
                node1 = a(obj, false);
            }
            catch (ClassCastException classcastexception)
            {
                return null;
            }
            node = node1;
        }
        return node;
    }

    Node a(Object obj, boolean flag)
    {
        Comparator comparator;
        Node node;
        comparator = a;
        node = b;
        if (node == null) goto _L2; else goto _L1
_L1:
        Node node2;
        Comparable comparable;
        int k;
        if (comparator == g)
        {
            comparable = (Comparable)obj;
        } else
        {
            comparable = null;
        }
_L11:
        if (comparable != null)
        {
            k = comparable.compareTo(node.f);
        } else
        {
            k = comparator.compare(obj, node.f);
        }
        if (k != 0) goto _L4; else goto _L3
_L3:
        node2 = node;
_L8:
        return node2;
_L4:
        Node node1;
        int j;
        Node node3;
        Node node5;
        if (k < 0)
        {
            node5 = node.b;
        } else
        {
            node5 = node.c;
        }
        if (node5 != null) goto _L6; else goto _L5
_L5:
        int l = k;
        node1 = node;
        j = l;
_L13:
        node2 = null;
        if (!flag) goto _L8; else goto _L7
_L7:
        node3 = e;
        if (node1 != null) goto _L10; else goto _L9
_L6:
        node = node5;
          goto _L11
_L9:
        Node node4;
        if (comparator == g && !(obj instanceof Comparable))
        {
            throw new ClassCastException((new StringBuilder()).append(obj.getClass().getName()).append(" is not Comparable").toString());
        }
        node4 = new Node(node1, obj, node3, node3.e);
        b = node4;
_L12:
        c = 1 + c;
        d = 1 + d;
        return node4;
_L10:
        node4 = new Node(node1, obj, node3, node3.e);
        if (j < 0)
        {
            node1.b = node4;
        } else
        {
            node1.c = node4;
        }
        b(node1, true);
        if (true) goto _L12; else goto _L2
_L2:
        node1 = node;
        j = 0;
          goto _L13
    }

    Node a(java.util.Map.Entry entry)
    {
        Node node = a(entry.getKey());
        boolean flag;
        if (node != null && a(node.g, entry.getValue()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return node;
        } else
        {
            return null;
        }
    }

    void a(Node node, boolean flag)
    {
        if (flag)
        {
            node.e.d = node.d;
            node.d.e = node.e;
        }
        Node node1 = node.b;
        Node node2 = node.c;
        Node node3 = node.a;
        if (node1 != null && node2 != null)
        {
            Node node4;
            Node node5;
            int j;
            Node node6;
            int k;
            if (node1.h > node2.h)
            {
                node4 = node1.b();
            } else
            {
                node4 = node2.a();
            }
            a(node4, false);
            node5 = node.b;
            if (node5 != null)
            {
                j = node5.h;
                node4.b = node5;
                node5.a = node4;
                node.b = null;
            } else
            {
                j = 0;
            }
            node6 = node.c;
            k = 0;
            if (node6 != null)
            {
                k = node6.h;
                node4.c = node6;
                node6.a = node4;
                node.c = null;
            }
            node4.h = 1 + Math.max(j, k);
            a(node, node4);
            return;
        }
        if (node1 != null)
        {
            a(node, node1);
            node.b = null;
        } else
        if (node2 != null)
        {
            a(node, node2);
            node.c = null;
        } else
        {
            a(node, ((Node) (null)));
        }
        b(node3, false);
        c = -1 + c;
        d = 1 + d;
    }

    Node b(Object obj)
    {
        Node node = a(obj);
        if (node != null)
        {
            a(node, true);
        }
        return node;
    }

    public void clear()
    {
        b = null;
        c = 0;
        d = 1 + d;
        Node node = e;
        node.e = node;
        node.d = node;
    }

    public boolean containsKey(Object obj)
    {
        return a(obj) != null;
    }

    public Set entrySet()
    {
        EntrySet entryset = h;
        if (entryset != null)
        {
            return entryset;
        } else
        {
            EntrySet entryset1 = new EntrySet();
            h = entryset1;
            return entryset1;
        }
    }

    public Object get(Object obj)
    {
        Node node = a(obj);
        if (node != null)
        {
            return node.g;
        } else
        {
            return null;
        }
    }

    public Set keySet()
    {
        KeySet keyset = i;
        if (keyset != null)
        {
            return keyset;
        } else
        {
            KeySet keyset1 = new KeySet();
            i = keyset1;
            return keyset1;
        }
    }

    public Object put(Object obj, Object obj1)
    {
        if (obj == null)
        {
            throw new NullPointerException("key == null");
        } else
        {
            Node node = a(obj, true);
            Object obj2 = node.g;
            node.g = obj1;
            return obj2;
        }
    }

    public Object remove(Object obj)
    {
        Node node = b(obj);
        if (node != null)
        {
            return node.g;
        } else
        {
            return null;
        }
    }

    public int size()
    {
        return c;
    }

    static 
    {
        boolean flag;
        if (!com/google/gson/internal/LinkedTreeMap.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f = flag;
    }
}
