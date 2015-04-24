// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.util.debug.ReleaseManager;

// Referenced classes of package com.snapchat.android.util:
//            SystemProperties

public final class Property extends Enum
{

    public static final Property a;
    public static final Property b;
    public static final Property c;
    private static final Property f[];
    private final String d;
    private final String e;

    private Property(String s, int i, String s1)
    {
        this(s, i, s1, null);
    }

    private Property(String s, int i, String s1, String s2)
    {
        super(s, i);
        d = s1;
        e = s2;
    }

    public static Property valueOf(String s)
    {
        return (Property)Enum.valueOf(com/snapchat/android/util/Property, s);
    }

    public static Property[] values()
    {
        return (Property[])f.clone();
    }

    public String a()
    {
        if (ReleaseManager.f())
        {
            return SystemProperties.a(d, e);
        } else
        {
            return null;
        }
    }

    public boolean b()
    {
        return Boolean.valueOf(a()).booleanValue();
    }

    static 
    {
        a = new Property("ENABLE_GEOFILTER_LOGGING", 0, "debug.sc.geofilter_logging");
        b = new Property("ENABLE_USER_INIT_DELAY", 1, "debug.sc.user_init_delay");
        c = new Property("ENABLE_CURSOR_ADAPTER", 2, "debug.sc.cursor_adapter");
        Property aproperty[] = new Property[3];
        aproperty[0] = a;
        aproperty[1] = b;
        aproperty[2] = c;
        f = aproperty;
    }
}
