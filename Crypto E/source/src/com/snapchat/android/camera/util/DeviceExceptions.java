// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.util;

import android.os.Build;
import com.snapchat.android.util.Resolution;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class DeviceExceptions
{

    private static DeviceExceptions a;
    private static final Map b = new HashMap() {

            
            {
                put("SPH-D710VMUB", new _cls1(this));
            }
    };

    public DeviceExceptions()
    {
    }

    public static DeviceExceptions a()
    {
        com/snapchat/android/camera/util/DeviceExceptions;
        JVM INSTR monitorenter ;
        DeviceExceptions deviceexceptions;
        if (a == null)
        {
            a = new DeviceExceptions();
        }
        deviceexceptions = a;
        com/snapchat/android/camera/util/DeviceExceptions;
        JVM INSTR monitorexit ;
        return deviceexceptions;
        Exception exception;
        exception;
        throw exception;
    }

    public Collection b()
    {
        Collection collection = (Collection)b.get(Build.MODEL);
        if (collection != null)
        {
            return collection;
        } else
        {
            return Collections.emptySet();
        }
    }

    public int c()
    {
        return !Build.MODEL.equals("HTCEVOV4G") && !Build.MODEL.equals("ADR6400L") && !Build.MODEL.equals("HTC PH39100") && !Build.MODEL.equals("HTC Sensation 4G") && !Build.MODEL.equals("ADR6350") ? 0 : 180;
    }


    // Unreferenced inner class com/snapchat/android/camera/util/DeviceExceptions$1$1

/* anonymous class */
    class _cls1 extends ArrayList
    {

        final _cls1 a;

            
            {
                a = _pcls1;
                super();
                add(new Resolution(800, 450));
                add(new Resolution(352, 288));
            }
    }

}
