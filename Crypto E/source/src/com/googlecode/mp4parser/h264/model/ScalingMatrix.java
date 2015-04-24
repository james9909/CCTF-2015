// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.h264.model;

import java.util.Arrays;

// Referenced classes of package com.googlecode.mp4parser.h264.model:
//            ScalingList

public class ScalingMatrix
{

    public ScalingList a[];
    public ScalingList b[];

    public ScalingMatrix()
    {
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("ScalingMatrix{ScalingList4x4=");
        java.util.List list;
        StringBuilder stringbuilder1;
        ScalingList ascalinglist[];
        java.util.List list1;
        if (a == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(a);
        }
        stringbuilder1 = stringbuilder.append(list).append("\n").append(", ScalingList8x8=");
        ascalinglist = b;
        list1 = null;
        if (ascalinglist != null)
        {
            list1 = Arrays.asList(b);
        }
        return stringbuilder1.append(list1).append("\n").append('}').toString();
    }
}
