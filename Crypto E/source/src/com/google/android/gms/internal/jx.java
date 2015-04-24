// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.cloudsave.Entity;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.e;

public class jx
{
    public static class a
    {

        private Entity OD;
        private Entity OL;
        private Entity OM;
        private IBinder PA;
        private int PB;
        private long PC;
        private long PD;
        private long PE;
        private com.google.android.gms.cloudsave.Entity.Key Pw;

        public static a l(Intent intent)
        {
            a a1 = new a();
            a1.Pw = (com.google.android.gms.cloudsave.Entity.Key)intent.getParcelableExtra("entity_key");
            a1.OL = (Entity)intent.getParcelableExtra("new");
            a1.OD = (Entity)intent.getParcelableExtra("base");
            a1.OM = (Entity)intent.getParcelableExtra("accepted");
            a1.PA = intent.getExtras().getBinder("callback");
            a1.PB = intent.getIntExtra("calling_operation", -1);
            a1.PC = intent.getLongExtra("sessionId", -1L);
            a1.PD = intent.getLongExtra("major_version", 0L);
            a1.PE = intent.getLongExtra("minor_version", 0L);
            return a1;
        }

        public long iA()
        {
            return PC;
        }

        public long iB()
        {
            return PD;
        }

        public long iC()
        {
            return PE;
        }

        public Entity ig()
        {
            return OD;
        }

        public com.google.android.gms.cloudsave.Entity.Key ik()
        {
            return Pw;
        }

        public Entity iw()
        {
            return OM;
        }

        public Entity ix()
        {
            return OL;
        }

        public IBinder iy()
        {
            return PA;
        }

        public int iz()
        {
            return PB;
        }

        private a()
        {
        }
    }

    public static class b
    {

        private long PC;
        private long PD;
        private long PE;
        private Entity PF;
        private Entity PG;
        private int PH;
        private int PI;
        private IBinder PJ;
        private com.google.android.gms.cloudsave.Entity.Key Pw;

        public b a(a a1)
        {
            Pw = a1.ik();
            Entity entity = a1.ix();
            if (entity != null)
            {
                entity.a(null);
                PF = entity.clone();
            }
            Entity entity1 = a1.ig();
            if (entity1 != null)
            {
                entity1.a(null);
                if (PF != null)
                {
                    PF.a(entity1.clone());
                }
            }
            PI = a1.iz();
            PC = a1.iA();
            PD = a1.iB();
            PE = a1.iC();
            PJ = a1.iy();
            return this;
        }

        public b bi(int i)
        {
            PH = i;
            return this;
        }

        public b e(Entity entity)
        {
            PG = entity;
            return this;
        }

        public long iA()
        {
            return PC;
        }

        public long iB()
        {
            return PD;
        }

        public long iC()
        {
            return PE;
        }

        public DataHolder iD()
        {
            com.google.android.gms.common.data.DataHolder.a a1 = com.google.android.gms.common.data.e.jm();
            if (PF != null)
            {
                com.google.android.gms.common.data.e.a(a1, PF);
            }
            return a1.bD(0);
        }

        public DataHolder iE()
        {
            if (PG == null)
            {
                return null;
            } else
            {
                com.google.android.gms.common.data.DataHolder.a a1 = com.google.android.gms.common.data.e.jm();
                com.google.android.gms.common.data.e.a(a1, PG);
                return a1.bD(0);
            }
        }

        public int iF()
        {
            return PH;
        }

        public int iG()
        {
            return PI;
        }

        public IBinder iH()
        {
            return PJ;
        }

        public com.google.android.gms.cloudsave.Entity.Key ik()
        {
            return Pw;
        }

        public b()
        {
        }
    }


    public static int k(Intent intent)
    {
        return intent.getIntExtra("type", 0);
    }
}
