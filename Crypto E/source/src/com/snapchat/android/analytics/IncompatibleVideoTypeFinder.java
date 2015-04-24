// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import android.media.CamcorderProfile;
import java.util.ArrayList;

public class IncompatibleVideoTypeFinder
{

    public IncompatibleVideoTypeFinder()
    {
    }

    public ArrayList a(CamcorderProfile camcorderprofile)
    {
        ArrayList arraylist = new ArrayList();
        if (camcorderprofile.audioCodec == 1)
        {
            arraylist.add(com.snapchat.android.analytics.handledexceptions.IncompatibleVideoRecordedException.IncompatibleVideoType.a);
        }
        if (camcorderprofile.videoCodec == 1)
        {
            arraylist.add(com.snapchat.android.analytics.handledexceptions.IncompatibleVideoRecordedException.IncompatibleVideoType.b);
        }
        return arraylist;
    }
}
