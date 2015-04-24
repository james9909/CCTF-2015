// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller.countdown;

import com.snapchat.android.model.ReceivedSnap;

public interface SnapCountdownListener
{

    public abstract void a(ReceivedSnap receivedsnap);

    public abstract void a(ReceivedSnap receivedsnap, long l);

    public abstract void b(ReceivedSnap receivedsnap);

    public abstract void c(ReceivedSnap receivedsnap);
}
