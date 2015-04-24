// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.cloudsave.Entity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.e;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ko, jp, kk

static final class ty.q
    implements com.google.android.gms.cloudsave.SaveManager.SaveEntitiesResult
{
    static class a
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

        public a(Status status, Entity entity)
        {
            EI = status;
            Pt = entity;
        }
    }


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

    public ty(ko ko1, Collection collection)
    {
        EI = jp.be(ko1.statusCode);
        e e1 = new e(ko1.PV, kk.CREATOR);
        HashMap hashmap = new HashMap(e1.getCount());
        for (int i = 0; i < e1.getCount(); i++)
        {
            kk kk2 = (kk)e1.get(i);
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
