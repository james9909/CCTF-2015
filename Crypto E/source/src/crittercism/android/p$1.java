// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.Comparator;

// Referenced classes of package crittercism.android:
//            p

final class a
    implements Comparator
{

    final p a;

    public final volatile int compare(Object obj, Object obj1)
    {
        String s = (String)obj;
        String s1 = (String)obj1;
        if (s == s1)
        {
            return 0;
        }
        if (s == null)
        {
            return -1;
        }
        if (s1 == null)
        {
            return 1;
        } else
        {
            return String.CASE_INSENSITIVE_ORDER.compare(s, s1);
        }
    }

    (p p1)
    {
        a = p1;
        super();
    }
}
