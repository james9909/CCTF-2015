// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.content.Context;
import android.graphics.Bitmap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.util.cache.SaveImageToGalleryTask;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter

class init> extends SaveImageToGalleryTask
{

    final StorySnapLogbook a;
    final StoriesAdapter b;

    protected void a()
    {
        super.a();
        a.a(com.snapchat.android.model.ActionState.SAVED);
    }

    protected void b()
    {
        super.b();
        a.a(com.snapchat.android.model.ActionState.READY);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        a.a(com.snapchat.android.model.ActionState.SAVING);
    }

    (StoriesAdapter storiesadapter, Context context, Bitmap bitmap, StorySnapLogbook storysnaplogbook)
    {
        b = storiesadapter;
        a = storysnaplogbook;
        super(context, bitmap);
    }
}