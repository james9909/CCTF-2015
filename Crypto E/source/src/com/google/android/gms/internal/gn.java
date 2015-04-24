// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            fx, fz, cv, de, 
//            cy, hk, av, cw, 
//            ay

public final class gn
{
    public static final class a
    {

        public final int errorCode;
        public final ay lL;
        public final JSONObject wC;
        public final cw wD;
        public final long wF;
        public final long wG;
        public final fx wI;
        public final fz wJ;

        public a(fx fx1, fz fz1, cw cw, ay ay, int i, long l, 
                long l1, JSONObject jsonobject)
        {
            wI = fx1;
            wJ = fz1;
            wD = cw;
            lL = ay;
            errorCode = i;
            wF = l;
            wG = l1;
            wC = jsonobject;
        }
    }


    public final int errorCode;
    public final int orientation;
    public final List qX;
    public final List qY;
    public final long rb;
    public final cv rp;
    public final de rq;
    public final String rr;
    public final cy rs;
    public final hk sR;
    public final av uK;
    public final String uN;
    public final long uY;
    public final boolean uZ;
    public final long va;
    public final List vb;
    public final String ve;
    public final JSONObject wC;
    public final cw wD;
    public final ay wE;
    public final long wF;
    public final long wG;
    public final bz.a wH;

    public gn(av av, hk hk, List list, int i, List list1, List list2, int j, 
            long l, String s, boolean flag, cv cv, de de, String s1, 
            cw cw, cy cy, long l1, ay ay, long l2, 
            long l3, long l4, String s2, JSONObject jsonobject, bz.a a1)
    {
        uK = av;
        sR = hk;
        List list3;
        List list4;
        List list5;
        if (list != null)
        {
            list3 = Collections.unmodifiableList(list);
        } else
        {
            list3 = null;
        }
        qX = list3;
        errorCode = i;
        if (list1 != null)
        {
            list4 = Collections.unmodifiableList(list1);
        } else
        {
            list4 = null;
        }
        qY = list4;
        if (list2 != null)
        {
            list5 = Collections.unmodifiableList(list2);
        } else
        {
            list5 = null;
        }
        vb = list5;
        orientation = j;
        rb = l;
        uN = s;
        uZ = flag;
        rp = cv;
        rq = de;
        rr = s1;
        wD = cw;
        rs = cy;
        va = l1;
        wE = ay;
        uY = l2;
        wF = l3;
        wG = l4;
        ve = s2;
        wC = jsonobject;
        wH = a1;
    }

    public gn(a a1, hk hk, cv cv, de de, String s, cy cy, bz.a a2)
    {
        this(a1.wI.uK, hk, a1.wJ.qX, a1.errorCode, a1.wJ.qY, a1.wJ.vb, a1.wJ.orientation, a1.wJ.rb, a1.wI.uN, a1.wJ.uZ, cv, de, s, a1.wD, cy, a1.wJ.va, a1.lL, a1.wJ.uY, a1.wF, a1.wG, a1.wJ.ve, a1.wC, a2);
    }
}
