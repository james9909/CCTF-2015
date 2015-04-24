// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;


// Referenced classes of package android.support.v7.widget:
//            AdapterHelper

static class c
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
            a a1 = (a)obj;
            if (a != a1.a)
            {
                return false;
            }
            if (a != 3 || Math.abs(c - b) != 1 || c != a1.b || b != a1.c)
            {
                if (c != a1.c)
                {
                    return false;
                }
                if (b != a1.b)
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

    (int i, int j, int k)
    {
        a = i;
        b = j;
        c = k;
    }
}
