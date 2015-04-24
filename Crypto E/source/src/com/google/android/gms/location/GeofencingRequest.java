// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.og;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.location:
//            GeofencingRequestCreator, Geofence

public class GeofencingRequest
    implements SafeParcelable
{
    public static final class Builder
    {

        private final List anD = new ArrayList();
        private int anE;

        public static int fD(int i)
        {
            return i & 7;
        }

        public Builder addGeofence(Geofence geofence)
        {
            s.b(geofence, "geofence can't be null.");
            s.b(geofence instanceof og, "Geofence must be created using Geofence.Builder.");
            anD.add((og)geofence);
            return this;
        }

        public Builder addGeofences(List list)
        {
            if (list != null && !list.isEmpty())
            {
                Iterator iterator = list.iterator();
                while (iterator.hasNext()) 
                {
                    Geofence geofence = (Geofence)iterator.next();
                    if (geofence != null)
                    {
                        addGeofence(geofence);
                    }
                }
            }
            return this;
        }

        public GeofencingRequest build()
        {
            boolean flag;
            if (!anD.isEmpty())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            s.b(flag, "No geofence has been added to this request.");
            return new GeofencingRequest(anD, anE);
        }

        public Builder setInitialTrigger(int i)
        {
            anE = fD(i);
            return this;
        }

        public Builder()
        {
            anE = 5;
        }
    }


    public static final GeofencingRequestCreator CREATOR = new GeofencingRequestCreator();
    public static final int INITIAL_TRIGGER_DWELL = 4;
    public static final int INITIAL_TRIGGER_ENTER = 1;
    public static final int INITIAL_TRIGGER_EXIT = 2;
    private final int DN;
    private final List anD;
    private final int anE;

    GeofencingRequest(int i, List list, int j)
    {
        DN = i;
        anD = list;
        anE = j;
    }

    private GeofencingRequest(List list, int i)
    {
        this(1, list, i);
    }


    public int describeContents()
    {
        GeofencingRequestCreator _tmp = CREATOR;
        return 0;
    }

    public List getGeofences()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.addAll(anD);
        return arraylist;
    }

    public int getInitialTrigger()
    {
        return anE;
    }

    public int getVersionCode()
    {
        return DN;
    }

    public List pp()
    {
        return anD;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        GeofencingRequestCreator _tmp = CREATOR;
        GeofencingRequestCreator.a(this, parcel, i);
    }

}
