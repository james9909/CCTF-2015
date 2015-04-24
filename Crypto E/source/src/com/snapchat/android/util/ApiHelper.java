// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.os.Build;
import com.addlive.platform.ADL;
import com.addlive.platform.DeviceSupportLevel;

public class ApiHelper
{

    public static final boolean a;
    public static final boolean b;
    public static final boolean c;
    public static final boolean d;
    public static final boolean e;
    public static final boolean f;

    private ApiHelper()
    {
    }

    public static boolean a()
    {
        boolean flag;
        String s;
        byte byte0;
        flag = true;
        s = Build.DEVICE;
        byte0 = -1;
        s.hashCode();
        JVM INSTR lookupswitch 2: default 40
    //                   -1207363117: 82
    //                   3431: 68;
           goto _L1 _L2 _L3
_L1:
        switch (byte0)
        {
        default:
            flag = false;
            // fall through

        case 0: // '\0'
        case 1: // '\001'
            return flag;
        }
_L3:
        if (s.equals("m4"))
        {
            byte0 = 0;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (s.equals("htc_m8"))
        {
            byte0 = flag;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    static 
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        a = flag1;
        if (ADL.assesDeviceCompatibility() != DeviceSupportLevel.NOT_FUNCTIONAL)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        b = flag2;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        c = flag3;
        if (android.os.Build.VERSION.SDK_INT >= 15)
        {
            flag4 = flag;
        } else
        {
            flag4 = false;
        }
        d = flag4;
        if (android.os.Build.VERSION.SDK_INT < 21)
        {
            flag = false;
        }
        e = flag;
        f = Build.MODEL.equals("Nexus 4");
    }
}
