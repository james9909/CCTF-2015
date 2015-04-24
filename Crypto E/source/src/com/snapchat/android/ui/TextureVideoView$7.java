// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.graphics.SurfaceTexture;
import android.widget.MediaController;

// Referenced classes of package com.snapchat.android.ui:
//            TextureVideoView

class a
    implements android.view.TextureListener
{

    final TextureVideoView a;

    public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i, int j)
    {
        TextureVideoView.k(a);
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
    {
        if (TextureVideoView.e(a) != null)
        {
            TextureVideoView.e(a).hide();
        }
        TextureVideoView.d(a, true);
        return false;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i, int j)
    {
        boolean flag = true;
        TextureVideoView.f(a, i);
        TextureVideoView.g(a, j);
        boolean flag1;
        if (TextureVideoView.g(a) == 3)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (TextureVideoView.a(a) != i || TextureVideoView.b(a) != j)
        {
            flag = false;
        }
        if (TextureVideoView.d(a) != null && flag1 && flag)
        {
            if (TextureVideoView.f(a) != 0)
            {
                a.seekTo(TextureVideoView.f(a));
            }
            a.start();
        }
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
    {
    }

    ener(TextureVideoView texturevideoview)
    {
        a = texturevideoview;
        super();
    }
}
