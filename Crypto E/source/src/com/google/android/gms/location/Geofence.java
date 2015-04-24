// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.og;

public interface Geofence
{
    public static final class Builder
    {

        private String agI;
        private int ans;
        private long ant;
        private short anu;
        private double anv;
        private double anw;
        private float anx;
        private int any;
        private int anz;

        public Geofence build()
        {
            if (agI == null)
            {
                throw new IllegalArgumentException("Request ID not set.");
            }
            if (ans == 0)
            {
                throw new IllegalArgumentException("Transitions types not set.");
            }
            if ((4 & ans) != 0 && anz < 0)
            {
                throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
            }
            if (ant == 0x8000000000000000L)
            {
                throw new IllegalArgumentException("Expiration not set.");
            }
            if (anu == -1)
            {
                throw new IllegalArgumentException("Geofence region not set.");
            }
            if (any < 0)
            {
                throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
            } else
            {
                return new og(agI, ans, (short)1, anv, anw, anx, ant, any, anz);
            }
        }

        public Builder setCircularRegion(double d, double d1, float f)
        {
            anu = 1;
            anv = d;
            anw = d1;
            anx = f;
            return this;
        }

        public Builder setExpirationDuration(long l)
        {
            if (l < 0L)
            {
                ant = -1L;
                return this;
            } else
            {
                ant = l + SystemClock.elapsedRealtime();
                return this;
            }
        }

        public Builder setLoiteringDelay(int i)
        {
            anz = i;
            return this;
        }

        public Builder setNotificationResponsiveness(int i)
        {
            any = i;
            return this;
        }

        public Builder setRequestId(String s)
        {
            agI = s;
            return this;
        }

        public Builder setTransitionTypes(int i)
        {
            ans = i;
            return this;
        }

        public Builder()
        {
            agI = null;
            ans = 0;
            ant = 0x8000000000000000L;
            anu = -1;
            any = 0;
            anz = -1;
        }
    }


    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1L;

    public abstract String getRequestId();
}
