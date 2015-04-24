// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.util.network;

import com.snapchat.android.Timber;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.discover.util.network:
//            DiscoverEndpointManager

public static final class  extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    private static final f f[];

    public static  a(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
          = valueOf(s.toUpperCase(Locale.ENGLISH));
        return ;
        Exception exception;
        exception;
        Timber.e("DiscoverEndpointManager", "Unknown compatibility value %s", new Object[] {
            s
        });
        return b;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility, s);
    }

    public static b[] values()
    {
        return (b[])f.clone();
    }

    static 
    {
        a = new <init>("SUPPORTED", 0);
        b = new <init>("NOT_SUPPORTED", 1);
        c = new <init>("REGION_NOT_SUPPORTED", 2);
        d = new <init>("DEVICE_NOT_SUPPORTED", 3);
        e = new <init>("UNKNOWN", 4);
        y_3B_.clone aclone[] = new <init>[5];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        f = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
