// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            SnapWomb

static class ploadStatus
{

    static final int $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[];
    static final int $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus[];
    static final int $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus[];

    static 
    {
        $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus = new int[ostStatus.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[ostStatus.POSTED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[ostStatus.FAILED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[ostStatus.POSTING.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[ostStatus.WILL_POST_AFTER_SAVE.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus[ostStatus.POSTING_ON_UPLOAD.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus = new int[endStatus.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus[endStatus.SENT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus[endStatus.FAILED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus[endStatus.SENDING.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus[endStatus.SENDING_ON_UPLOAD.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus = new int[ploadStatus.values().length];
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus[ploadStatus.UPLOADED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus[ploadStatus.UPLOADING.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus[ploadStatus.WILL_UPLOAD_AFTER_SAVE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            $SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus[ploadStatus.FAILED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror12)
        {
            return;
        }
    }
}
