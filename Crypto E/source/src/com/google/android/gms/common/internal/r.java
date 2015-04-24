// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.google.android.gms.common.internal:
//            s

public final class r
{
    public static final class a
    {

        private final List UG;
        private final Object UH;

        public a a(String s1, Object obj)
        {
            UG.add((new StringBuilder()).append((String)s.l(s1)).append("=").append(String.valueOf(obj)).toString());
            return this;
        }

        public String toString()
        {
            StringBuilder stringbuilder = (new StringBuilder(100)).append(UH.getClass().getSimpleName()).append('{');
            int i = UG.size();
            for (int j = 0; j < i; j++)
            {
                stringbuilder.append((String)UG.get(j));
                if (j < i - 1)
                {
                    stringbuilder.append(", ");
                }
            }

            return stringbuilder.append('}').toString();
        }

        private a(Object obj)
        {
            UH = s.l(obj);
            UG = new ArrayList();
        }

    }


    public static boolean equal(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

    public static transient int hashCode(Object aobj[])
    {
        return Arrays.hashCode(aobj);
    }

    public static a k(Object obj)
    {
        return new a(obj);
    }
}
