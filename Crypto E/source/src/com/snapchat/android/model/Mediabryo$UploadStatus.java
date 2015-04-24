// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            Mediabryo

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FAILED;
    public static final .VALUES NOT_UPLOADED;
    public static final .VALUES UPLOADED;
    public static final .VALUES UPLOADING;
    public static final .VALUES WILL_UPLOAD_AFTER_SAVE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/Mediabryo$UploadStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NOT_UPLOADED = new <init>("NOT_UPLOADED", 0);
        UPLOADING = new <init>("UPLOADING", 1);
        WILL_UPLOAD_AFTER_SAVE = new <init>("WILL_UPLOAD_AFTER_SAVE", 2);
        UPLOADED = new <init>("UPLOADED", 3);
        FAILED = new <init>("FAILED", 4);
        s_3B_.clone aclone[] = new <init>[5];
        aclone[0] = NOT_UPLOADED;
        aclone[1] = UPLOADING;
        aclone[2] = WILL_UPLOAD_AFTER_SAVE;
        aclone[3] = UPLOADED;
        aclone[4] = FAILED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
