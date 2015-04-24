// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.snapchat.android.model:
//            StoryGroup

public class MyStoryGroup extends StoryGroup
{

    public static final String MY_STORY_ID = "my_story_ads79sdf";
    private static MyStoryGroup sInstance;

    private MyStoryGroup()
    {
        mStoryId = "my_story_ads79sdf";
        mDisplayName = SnapchatApplication.e().getResources().getString(0x7f0c012a);
        mStorySnapLogbooks = new ArrayList();
    }

    public static MyStoryGroup a()
    {
        com/snapchat/android/model/MyStoryGroup;
        JVM INSTR monitorenter ;
        MyStoryGroup mystorygroup;
        if (sInstance == null)
        {
            sInstance = new MyStoryGroup();
        }
        mystorygroup = sInstance;
        com/snapchat/android/model/MyStoryGroup;
        JVM INSTR monitorexit ;
        return mystorygroup;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b()
    {
        com/snapchat/android/model/MyStoryGroup;
        JVM INSTR monitorenter ;
        sInstance = null;
        com/snapchat/android/model/MyStoryGroup;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(List list)
    {
        mStorySnapLogbooks.clear();
        mStorySnapLogbooks.addAll(list);
    }
}
