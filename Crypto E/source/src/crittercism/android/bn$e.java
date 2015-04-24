// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

// Referenced classes of package crittercism.android:
//            bm, bn

public static final class a
    implements bm
{

    private Double a;

    public final String a()
    {
        return "battery_level";
    }

    public final volatile Object b()
    {
        return a;
    }

    public ter()
    {
        a = null;
        bn.b();
        double d = 1.0D;
        Intent intent = bn.b().getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int i = intent.getIntExtra("level", -1);
        double d1 = intent.getIntExtra("scale", -1);
        if (i >= 0 && d1 > 0.0D)
        {
            d = (double)i / d1;
        }
        a = Double.valueOf(d);
    }
}
