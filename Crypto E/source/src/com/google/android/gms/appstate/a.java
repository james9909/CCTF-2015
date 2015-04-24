// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appstate;

import com.google.android.gms.common.internal.r;

// Referenced classes of package com.google.android.gms.appstate:
//            AppState

public final class a
    implements AppState
{

    private final int EX;
    private final String EY;
    private final byte EZ[];
    private final boolean Fa;
    private final String Fb;
    private final byte Fc[];

    public a(AppState appstate)
    {
        EX = appstate.getKey();
        EY = appstate.getLocalVersion();
        EZ = appstate.getLocalData();
        Fa = appstate.hasConflict();
        Fb = appstate.getConflictVersion();
        Fc = appstate.getConflictData();
    }

    static int a(AppState appstate)
    {
        Object aobj[] = new Object[6];
        aobj[0] = Integer.valueOf(appstate.getKey());
        aobj[1] = appstate.getLocalVersion();
        aobj[2] = appstate.getLocalData();
        aobj[3] = Boolean.valueOf(appstate.hasConflict());
        aobj[4] = appstate.getConflictVersion();
        aobj[5] = appstate.getConflictData();
        return r.hashCode(aobj);
    }

    static boolean a(AppState appstate, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof AppState))
        {
            flag = false;
        } else
        if (appstate != obj)
        {
            AppState appstate1 = (AppState)obj;
            if (!r.equal(Integer.valueOf(appstate1.getKey()), Integer.valueOf(appstate.getKey())) || !r.equal(appstate1.getLocalVersion(), appstate.getLocalVersion()) || !r.equal(appstate1.getLocalData(), appstate.getLocalData()) || !r.equal(Boolean.valueOf(appstate1.hasConflict()), Boolean.valueOf(appstate.hasConflict())) || !r.equal(appstate1.getConflictVersion(), appstate.getConflictVersion()) || !r.equal(appstate1.getConflictData(), appstate.getConflictData()))
            {
                return false;
            }
        }
        return flag;
    }

    static String b(AppState appstate)
    {
        return r.k(appstate).a("Key", Integer.valueOf(appstate.getKey())).a("LocalVersion", appstate.getLocalVersion()).a("LocalData", appstate.getLocalData()).a("HasConflict", Boolean.valueOf(appstate.hasConflict())).a("ConflictVersion", appstate.getConflictVersion()).a("ConflictData", appstate.getConflictData()).toString();
    }

    public boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public AppState fT()
    {
        return this;
    }

    public Object freeze()
    {
        return fT();
    }

    public byte[] getConflictData()
    {
        return Fc;
    }

    public String getConflictVersion()
    {
        return Fb;
    }

    public int getKey()
    {
        return EX;
    }

    public byte[] getLocalData()
    {
        return EZ;
    }

    public String getLocalVersion()
    {
        return EY;
    }

    public boolean hasConflict()
    {
        return Fa;
    }

    public int hashCode()
    {
        return a(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public String toString()
    {
        return b(this);
    }
}
