// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.view.View;

// Referenced classes of package com.google.android.gms.internal:
//            u, v

class lA
    implements android.view..OnClickListener
{

    final v lA;
    final u lz;

    public void onClick(View view)
    {
        lA.recordClick();
    }

    (u u1, v v1)
    {
        lz = u1;
        lA = v1;
        super();
    }
}
