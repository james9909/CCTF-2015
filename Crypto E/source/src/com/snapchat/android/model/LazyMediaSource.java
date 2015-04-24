// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.Context;
import com.snapchat.videotranscoder.task.MediaSource;

public abstract class LazyMediaSource
{

    public LazyMediaSource()
    {
    }

    public abstract MediaSource a(Context context);

    public abstract void a();
}
