// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import com.crittercism.app.CritterRateMyAppButtons;

// Referenced classes of package crittercism.android:
//            ay

public static final class r
{

    public static final int a[];

    static 
    {
        a = new int[CritterRateMyAppButtons.values().length];
        try
        {
            a[CritterRateMyAppButtons.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[CritterRateMyAppButtons.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[CritterRateMyAppButtons.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2)
        {
            return;
        }
    }
}
