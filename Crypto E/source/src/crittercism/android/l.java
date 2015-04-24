// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.lang.reflect.Constructor;

public final class l
{

    public static Constructor a(String s, String as[])
    {
        Constructor aconstructor[];
        int i;
        aconstructor = Class.forName(s).getDeclaredConstructors();
        i = 0;
_L7:
        if (i >= aconstructor.length) goto _L2; else goto _L1
_L1:
        Class aclass[] = aconstructor[i].getParameterTypes();
        if (aclass.length == as.length) goto _L4; else goto _L3
_L3:
        boolean flag = false;
_L6:
        if (flag)
        {
            return aconstructor[i];
        }
        continue; /* Loop/switch isn't completed */
_L4:
        int j = 0;
        do
        {
            if (j >= aclass.length)
            {
                break;
            }
            if (!aclass[j].getName().equals(as[j]))
            {
                flag = false;
                continue; /* Loop/switch isn't completed */
            }
            j++;
        } while (true);
        flag = true;
        if (true) goto _L6; else goto _L5
_L5:
        i++;
          goto _L7
_L2:
        return null;
    }
}
