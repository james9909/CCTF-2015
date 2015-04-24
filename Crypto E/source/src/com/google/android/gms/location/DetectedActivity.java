// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Comparator;

// Referenced classes of package com.google.android.gms.location:
//            DetectedActivityCreator

public class DetectedActivity
    implements SafeParcelable
{

    public static final DetectedActivityCreator CREATOR = new DetectedActivityCreator();
    public static final int IN_VEHICLE = 0;
    public static final int ON_BICYCLE = 1;
    public static final int ON_FOOT = 2;
    public static final int RUNNING = 8;
    public static final int STILL = 3;
    public static final int TILTING = 5;
    public static final int UNKNOWN = 4;
    public static final int WALKING = 7;
    public static final Comparator anp = new Comparator() {

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

    };
    private final int DN;
    int anq;
    int anr;

    public DetectedActivity(int i, int j)
    {
        DN = 1;
        anq = i;
        anr = j;
    }

    public DetectedActivity(int i, int j, int k)
    {
        DN = i;
        anq = j;
        anr = k;
    }

    private int fC(int i)
    {
        if (i > 9)
        {
            i = 4;
        }
        return i;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getConfidence()
    {
        return anr;
    }

    public int getType()
    {
        return fC(anq);
    }

    public int getVersionCode()
    {
        return DN;
    }

    public String toString()
    {
        return (new StringBuilder()).append("DetectedActivity [type=").append(getType()).append(", confidence=").append(anr).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        DetectedActivityCreator.a(this, parcel, i);
    }

}
