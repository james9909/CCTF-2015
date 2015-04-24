// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.text.TextUtils;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;

public class StoryUtils
{

    public StoryUtils()
    {
    }

    public static void a(User user, StorySnap storysnap, boolean flag)
    {
        if (user != null && storysnap != null)
        {
            StoryCollection storycollection;
            if (TextUtils.equals(UserPrefs.k(), storysnap.aB()))
            {
                storycollection = StoryLibrary.a().b("my_story_ads79sdf");
            } else
            {
                storycollection = StoryLibrary.a().c(storysnap.aB());
            }
            if (storycollection != null)
            {
                StorySnap storysnap1 = storycollection.b(storysnap.d());
                if (storysnap1 != null)
                {
                    storysnap1.d(0);
                    storysnap1.J();
                    storycollection.b(storysnap1);
                    storysnap1.e(flag);
                    return;
                }
            }
        }
    }
}
