// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.s;

public class mf
{

    public static Scope[] e(String as[])
    {
        s.b(as, "scopeStrings can't be null.");
        Scope ascope[] = new Scope[as.length];
        for (int i = 0; i < as.length; i++)
        {
            ascope[i] = new Scope(as[i]);
        }

        return ascope;
    }
}
