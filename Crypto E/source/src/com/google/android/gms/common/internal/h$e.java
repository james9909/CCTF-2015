// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;

// Referenced classes of package com.google.android.gms.common.internal:
//            s, h

public static final class Ui extends Ui
{

    private h Ui;

    public void b(int i, IBinder ibinder, Bundle bundle)
    {
        s.b("onPostInitComplete can be called only once per call to getServiceFromBroker", Ui);
        Ui.a(i, ibinder, bundle);
        Ui = null;
    }

    public (h h1)
    {
        Ui = h1;
    }
}
