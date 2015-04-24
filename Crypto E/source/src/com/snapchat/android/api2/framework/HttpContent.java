// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.RequestBody;

public interface HttpContent
{

    public abstract Headers a(String s);

    public abstract RequestBody a();
}
