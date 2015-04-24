// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.app.Activity;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

public class SnapTagHelpFragment extends SnapchatFragment
{

    private static final String a = (new StringBuilder()).append("android.resource://").append(SnapchatApplication.e().getPackageName()).append('/').append(0x7f060005).toString();
    private TextureVideoView b;

    public SnapTagHelpFragment()
    {
    }

    static TextureVideoView a(SnapTagHelpFragment snaptaghelpfragment)
    {
        return snaptaghelpfragment.b;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        TimeLogger.a();
        x = layoutinflater.inflate(0x7f040081, viewgroup, false);
        b = (TextureVideoView)d(0x7f0a02d7);
        x.setOnTouchListener(new android.view.View.OnTouchListener() {

            final SnapTagHelpFragment a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                android.support.v4.app.FragmentActivity fragmentactivity = a.getActivity();
                if (fragmentactivity != null)
                {
                    fragmentactivity.onBackPressed();
                }
                return true;
            }

            
            {
                a = SnapTagHelpFragment.this;
                super();
            }
        });
        TimeLogger.b();
        return x;
    }

    public void onPause()
    {
        super.onPause();
        b.a();
        BusProvider.a().a(new CameraStateEvent(true));
    }

    public void onResume()
    {
        super.onResume();
        ViewUtils.a(true, G());
        BusProvider.a().a(new CameraStateEvent(false));
        b.setVideoPath(a);
        b.seekTo(0);
        b.start();
        b.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() {

            final SnapTagHelpFragment a;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                SnapTagHelpFragment.a(a).setLooping(true);
            }

            
            {
                a = SnapTagHelpFragment.this;
                super();
            }
        });
    }

    protected void s_()
    {
    }

}
