// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.List;

// Referenced classes of package com.google.android.gms.common.api:
//            f

class Sg
    implements Runnable
{

    private final int Sf;
    private final ConnectionResult Sg;
    final f Sh;

    public void run()
    {
        if (Sg.hasResolution())
        {
            try
            {
                int i = 1 + (1 + Sh.getActivity().getSupportFragmentManager().getFragments().indexOf(Sh) << 16);
                Sg.startResolutionForResult(Sh.getActivity(), i);
                return;
            }
            catch (android.content.ntSender.SendIntentException sendintentexception)
            {
                f.a(Sh);
            }
            return;
        }
        if (GooglePlayServicesUtil.isUserRecoverableError(Sg.getErrorCode()))
        {
            GooglePlayServicesUtil.showErrorDialogFragment(Sg.getErrorCode(), Sh.getActivity(), Sh, 2, Sh);
            return;
        } else
        {
            f.a(Sh, Sf, Sg);
            return;
        }
    }

    public onResult(f f1, int i, ConnectionResult connectionresult)
    {
        Sh = f1;
        super();
        Sf = i;
        Sg = connectionresult;
    }
}
