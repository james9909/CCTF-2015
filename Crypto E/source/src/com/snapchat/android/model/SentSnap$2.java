// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            SentSnap

static class SnapStatus
{

    static final int $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[];

    static 
    {
        $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus = new int[SnapStatus.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.DELIVERED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.SENT.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.SENT_AND_OPENED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.SENT_AND_REPLAYED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.SENT_AND_REPLAYED_AND_SCREENSHOTTED.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.SENT_AND_SCREENSHOTTED.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.FAILED.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.FAILED_AND_NON_RECOVERABLE.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.PENDING.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[SnapStatus.SENDING.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror10)
        {
            return;
        }
    }
}
