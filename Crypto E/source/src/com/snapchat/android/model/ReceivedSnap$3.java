// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            ReceivedSnap

static class Status
{

    static final int $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[];

    static 
    {
        $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus = new int[Status.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Status.LOADING.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Status.UNVIEWED_AND_LOADED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Status.UNVIEWED_AND_UNLOADED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus[Status.UNVIEWED_AND_LOAD_STATE_TBD.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3)
        {
            return;
        }
    }
}
