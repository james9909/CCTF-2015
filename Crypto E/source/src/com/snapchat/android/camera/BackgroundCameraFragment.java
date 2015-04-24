// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.cameradecor.CameraDecor;
import com.snapchat.android.camera.cameradecor.FullColorDecor;
import com.snapchat.android.camera.model.CameraModel;

// Referenced classes of package com.snapchat.android.camera:
//            BaseCameraFragment

public class BackgroundCameraFragment extends BaseCameraFragment
{

    protected CameraModel a;

    public BackgroundCameraFragment()
    {
        SnapchatApplication.e().a(this);
    }

    protected CameraDecor a(RelativeLayout relativelayout)
    {
        return new FullColorDecor(getActivity(), relativelayout, null);
    }

    public void a(int i)
    {
        ((FullColorDecor)d).a(i);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        a.a(com.snapchat.android.camera.model.CameraModel.CameraType.a);
        return x;
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        b = null;
        d = null;
    }
}
