// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cloudsave.CloudSaveStatusCodes;
import com.google.android.gms.cloudsave.Entity;
import com.google.android.gms.cloudsave.Query;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.s;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;

// Referenced classes of package com.google.android.gms.internal:
//            kd, jy, ki, ke, 
//            jo, jv, jr, ka, 
//            kg, ko, kk, jq, 
//            km, jt

public final class jp extends com.google.android.gms.common.internal.h
{
    static final class a extends jo
    {

        private final Collection Pl;

        public void a(jv jv)
        {
            Fn.e(new b(jv, Pl));
            jp.iu();
        }

        public a(com.google.android.gms.common.api.BaseImplementation.b b1, Collection collection)
        {
            super(b1);
            Pl = collection;
        }
    }

    static final class b
        implements com.google.android.gms.cloudsave.CloudSaveManager.DeleteEntitiesResult
    {

        private final Status EI;
        private final Map Pm;

        public Map getDeleteEntitiesResult()
        {
            return Pm;
        }

        public Status getStatus()
        {
            return EI;
        }

        public b(jv jv1, Collection collection)
        {
            EI = jp.be(jv1.statusCode);
            com.google.android.gms.common.data.e e1 = new com.google.android.gms.common.data.e(jv1.Pz, jr.CREATOR);
            HashMap hashmap = new HashMap(e1.getCount());
            Map map = jp.d(collection);
            jr jr1;
            d d1;
            for (Iterator iterator = e1.iterator(); iterator.hasNext(); hashmap.put(jr1.Pw, d1))
            {
                jr1 = (jr)iterator.next();
                d1 = new d(jr1, (Entity)map.get(jr1.Pw));
            }

            Pm = Collections.unmodifiableMap(hashmap);
        }
    }

    static final class c extends jo
    {

        private final Entity Pn;

        public void a(jv jv)
        {
            Fn.e(new d(jv, Pn));
            jp.iu();
        }

        public c(com.google.android.gms.common.api.BaseImplementation.b b1, Entity entity)
        {
            super(b1);
            Pn = entity;
        }
    }

    static final class d
        implements com.google.android.gms.cloudsave.CloudSaveManager.DeleteEntityResult
    {

        private final Status EI;

        private static jr b(jv jv1)
        {
            com.google.android.gms.common.data.e e1 = new com.google.android.gms.common.data.e(jv1.Pz, jr.CREATOR);
            jr jr1 = (jr)e1.get(0);
            e1.release();
            return jr1;
        }

        public Status getStatus()
        {
            return EI;
        }

        public d(jr jr1, Entity entity)
        {
            EI = jp.be(jr1.Pu);
            if (EI.isSuccess() && jr1.Pv)
            {
                entity.a(null);
                entity.p(0L);
                entity.q(0L);
            }
        }

        public d(jv jv1, Entity entity)
        {
            this(b(jv1), entity);
        }
    }

    static final class e extends jo
    {

        public void a(jv jv)
        {
            Fn.e(new f(jv));
            jp.iu();
        }

        public e(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            super(b1);
        }
    }

    static final class f
        implements com.google.android.gms.cloudsave.CloudSaveManager.DeleteQueryResult
    {

        private final Status EI;
        private final Collection Po;

        public Collection getEntityKeys()
        {
            return Po;
        }

        public Status getStatus()
        {
            return EI;
        }

        public f(jv jv1)
        {
            EI = jp.be(jv1.statusCode);
            ArrayList arraylist = new ArrayList();
            for (Iterator iterator = (new com.google.android.gms.common.data.e(jv1.Pz, jr.CREATOR)).iterator(); iterator.hasNext(); arraylist.add(((jr)iterator.next()).Pw)) { }
            Po = Collections.unmodifiableCollection(arraylist);
        }
    }

    static final class g extends jo
    {

        public void a(ka ka)
        {
            Fn.e(new h(ka));
        }

        public g(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            super(b1);
        }
    }

