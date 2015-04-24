// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.h264.model;


public class ScalingList
{

    public int a[];
    public boolean b;

    public ScalingList()
    {
    }

    public String toString()
    {
        return (new StringBuilder("ScalingList{scalingList=")).append(a).append(", useDefaultScalingMatrixFlag=").append(b).append('}').toString();
    }
}
