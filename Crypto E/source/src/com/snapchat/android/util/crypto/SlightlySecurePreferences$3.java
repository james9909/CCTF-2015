// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import java.util.HashMap;

// Referenced classes of package com.snapchat.android.util.crypto:
//            SlightlySecurePreferences

class a
    implements Runnable
{

    final SlightlySecurePreferences a;

    public void run()
    {
        int i;
        synchronized (SlightlySecurePreferences.a(a))
        {
            i = SlightlySecurePreferences.a(a).size();
        }
        if (i > 0)
        {
            if (!a.c())
            {
                synchronized (SlightlySecurePreferences.a(a))
                {
                    SlightlySecurePreferences.a(a).clear();
                }
                a.f();
            }
            return;
        } else
        {
            a.f();
            return;
        }
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        exception1;
        hashmap1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    (SlightlySecurePreferences slightlysecurepreferences)
    {
        a = slightlysecurepreferences;
        super();
    }
}
