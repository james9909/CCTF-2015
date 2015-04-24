// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.view.OrientationEventListener;

// Referenced classes of package com.snapchat.android.util:
//            ScreenRotationObserver

class a extends OrientationEventListener
{

    final ScreenRotationObserver a;

    public void onOrientationChanged(int i)
    {
        a.a(i);
    }

    (ScreenRotationObserver screenrotationobserver, Context context, int i)
    {
        a = screenrotationobserver;
        super(context, i);
    }
}
