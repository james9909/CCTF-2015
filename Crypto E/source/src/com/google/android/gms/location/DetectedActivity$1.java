// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import java.util.Comparator;

// Referenced classes of package com.google.android.gms.location:
//            DetectedActivity

static final class 
    implements Comparator
{

    public int a(DetectedActivity detectedactivity, DetectedActivity detectedactivity1)
    {
        int i = Integer.valueOf(detectedactivity1.getConfidence()).compareTo(Integer.valueOf(detectedactivity.getConfidence()));
        if (i == 0)
        {
            i = Integer.valueOf(detectedactivity.getType()).compareTo(Integer.valueOf(detectedactivity1.getType()));
        }
        return i;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((DetectedActivity)obj, (DetectedActivity)obj1);
    }

    ()
    {
    }
}