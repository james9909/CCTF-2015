// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.util.network;

import com.snapchat.android.Timber;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.debug.DeveloperSettings;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

public class DiscoverEndpointManager
{
    public static final class Compatibility extends Enum
    {

        public static final Compatibility a;
        public static final Compatibility b;
        public static final Compatibility c;
        public static final Compatibility d;
        public static final Compatibility e;
        private static final Compatibility f[];

        public static Compatibility a(String s)
        {
            if (s == null)
            {
                break MISSING_BLOCK_LABEL_33;
            }
            Compatibility compatibility = valueOf(s.toUpperCase(Locale.ENGLISH));
            return compatibility;
            Exception exception;
            exception;
            Timber.e("DiscoverEndpointManager", "Unknown compatibility value %s", new Object[] {
                s
            });
            return b;
        }

        public static Compatibility valueOf(String s)
        {
            return (Compatibility)Enum.valueOf(com/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility, s);
        }

        public static Compatibility[] values()
        {
            return (Compatibility[])f.clone();
        }

        static 
        {
            a = new Compatibility("SUPPORTED", 0);
            b = new Compatibility("NOT_SUPPORTED", 1);
            c = new Compatibility("REGION_NOT_SUPPORTED", 2);
            d = new Compatibility("DEVICE_NOT_SUPPORTED", 3);
            e = new Compatibility("UNKNOWN", 4);
            Compatibility acompatibility[] = new Compatibility[5];
            acompatibility[0] = a;
            acompatibility[1] = b;
            acompatibility[2] = c;
            acompatibility[3] = d;
            acompatibility[4] = e;
            f = acompatibility;
        }

        private Compatibility(String s, int j)
        {
            super(s, j);
        }
    }

    public static interface ConfigurationListener
    {

        public abstract void c();
    }


    private static DiscoverEndpointManager a = new DiscoverEndpointManager();
    private final UserPrefs b;
    private final DeveloperSettings c;
    private final Set d;
    private Compatibility e;
    private String f;
    private String g;
    private String h;
    private String i;

    private DiscoverEndpointManager()
    {
        this(new UserPrefs(), DeveloperSettings.a());
    }

    protected DiscoverEndpointManager(UserPrefs userprefs, DeveloperSettings developersettings)
    {
        d = Collections.synchronizedSet(new HashSet());
        e = Compatibility.e;
        b = userprefs;
        c = developersettings;
    }

    public static DiscoverEndpointManager a()
    {
        return a;
    }

    public void a(ConfigurationListener configurationlistener)
    {
        if (configurationlistener != null)
        {
            d.add(configurationlistener);
        }
    }

    public void a(String s, String s1, String s2, String s3, String s4)
    {
        e = Compatibility.a(s);
        h = s3;
        i = s4;
        f = s1;
        g = s2;
        Set set = d;
        set;
        JVM INSTR monitorenter ;
        for (Iterator iterator = d.iterator(); iterator.hasNext(); ((ConfigurationListener)iterator.next()).c()) { }
        break MISSING_BLOCK_LABEL_86;
        Exception exception;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
        set;
        JVM INSTR monitorexit ;
        b.o(s3);
        b.p(s4);
        return;
    }

    public String b()
    {
        String s = c.b();
        if (s != null)
        {
            return s;
        } else
        {
            return f;
        }
    }

    public void b(ConfigurationListener configurationlistener)
    {
        d.remove(configurationlistener);
    }

    public String c()
    {
        return g;
    }

    public Compatibility d()
    {
        return e;
    }

    public String e()
    {
        if (h == null)
        {
            return b.as();
        } else
        {
            return h;
        }
    }

    public String f()
    {
        if (i == null)
        {
            return b.at();
        } else
        {
            return i;
        }
    }

}
