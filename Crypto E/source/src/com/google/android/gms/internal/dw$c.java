// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.view.ViewGroup;

// Referenced classes of package com.google.android.gms.internal:
//            hk, dw

static final class <init>
{

    public final int index;
    public final android.view.roup.LayoutParams sM;
    public final ViewGroup sN;

    public (hk hk1)
    {
        sM = hk1.getLayoutParams();
        android.view.ViewParent viewparent = hk1.getParent();
        if (viewparent instanceof ViewGroup)
        {
            sN = (ViewGroup)viewparent;
            index = sN.indexOfChild(hk1.getWebView());
            sN.removeView(hk1.getWebView());
            hk1.z(true);
            return;
        } else
        {
            throw new <init>("Could not get the parent of the WebView for an overlay.");
        }
    }
}
