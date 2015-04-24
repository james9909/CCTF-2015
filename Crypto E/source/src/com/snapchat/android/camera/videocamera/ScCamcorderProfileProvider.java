// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.videocamera;

import android.media.CamcorderProfile;

// Referenced classes of package com.snapchat.android.camera.videocamera:
//            CamcorderProfileProvider

public class ScCamcorderProfileProvider
    implements CamcorderProfileProvider
{

    public ScCamcorderProfileProvider()
    {
    }

    public CamcorderProfile a(int i, int j)
    {
        if (CamcorderProfile.hasProfile(i, j))
        {
            return CamcorderProfile.get(i, j);
        } else
        {
            return null;
        }
    }
}
