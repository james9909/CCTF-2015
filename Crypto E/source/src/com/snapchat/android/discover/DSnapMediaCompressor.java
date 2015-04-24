// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.GsonWrapper;

public class DSnapMediaCompressor
{

    private static DSnapMediaCompressor b;
    protected GsonWrapper a;

    public DSnapMediaCompressor()
    {
        SnapchatApplication.e().a(this);
    }

    public static DSnapMediaCompressor a()
    {
        if (b == null)
        {
            b = new DSnapMediaCompressor();
        }
        return b;
    }
}
