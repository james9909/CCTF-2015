// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RelativeLayout;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.CardBlocker;
import com.snapchat.android.camera.cameradecor.CameraDecor;
import com.snapchat.android.camera.cameradecor.CardLinkCameraDecor;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.cash.CardBlockerManager;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.ValidatedCardInputEvent;
import com.snapchat.android.util.threading.ThreadUtils;

// Referenced classes of package com.snapchat.android.camera:
//            BaseCameraFragment, CameraUtils

public class CardLinkCameraFragment extends BaseCameraFragment
    implements com.snapchat.android.camera.cameradecor.CardLinkCameraDecor.CardDetailsListener
{

    private static final String m = com/snapchat/android/camera/CardLinkCameraFragment.getSimpleName();
    protected CardLinkCameraDecor a;
    protected CardBlockerManager l;
    private byte n[];

    public CardLinkCameraFragment()
    {
    }

    public CameraDecor a(RelativeLayout relativelayout)
    {
        a = new CardLinkCameraDecor(getActivity(), e, this);
        return a;
    }

    protected void a(int i)
    {
        ViewUtils.a(getActivity(), e);
        if (i == 0)
        {
            CardBlocker cardblocker = l.a();
            if (cardblocker != null)
            {
                cardblocker.h();
            }
        }
        Intent intent = new Intent();
        intent.putExtra("goToFragmentNum", 0);
        getActivity().setResult(i, intent);
        getActivity().finish();
        getActivity().overridePendingTransition(0, 0);
    }

    public void a(String s, String s1, String s2, String s3)
    {
        CardBlocker cardblocker = l.a();
        if (cardblocker != null)
        {
            cardblocker.a(s, s1, s2, s3);
        }
    }

    public void a(byte abyte0[], com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy)
    {
        if (!a.f());
    }

    protected byte[] a(Resolution resolution)
    {
        n = CameraUtils.a(resolution);
        return n;
    }

    public void h()
    {
        Timber.b(m, "CASH-LOG: CardLinkCameraFragment onCanceled", new Object[0]);
        a(0);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        j.a(com.snapchat.android.camera.model.CameraModel.CameraType.b);
        return x;
    }

    public void onResume()
    {
        super.onResume();
        G().addFlags(1024);
        G().clearFlags(2048);
        ViewUtils.a(true, G());
        ViewUtils.a(x);
        e.setVisibility(0);
    }

    public void onValidatedCardInputEvent(ValidatedCardInputEvent validatedcardinputevent)
    {
        if (validatedcardinputevent.a)
        {
            Timber.b(m, "CASH-LOG: CardLinkCameraFragment onValidatedCardInputEvent SUCCESS. Finishing activity.", new Object[0]);
            a(-1);
            return;
        }
        com.snapchat.android.camera.cameradecor.CardLinkCameraDecor.CardInputError cardinputerror = validatedcardinputevent.a();
        if (validatedcardinputevent.a() == null)
        {
            Timber.b(m, "CASH-LOG: CardLinkCameraFragment onValidatedCardInputEvent FAILED without error message. Finishing activity.", new Object[0]);
            a(0);
            return;
        } else
        {
            String s = m;
            Object aobj[] = new Object[1];
            aobj[0] = cardinputerror.name();
            Timber.b(s, "CASH-LOG: CardLinkCameraFragment onValidatedCardInputEvent FAILED errorMessage[%s]", aobj);
            ThreadUtils.a(new Runnable(cardinputerror) {

                final com.snapchat.android.camera.cameradecor.CardLinkCameraDecor.CardInputError a;
                final CardLinkCameraFragment b;

                public void run()
                {
                    b.a.a(a);
                }

            
            {
                b = CardLinkCameraFragment.this;
                a = cardinputerror;
                super();
            }
            });
            return;
        }
    }

}
