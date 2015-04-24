// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.layertype;


public final class LayerType extends Enum
{

    public static final LayerType a;
    public static final LayerType b;
    public static final LayerType c;
    private static final LayerType e[];
    private int d;

    private LayerType(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static LayerType valueOf(String s)
    {
        return (LayerType)Enum.valueOf(com/snapchat/android/ui/layertype/LayerType, s);
    }

    public static LayerType[] values()
    {
        return (LayerType[])e.clone();
    }

    public int a()
    {
        return d;
    }

    static 
    {
        a = new LayerType("NONE", 0, 0);
        b = new LayerType("HARDWARE", 1, 2);
        c = new LayerType("SOFTWARE", 2, 1);
        LayerType alayertype[] = new LayerType[3];
        alayertype[0] = a;
        alayertype[1] = b;
        alayertype[2] = c;
        e = alayertype;
    }
}
