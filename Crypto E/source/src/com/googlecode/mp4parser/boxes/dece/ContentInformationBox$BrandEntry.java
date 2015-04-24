// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.dece;


// Referenced classes of package com.googlecode.mp4parser.boxes.dece:
//            ContentInformationBox

public static class 
{

    String a;
    String b;

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
              = ()obj;
            if (a == null ? .a != null : !a.equals(.a))
            {
                return false;
            }
            if (b == null ? .b != null : !b.equals(.b))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i;
        int j;
        String s;
        int k;
        if (a != null)
        {
            i = a.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        s = b;
        k = 0;
        if (s != null)
        {
            k = b.hashCode();
        }
        return j + k;
    }
}
