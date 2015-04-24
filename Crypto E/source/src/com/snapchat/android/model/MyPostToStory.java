// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;

// Referenced classes of package com.snapchat.android.model:
//            PostToStory

public class MyPostToStory extends PostToStory
{

    private static MyPostToStory sInstance;

    private MyPostToStory()
    {
        super("my_story_ads79sdf", SnapchatApplication.e().getResources().getString(0x7f0c012a), null, null);
    }

    public static MyPostToStory a()
    {
        com/snapchat/android/model/MyPostToStory;
        JVM INSTR monitorenter ;
        MyPostToStory myposttostory;
        if (sInstance == null)
        {
            sInstance = new MyPostToStory();
        }
        myposttostory = sInstance;
        com/snapchat/android/model/MyPostToStory;
        JVM INSTR monitorexit ;
        return myposttostory;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean b()
    {
        return false;
    }
}