    static final class h
        implements com.google.android.gms.cloudsave.CloudSaveManager.GetEntitiesResult
    {

        private final Status EI;
        private final Map Pp;

        public Map getEntityMap()
        {
            return Pp;
        }

        public Status getStatus()
        {
            return EI;
        }

        public h(ka ka1)
        {
            EI = jp.be(ka1.statusCode);
            com.google.android.gms.common.data.e e1 = new com.google.android.gms.common.data.e(ka1.Px, Entity.CREATOR);
            HashMap hashmap = new HashMap(e1.getCount());
            for (int i1 = 0; i1 < e1.getCount(); i1++)
            {
                Entity entity = (Entity)e1.get(i1);
                hashmap.put(entity.getKey(), entity);
            }

            e1.release();
            Pp = Collections.unmodifiableMap(hashmap);
        }
    }

    static final class i extends jo
    {

        public void a(ka ka)
        {
            Fn.e(new j(ka));
        }

        public i(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            super(b1);
        }
    }

    static final class j
        implements com.google.android.gms.cloudsave.CloudSaveManager.GetEntityResult
    {

        private final Status EI;
        private final Entity Pq;

        public Entity getEntity()
        {
            return Pq;
        }

        public Status getStatus()
        {
            return EI;
        }

        public j(ka ka1)
        {
            Status status = jp.be(ka1.statusCode);
            if (status.isSuccess())
            {
                com.google.android.gms.common.data.e e1 = new com.google.android.gms.common.data.e(ka1.Px, Entity.CREATOR);
                if (e1.getCount() < 1)
                {
                    EI = jp.be(5504);
                    Pq = null;
                } else
                {
                    EI = status;
                    Pq = (Entity)e1.get(0);
                }
                e1.release();
                return;
            } else
            {
                EI = status;
                Pq = null;
                return;
            }
        }
    }

    static final class k extends jo
    {

        public void a(kg kg)
        {
            Fn.e(new l(kg));
        }

        public k(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            super(b1);
        }
    }

    static final class l
        implements com.google.android.gms.cloudsave.CloudSaveManager.QueryResult
    {

        private final Status EI;
        private final Collection Pr;

        public Collection getEntities()
        {
            return Pr;
        }

        public Status getStatus()
        {
            return EI;
        }

        public l(kg kg1)
        {
            EI = jp.be(kg1.statusCode);
            com.google.android.gms.common.data.e e1 = new com.google.android.gms.common.data.e(kg1.Px, Entity.CREATOR);
            ArrayList arraylist = new ArrayList(e1.getCount());
            for (int i1 = 0; i1 < e1.getCount(); i1++)
            {
                arraylist.add((Entity)e1.get(i1));
            }

            e1.release();
            Pr = Collections.unmodifiableCollection(arraylist);
        }
    }

    static final class m extends jo
    {

        private final Collection Pl;

        public void a(ko ko)
        {
            Fn.e(new n(ko, Pl));
            jp.iu();
        }

        public m(com.google.android.gms.common.api.BaseImplementation.b b1, Collection collection)
        {
            super(b1);
            Pl = collection;
        }
    }

