// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.view.View;

// Referenced classes of package com.google.android.gms.internal:
//            an

class nU
    implements Runnable
{

    final View nU;
    final an nV;

    public void run()
    {
        nV.g(nU);
    }

    (an an1, View view)
    {
        nV = an1;
        nU = view;
        super();
    }
}
