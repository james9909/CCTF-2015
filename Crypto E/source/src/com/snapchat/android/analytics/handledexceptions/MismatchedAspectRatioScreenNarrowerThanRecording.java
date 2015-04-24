// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.handledexceptions;


public class MismatchedAspectRatioScreenNarrowerThanRecording extends Exception
{

    public MismatchedAspectRatioScreenNarrowerThanRecording(double d)
    {
        super((new StringBuilder()).append("Sender was unable to see ").append(Double.toString(d)).append("% of video").toString());
    }
}
