// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding;

import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.camera.transcoding:
//            TranscodingPreferencesWrapper

public class SaveStoryToGalleryPreferenceWrapper
{

    private static final SaveStoryToGalleryPreferenceWrapper a = new SaveStoryToGalleryPreferenceWrapper();
    private final TranscodingPreferencesWrapper b;

    private SaveStoryToGalleryPreferenceWrapper()
    {
        this(TranscodingPreferencesWrapper.a());
    }

    protected SaveStoryToGalleryPreferenceWrapper(TranscodingPreferencesWrapper transcodingpreferenceswrapper)
    {
        b = transcodingpreferenceswrapper;
    }

    public static SaveStoryToGalleryPreferenceWrapper a()
    {
        return a;
    }

    public boolean b()
    {
        boolean flag = UserPrefs.aq();
        boolean flag1;
        if (b.b() == TranscodingPreferencesWrapper.TranscodingEnabled.e)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag && flag1;
    }

}
