// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding;

import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.camera.transcoding:
//            TranscodingPreferencesWrapper

public class VideoFilterPreferenceWrapper
{

    private static final VideoFilterPreferenceWrapper b = new VideoFilterPreferenceWrapper();
    TranscodingPreferencesWrapper a;

    private VideoFilterPreferenceWrapper()
    {
        this(TranscodingPreferencesWrapper.a());
    }

    protected VideoFilterPreferenceWrapper(TranscodingPreferencesWrapper transcodingpreferenceswrapper)
    {
        a = transcodingpreferenceswrapper;
    }

    public static VideoFilterPreferenceWrapper a()
    {
        return b;
    }

    public boolean b()
    {
        boolean flag = UserPrefs.aR();
        boolean flag1;
        if (a.b() == TranscodingPreferencesWrapper.TranscodingEnabled.e)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag && flag1;
    }

}
