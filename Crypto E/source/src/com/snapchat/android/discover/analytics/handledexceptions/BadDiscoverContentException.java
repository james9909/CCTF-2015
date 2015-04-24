// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.analytics.handledexceptions;


public class BadDiscoverContentException extends RuntimeException
{

    public final IllegalArgumentException a;
    public final String b;

    public BadDiscoverContentException(String s, String s1)
    {
        a = new IllegalArgumentException(s);
        b = s1;
    }
}
