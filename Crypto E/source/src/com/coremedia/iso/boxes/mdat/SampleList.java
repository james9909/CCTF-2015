// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.mdat;

import com.googlecode.mp4parser.authoring.Sample;
import java.util.AbstractList;
import java.util.List;

public class SampleList extends AbstractList
{

    List a;

    public Sample a(int i)
    {
        return (Sample)a.get(i);
    }

    public Object get(int i)
    {
        return a(i);
    }

    public int size()
    {
        return a.size();
    }
}
