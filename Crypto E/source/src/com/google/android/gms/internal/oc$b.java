// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.location.LocationListener;

// Referenced classes of package com.google.android.gms.internal:
//            oc

static class aol extends com.google.android.gms.location.aol
{

    private Handler aol;

    public void onLocationChanged(Location location)
    {
        if (aol == null)
        {
            Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
            return;
        } else
        {
            Message message = Message.obtain();
            message.what = 1;
            message.obj = location;
            aol.sendMessage(message);
            return;
        }
    }

    public void release()
    {
        aol = null;
    }

    ionListener(LocationListener locationlistener, Looper looper)
    {
        ionListener ionlistener;
        if (looper == null)
        {
            ionlistener = new <init>(locationlistener);
        } else
        {
            ionlistener = new <init>(locationlistener, looper);
        }
        aol = ionlistener;
    }
}
