// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            rk, rj, ri, ru, 
//            rq

public static final class ul extends rk
{

    public int aGM;
    public String aGN;
    public String version;

    public void a(rj rj1)
    {
        if (aGM != 0)
        {
            rj1.z(1, aGM);
        }
        if (!aGN.equals(""))
        {
            rj1.b(2, aGN);
        }
        if (!version.equals(""))
        {
            rj1.b(3, version);
        }
        super.a(rj1);
    }

    public rq b(ri ri1)
    {
        return z(ri1);
    }

    protected int c()
    {
        int i = super.c();
        if (aGM != 0)
        {
            i += rj.B(1, aGM);
        }
        if (!aGN.equals(""))
        {
            i += rj.k(2, aGN);
        }
        if (!version.equals(""))
        {
            i += rj.k(3, version);
        }
        return i;
    }

    public boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L4:
        return flag1;
_L2:
        boolean flag;
        flag = obj instanceof version;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        version version1;
        int i;
        int j;
        version1 = (version)obj;
        i = aGM;
        j = version1.aGM;
        flag1 = false;
        if (i != j) goto _L4; else goto _L5
_L5:
        if (aGN != null) goto _L7; else goto _L6
_L6:
        String s1;
        s1 = version1.aGN;
        flag1 = false;
        if (s1 != null) goto _L4; else goto _L8
_L8:
        String s;
        if (version != null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        s = version1.version;
        flag1 = false;
        if (s != null) goto _L4; else goto _L9
_L9:
        return a(version1);
_L7:
        if (!aGN.equals(version1.aGN))
        {
            return false;
        }
          goto _L8
        if (!version.equals(version1.version))
        {
            return false;
        }
          goto _L9
    }

    public int hashCode()
    {
        int i = 31 * (527 + aGM);
        int j;
        int k;
        String s;
        int l;
        if (aGN == null)
        {
            j = 0;
        } else
        {
            j = aGN.hashCode();
        }
        k = 31 * (j + i);
        s = version;
        l = 0;
        if (s != null)
        {
            l = version.hashCode();
        }
        return 31 * (k + l) + ua();
    }

    public ua ul()
    {
        aGM = 0;
        aGN = "";
        version = "";
        aGo = null;
        aGz = -1;
        return this;
    }

    public aGz z(ri ri1)
    {
_L6:
        int i = ri1.tJ();
        i;
        JVM INSTR lookupswitch 4: default 48
    //                   0: 57
    //                   8: 59
    //                   18: 183
    //                   26: 194;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        if (a(ri1, i)) goto _L6; else goto _L2
_L2:
        return this;
_L3:
        int j = ri1.tM();
        switch (j)
        {
        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
        case 7: // '\007'
        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 11: // '\013'
        case 12: // '\f'
        case 13: // '\r'
        case 14: // '\016'
        case 15: // '\017'
        case 16: // '\020'
        case 17: // '\021'
        case 18: // '\022'
        case 19: // '\023'
        case 20: // '\024'
        case 21: // '\025'
        case 22: // '\026'
            aGM = j;
            break;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        aGN = ri1.readString();
        continue; /* Loop/switch isn't completed */
_L5:
        version = ri1.readString();
        if (true) goto _L6; else goto _L7
_L7:
    }

    public ()
    {
        ul();
    }
}
