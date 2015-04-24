// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import java.io.File;
import java.io.FilenameFilter;

public class PrefixFilenameFilter
    implements FilenameFilter
{

    private final String a;
    private final String b;

    public PrefixFilenameFilter(String s, String s1)
    {
        a = s;
        b = s1;
    }

    public boolean accept(File file, String s)
    {
        return s.startsWith(a) && (b == null || !s.equals(b));
    }
}
