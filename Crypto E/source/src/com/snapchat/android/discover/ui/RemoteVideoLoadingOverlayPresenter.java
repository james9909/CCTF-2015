// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.view.View;
import android.widget.ProgressBar;
import com.snapchat.android.discover.model.MediaState;

public class RemoteVideoLoadingOverlayPresenter
{

    private ProgressBar a;

    public RemoteVideoLoadingOverlayPresenter()
    {
    }

    public void a(View view)
    {
        a = (ProgressBar)view.findViewById(0x7f0a01b7);
    }

    public void a(MediaState mediastate, boolean flag)
    {
        if (mediastate.b())
        {
            a.setVisibility(8);
            return;
        }
        if (mediastate.a() || flag)
        {
            a.setVisibility(0);
            return;
        } else
        {
            a.setVisibility(8);
            return;
        }
    }
}
