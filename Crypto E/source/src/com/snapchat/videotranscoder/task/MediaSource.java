// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import android.util.Log;

public abstract class MediaSource
{

    private final String a;

    public MediaSource(String s)
    {
        Log.d("MediaSource", (new StringBuilder()).append("Media Path: ").append(s).toString());
        a = s;
    }

    public abstract long a();

    public final String b()
    {
        return a;
    }
}
