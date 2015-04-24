// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.common.internal:
//            s, r

public static final class <init>
{

    private final List UG;
    private final Object UH;

    public <init> a(String s1, Object obj)
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

    private (Object obj)
    {
        UH = s.l(obj);
        UG = new ArrayList();
    }

    UG(Object obj, UG ug)
    {
        this(obj);
    }
}
