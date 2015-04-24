// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.handledexceptions;


public class TranscodingFailedException extends Exception
{

    public TranscodingFailedException(com.snapchat.videotranscoder.task.Task.Status status)
    {
        super(status.name());
    }
}
