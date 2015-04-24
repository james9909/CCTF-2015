// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

// Referenced classes of package org.apache.commons.lang3:
//            LocaleUtils

static class 
{

    private static final List AVAILABLE_LOCALE_LIST;
    private static final Set AVAILABLE_LOCALE_SET;

    static 
    {
        ArrayList arraylist = new ArrayList(Arrays.asList(Locale.getAvailableLocales()));
        AVAILABLE_LOCALE_LIST = Collections.unmodifiableList(arraylist);
        AVAILABLE_LOCALE_SET = Collections.unmodifiableSet(new HashSet(arraylist));
    }



    ()
    {
    }
}
