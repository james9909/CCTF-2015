// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.h264.model;


public class AspectRatio
{

    public static final AspectRatio a = new AspectRatio(255);
    private int b;

    private AspectRatio(int i)
    {
        b = i;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("AspectRatio{");
        stringbuilder.append("value=").append(b);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
