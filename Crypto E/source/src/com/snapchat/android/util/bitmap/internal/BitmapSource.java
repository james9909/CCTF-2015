// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap.internal;

import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;

public interface BitmapSource
{

    public abstract Bitmap a(android.graphics.BitmapFactory.Options options);

    public abstract void a(ContentResolver contentresolver, Resources resources);
}
