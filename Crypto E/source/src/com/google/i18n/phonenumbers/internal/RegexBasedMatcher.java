// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers.internal;

import com.google.i18n.phonenumbers.RegexCache;

// Referenced classes of package com.google.i18n.phonenumbers.internal:
//            MatcherApi

public final class RegexBasedMatcher
    implements MatcherApi
{

    private final RegexCache a = new RegexCache(100);

    private RegexBasedMatcher()
    {
    }

    public static MatcherApi a()
    {
        return new RegexBasedMatcher();
    }
}
