// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.yorick;

import android.text.TextUtils;
import com.crittercism.app.Crittercism;

// Referenced classes of package com.snapchat.yorick:
//            CrittercismReporter, ParsedTrace, Timber

class a
    implements Runnable
{

    final ParsedTrace a;
    final CrittercismReporter b;

    public void run()
    {
        String s = a.b;
        if (!TextUtils.isEmpty(s))
        {
            Crittercism.a((new >(s)).>());
            return;
        } else
        {
            Timber.a("The parsed trace contains no stack traces.", new Object[0]);
            return;
        }
    }

    (CrittercismReporter crittercismreporter, ParsedTrace parsedtrace)
    {
        b = crittercismreporter;
        a = parsedtrace;
        super();
    }
}
