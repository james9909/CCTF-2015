// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;


// Referenced classes of package com.googlecode.mp4parser.boxes.piff:
//            TfrfBox

public class c
{

    long a;
    long b;
    final TfrfBox c;

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Entry");
        stringbuilder.append("{fragmentAbsoluteTime=").append(a);
        stringbuilder.append(", fragmentAbsoluteDuration=").append(b);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    public (TfrfBox tfrfbox)
    {
        c = tfrfbox;
        super();
    }
}
