// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview;

import com.snapchat.android.ui.layertype.LayerType;

public class LayerTypeFactory
{

    public LayerTypeFactory()
    {
    }

    public static LayerType a(boolean flag)
    {
        if (flag)
        {
            return LayerType.c;
        } else
        {
            return LayerType.b;
        }
    }
}
