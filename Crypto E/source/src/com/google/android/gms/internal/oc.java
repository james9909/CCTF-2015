// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.internal:
//            oi, ob

public class oc
{
    static class a extends Handler
    {

        private final LocationListener aok;

        public void handleMessage(Message message)
        {
            Location location;
            switch (message.what)
            {
            default:
                Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
                return;

            case 1: // '\001'
                location = new Location((Location)message.obj);
                break;
            }
            aok.onLocationChanged(location);
        }

        public a(LocationListener locationlistener)
        {
            aok = locationlistener;
        }

        public a(LocationListener locationlistener, Looper looper)
        {
            super(looper);
            aok = locationlistener;
        }
    }

    static class b extends com.google.android.gms.location.a.a
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

        b(LocationListener locationlistener, Looper looper)
        {
            a a1;
            if (looper == null)
            {
                a1 = new a(locationlistener);
            } else
            {
                a1 = new a(locationlistener, looper);
            }
            aol = a1;
        }
    }


    private final oi Fq;
    private ContentProviderClient aoh;
    private boolean aoi;
    private HashMap aoj;
    private final Context mContext;

    public oc(Context context, oi oi1)
    {
        aoh = null;
        aoi = false;
        aoj = new HashMap();
        mContext = context;
        Fq = oi1;
    }

    private b a(LocationListener locationlistener, Looper looper)
    {
        if (looper == null)
        {
            s.b(Looper.myLooper(), "Can't create handler inside thread that has not called Looper.prepare()");
        }
        HashMap hashmap = aoj;
        hashmap;
        JVM INSTR monitorenter ;
        b b1 = (b)aoj.get(locationlistener);
        if (b1 != null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        b1 = new b(locationlistener, looper);
        aoj.put(locationlistener, b1);
        hashmap;
        JVM INSTR monitorexit ;
        return b1;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void U(boolean flag)
    {
        Fq.eb();
        ((ob)Fq.jG()).U(flag);
        aoi = flag;
    }

    public void a(LocationListener locationlistener)
    {
        Fq.eb();
        s.b(locationlistener, "Invalid null listener");
        HashMap hashmap = aoj;
        hashmap;
        JVM INSTR monitorenter ;
        b b1;
        b1 = (b)aoj.remove(locationlistener);
        if (aoh != null && aoj.isEmpty())
        {
            aoh.release();
            aoh = null;
        }
        if (b1 == null)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        b1.release();
        ((ob)Fq.jG()).a(b1);
        hashmap;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(LocationRequest locationrequest, LocationListener locationlistener, Looper looper)
    {
        Fq.eb();
        b b1 = a(locationlistener, looper);
        ((ob)Fq.jG()).a(locationrequest, b1);
    }

    public void b(Location location)
    {
        Fq.eb();
        ((ob)Fq.jG()).b(location);
    }

    public void b(LocationRequest locationrequest, PendingIntent pendingintent)
    {
        Fq.eb();
        ((ob)Fq.jG()).a(locationrequest, pendingintent);
    }

    public void c(PendingIntent pendingintent)
    {
        Fq.eb();
        ((ob)Fq.jG()).b(pendingintent);
    }

    public Location pu()
    {
        Fq.eb();
        Location location;
        try
        {
            location = ((ob)Fq.jG()).cg(mContext.getPackageName());
        }
        catch (RemoteException remoteexception)
        {
            throw new IllegalStateException(remoteexception);
        }
        return location;
    }

    public void pv()
    {
        if (!aoi)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        U(false);
        return;
        RemoteException remoteexception;
        remoteexception;
        throw new IllegalStateException(remoteexception);
    }

    public void removeAllListeners()
    {
        HashMap hashmap = aoj;
        hashmap;
        JVM INSTR monitorenter ;
        Iterator iterator = aoj.values().iterator();
_L2:
        b b1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_85;
            }
            b1 = (b)iterator.next();
        } while (b1 == null);
        ((ob)Fq.jG()).a(b1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (RemoteException remoteexception)
        {
            throw new IllegalStateException(remoteexception);
        }
        aoj.clear();
        hashmap;
        JVM INSTR monitorexit ;
    }
}