    static final class n
        implements com.google.android.gms.cloudsave.CloudSaveManager.SaveEntitiesResult
    {

        private final Status EI;
        private final Map Ps = new HashMap();

        public Map getSaveEntitiesResult()
        {
            return Collections.unmodifiableMap(Ps);
        }

        public Status getStatus()
        {
            return EI;
        }

        public n(ko ko1, Collection collection)
        {
            EI = jp.be(ko1.statusCode);
            com.google.android.gms.common.data.e e1 = new com.google.android.gms.common.data.e(ko1.PV, kk.CREATOR);
            HashMap hashmap = new HashMap(e1.getCount());
            for (int i1 = 0; i1 < e1.getCount(); i1++)
            {
                kk kk2 = (kk)e1.get(i1);
                hashmap.put(kk2.PP, kk2);
            }

            e1.release();
            Iterator iterator = collection.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Entity entity = (Entity)iterator.next();
                kk kk1 = (kk)hashmap.get(entity.getKey());
                if (kk1 != null)
                {
                    a a1 = new a(jp.be(kk1.statusCode), kk1.PT);
                    Ps.put(entity.getKey(), a1);
                    if (a1.getStatus().isSuccess())
                    {
                        jp.c(entity);
                        if (kk1.PU)
                        {
                            Entity entity1 = a1.iv();
                            if (entity1 != null)
                            {
                                entity.p(entity1.ie());
                                entity.q(entity1._mthif());
                            } else
                            {
                                entity.p(0L);
                                entity.q(0L);
                            }
                        }
                    }
                }
            } while (true);
        }
    }

    static class n.a
        implements com.google.android.gms.cloudsave.CloudSaveManager.SaveEntityResult
    {

        private final Status EI;
        private final Entity Pt;

        public Status getStatus()
        {
            return EI;
        }

        public Entity iv()
        {
            return Pt;
        }

        public n.a(Status status, Entity entity)
        {
            EI = status;
            Pt = entity;
        }
    }

    static final class o extends jo
    {

        private final Entity Pq;

        public void a(ko ko)
        {
            Fn.e(new p(ko, Pq));
            jp.iu();
        }

        public o(com.google.android.gms.common.api.BaseImplementation.b b1, Entity entity)
        {
            super(b1);
            Pq = entity;
        }
    }

    static final class p
        implements com.google.android.gms.cloudsave.CloudSaveManager.SaveEntityResult
    {

        private final Status EI;
        private final Entity Pt;

        public Status getStatus()
        {
            return EI;
        }

        public p(ko ko1, Entity entity)
        {
            com.google.android.gms.common.data.e e1 = new com.google.android.gms.common.data.e(ko1.PV, kk.CREATOR);
            kk kk1 = (kk)e1.get(0);
            EI = jp.be(kk1.statusCode);
            Pt = kk1.PT;
            e1.release();
            if (EI.isSuccess())
            {
                jp.c(entity);
                if (kk1.PU)
                {
                    entity.p(Pt.ie());
                    entity.q(Pt._mthif());
                }
            }
        }
    }

    static final class q extends jo
    {

        public void bc(int i1)
        {
            Status status = jp.be(i1);
            Fn.e(status);
        }

        public q(com.google.android.gms.common.api.BaseImplementation.b b1)
        {
            super(b1);
        }
    }


    private static final ConcurrentLinkedQueue Pi = new ConcurrentLinkedQueue();
    private final String Fm;
    private final String Ov;

    public jp(Context context, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, String s1, String s2, String as1[])
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, as1);
        Fm = (String)s.l(s1);
        Ov = (String)s.l(s2);
    }

    private static void b(Entity entity)
    {
        entity.a(null);
        entity.a(entity.clone());
        entity.ih();
    }

    private static Status bd(int i1)
    {
        return f(i1, CloudSaveStatusCodes.getStatusCodeString(i1));
    }

    static Status be(int i1)
    {
        return bd(i1);
    }

    private static Map c(Collection collection)
    {
        HashMap hashmap = new HashMap();
        Entity entity;
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); hashmap.put(entity.getKey(), entity))
        {
            entity = (Entity)iterator.next();
        }

        return hashmap;
    }

    static void c(Entity entity)
    {
        b(entity);
    }

    static Map d(Collection collection)
    {
        return c(collection);
    }

    private static void e(Runnable runnable)
    {
        com/google/android/gms/internal/jp;
        JVM INSTR monitorenter ;
        ConcurrentLinkedQueue concurrentlinkedqueue = Pi;
        concurrentlinkedqueue;
        JVM INSTR monitorenter ;
        boolean flag = Pi.isEmpty();
        boolean flag1;
        flag1 = false;
        if (flag)
        {
            flag1 = true;
        }
        Pi.add(runnable);
        concurrentlinkedqueue;
        JVM INSTR monitorexit ;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        runnable.run();
        com/google/android/gms/internal/jp;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        concurrentlinkedqueue;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        com/google/android/gms/internal/jp;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static Status f(int i1, String s1)
    {
        return new Status(i1, s1);
    }

    private static void it()
    {
label0:
        {
            synchronized (Pi)
            {
                Pi.poll();
                if (!Pi.isEmpty())
                {
                    break label0;
                }
            }
            return;
        }
        concurrentlinkedqueue;
        JVM INSTR monitorexit ;
        ((Runnable)Pi.peek()).run();
        return;
        exception;
        concurrentlinkedqueue;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void iu()
    {
        it();
    }

    public void a(com.google.android.gms.common.api.BaseImplementation.b b1, com.google.android.gms.cloudsave.Entity.Key key)
    {
        s.l(b1);
        s.l(key);
        ArrayList arraylist = new ArrayList(1);
        arraylist.add(key);
        try
        {
            i i1 = new i(b1);
            ((kd)jG()).a(i1, new jy(arraylist));
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("CloudSaveClient", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.BaseImplementation.b b1, Entity entity)
    {
        s.l(b1);
        s.l(entity);
        e(new Runnable(entity, b1) {

            final Entity Ol;
            final com.google.android.gms.common.api.BaseImplementation.b Pj;
            final jp Pk;

            public void run()
            {
                DataHolder dataholder;
                o o1;
                km km1;
                dataholder = jq.d(Ol);
                o1 = new o(Pj, Ol);
                km1 = new km(dataholder);
                ((kd)Pk.jG()).a(o1, km1);
                dataholder.close();
                return;
                RemoteException remoteexception;
                remoteexception;
                Log.w("CloudSaveClient", "service died");
                dataholder.close();
                return;
                Exception exception;
                exception;
                dataholder.close();
                throw exception;
            }

            
            {
                Pk = jp.this;
                Ol = entity;
                Pj = b1;
                super();
            }
        });
    }

    public void a(com.google.android.gms.common.api.BaseImplementation.b b1, Query query)
    {
        s.l(b1);
        s.l(query);
        e(new Runnable(b1, query) {

            final Query Op;
            final com.google.android.gms.common.api.BaseImplementation.b Pj;
            final jp Pk;

            public void run()
            {
                e e1 = new e(Pj);
                jt jt1 = new jt(Op);
                try
                {
                    ((kd)Pk.jG()).a(e1, jt1);
                    return;
                }
                catch (RemoteException remoteexception)
                {
                    Log.w("CloudSaveClient", "service died");
                }
            }

            
            {
                Pk = jp.this;
                Pj = b1;
                Op = query;
                super();
            }
        });
    }

    public void a(com.google.android.gms.common.api.BaseImplementation.b b1, jx.b b2)
    {
        DataHolder dataholder;
        DataHolder dataholder1;
        s.l(b1);
        dataholder = b2.iE();
        dataholder1 = b2.iD();
        q q1 = new q(b1);
        ki ki1 = new ki(dataholder, b2.iG(), b2.iF(), b2.iA(), b2.ik(), b2.iB(), b2.iC(), dataholder1);
        ((kd)jG()).a(q1, ki1, b2.iH());
        if (dataholder != null)
        {
            dataholder.close();
        }
        if (dataholder1 != null)
        {
            dataholder1.close();
        }
_L2:
        return;
        RemoteException remoteexception;
        remoteexception;
        Log.w("CloudSaveClient", "service died");
        if (dataholder != null)
        {
            dataholder.close();
        }
        if (dataholder1 == null) goto _L2; else goto _L1
_L1:
        dataholder1.close();
        return;
        Exception exception;
        exception;
        if (dataholder != null)
        {
            dataholder.close();
        }
        if (dataholder1 != null)
        {
            dataholder1.close();
        }
        throw exception;
    }

    public void a(com.google.android.gms.common.api.BaseImplementation.b b1, Collection collection)
    {
        s.l(b1);
        s.l(collection);
        e(new Runnable(collection, b1) {

            final Collection Om;
            final com.google.android.gms.common.api.BaseImplementation.b Pj;
            final jp Pk;

            public void run()
            {
                DataHolder dataholder;
                m m1;
                km km1;
                dataholder = jq.e(Om);
                m1 = new m(Pj, Om);
                km1 = new km(dataholder);
                ((kd)Pk.jG()).a(m1, km1);
                if (dataholder != null)
                {
                    dataholder.close();
                }
_L2:
                return;
                RemoteException remoteexception;
                remoteexception;
                Log.w("CloudSaveClient", "service died");
                if (dataholder == null) goto _L2; else goto _L1
_L1:
                dataholder.close();
                return;
                Exception exception;
                exception;
                if (dataholder != null)
                {
                    dataholder.close();
                }
                throw exception;
            }

            
            {
                Pk = jp.this;
                Om = collection;
                Pj = b1;
                super();
            }
        });
    }

    protected void a(com.google.android.gms.common.internal.p p1, com.google.android.gms.common.internal.h.e e1)
    {
        p1.a(e1, 0x640578, getContext().getPackageName(), Fm, Ov, jF());
    }

    protected kd as(IBinder ibinder)
    {
        return kd.a.au(ibinder);
    }

    public void b(com.google.android.gms.common.api.BaseImplementation.b b1, Entity entity)
    {
        s.l(b1);
        s.l(entity);
        e(new Runnable(entity, b1) {

            final Entity Ol;
            final com.google.android.gms.common.api.BaseImplementation.b Pj;
            final jp Pk;

            public void run()
            {
                DataHolder dataholder;
                c c1;
                jt jt1;
                dataholder = jq.d(Ol);
                c1 = new c(Pj, Ol);
                jt1 = new jt(dataholder);
                ((kd)Pk.jG()).a(c1, jt1);
                dataholder.close();
                return;
                RemoteException remoteexception;
                remoteexception;
                Log.w("CloudSaveClient", "service died");
                dataholder.close();
                return;
                Exception exception;
                exception;
                dataholder.close();
                throw exception;
            }

            
            {
                Pk = jp.this;
                Ol = entity;
                Pj = b1;
                super();
            }
        });
    }

    public void b(com.google.android.gms.common.api.BaseImplementation.b b1, Query query)
    {
        s.l(b1);
        s.l(query);
        try
        {
            k k1 = new k(b1);
            ((kd)jG()).a(k1, new ke(query));
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("CloudSaveClient", "service died");
        }
    }

    public void b(com.google.android.gms.common.api.BaseImplementation.b b1, Collection collection)
    {
        s.l(b1);
        s.l(collection);
        try
        {
            g g1 = new g(b1);
            ((kd)jG()).a(g1, new jy(new ArrayList(collection)));
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("CloudSaveClient", "service died");
        }
    }

    public void c(com.google.android.gms.common.api.BaseImplementation.b b1, Collection collection)
    {
        s.l(b1);
        s.l(collection);
        e(new Runnable(collection, b1) {

            final Collection Om;
            final com.google.android.gms.common.api.BaseImplementation.b Pj;
            final jp Pk;

            public void run()
            {
                DataHolder dataholder;
                a a1;
                jt jt1;
                dataholder = jq.e(Om);
                a1 = new a(Pj, Om);
                jt1 = new jt(dataholder);
                ((kd)Pk.jG()).a(a1, jt1);
                dataholder.close();
                return;
                RemoteException remoteexception;
                remoteexception;
                Log.w("CloudSaveClient", "service died");
                dataholder.close();
                return;
                Exception exception;
                exception;
                dataholder.close();
                throw exception;
            }

            
            {
                Pk = jp.this;
                Om = collection;
                Pj = b1;
                super();
            }
        });
    }

    public void f(com.google.android.gms.common.api.BaseImplementation.b b1)
    {
        s.l(b1);
        try
        {
            q q1 = new q(b1);
            ((kd)jG()).a(q1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.w("CloudSaveClient", "service died");
        }
    }

    public String getAccountName()
    {
        return Fm;
    }

    protected String getServiceDescriptor()
    {
        return "com.google.android.gms.cloudsave.internal.ICloudSaveService";
    }

    protected String getStartServiceAction()
    {
        return "com.google.android.gms.cloudsave.service.START";
    }

    public String getWorkspace()
    {
        return Ov;
    }

    protected IInterface l(IBinder ibinder)
    {
        return as(ibinder);
    }

}
