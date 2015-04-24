// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            fx, hg, ay, av

public static final class uR
{

    public final ApplicationInfo applicationInfo;
    public final String lE;
    public final hg lH;
    public final ay lL;
    public final List lV;
    public final Bundle uJ;
    public final av uK;
    public final PackageInfo uL;
    public final String uN;
    public final String uO;
    public final Bundle uP;
    public final int uQ;
    public final Bundle uR;
    public final boolean uS;
    public final Messenger uT;
    public final int uU;
    public final int uV;
    public final float uW;

    public (Bundle bundle, av av, ay ay, String s, ApplicationInfo applicationinfo, PackageInfo packageinfo, String s1, 
            String s2, hg hg, Bundle bundle1, List list, Bundle bundle2, boolean flag, Messenger messenger, 
            int i, int j, float f)
    {
        uJ = bundle;
        uK = av;
        lL = ay;
        lE = s;
        applicationInfo = applicationinfo;
        uL = packageinfo;
        uN = s1;
        uO = s2;
        lH = hg;
        uP = bundle1;
        uS = flag;
        uT = messenger;
        uU = i;
        uV = j;
        uW = f;
        if (list != null && list.size() > 0)
        {
            uQ = 2;
            lV = list;
        } else
        {
            uQ = 0;
            lV = null;
        }
        uR = bundle2;
    }
}
