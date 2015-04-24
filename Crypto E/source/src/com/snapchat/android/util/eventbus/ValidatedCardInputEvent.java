// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class ValidatedCardInputEvent
{

    public final boolean a;
    public final com.snapchat.android.camera.cameradecor.CardLinkCameraDecor.CardInputError b;

    public ValidatedCardInputEvent(boolean flag, com.snapchat.android.camera.cameradecor.CardLinkCameraDecor.CardInputError cardinputerror)
    {
        a = flag;
        b = cardinputerror;
    }

    public com.snapchat.android.camera.cameradecor.CardLinkCameraDecor.CardInputError a()
    {
        return b;
    }
}
