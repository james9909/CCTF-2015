// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            im

static class EI
    implements com.google.android.gms.appindexing.nkingApi.TranslatedUriResults, Result
{

    private final Status EI;
    private final List EL;

    public com.google.android.gms.appindexing.nkingApi.TranslatedUriResult get(int i)
    {
        return (com.google.android.gms.appindexing.nkingApi.TranslatedUriResult)EL.get(i);
    }

    public List getAsList()
    {
        return EL;
    }

    public int getSize()
    {
        return EL.size();
    }

    public Status getStatus()
    {
        return EI;
    }

    public tus(Status status, List list)
    {
        EL = list;
        EI = status;
    }
}
