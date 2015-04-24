// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.regex.Pattern;

// Referenced classes of package com.snapchat.android.util:
//            ApacheStringUtils

static final class I
{

    private static final Pattern a = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");

    static Pattern a()
    {
        return a;
    }


    private I()
    {
    }
}
