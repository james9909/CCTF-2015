// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.h264.model;


public class ChromaFormat
{

    public static ChromaFormat a = new ChromaFormat(0, 0, 0);
    public static ChromaFormat b = new ChromaFormat(1, 2, 2);
    public static ChromaFormat c = new ChromaFormat(2, 2, 1);
    public static ChromaFormat d = new ChromaFormat(3, 1, 1);
    private int e;
    private int f;
    private int g;

    public ChromaFormat(int i, int j, int k)
    {
        e = i;
        f = j;
        g = k;
    }

    public String toString()
    {
        return (new StringBuilder("ChromaFormat{\nid=")).append(e).append(",\n").append(" subWidth=").append(f).append(",\n").append(" subHeight=").append(g).append('}').toString();
    }

}
