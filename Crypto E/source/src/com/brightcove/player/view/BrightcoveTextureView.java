// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.content.Context;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import com.brightcove.player.util.LayoutUtil;

// Referenced classes of package com.brightcove.player.view:
//            RenderView

public class BrightcoveTextureView extends TextureView
    implements RenderView
{

    private static final String TAG = com/brightcove/player/view/BrightcoveTextureView.getSimpleName();
    private Surface surface;
    private int videoHeight;
    private int videoWidth;

    public BrightcoveTextureView(Context context)
    {
        super(context);
    }

    public SurfaceHolder getHolder()
    {
        return null;
    }

    public Surface getSurface()
    {
        if (surface == null)
        {
            surface = new Surface(getSurfaceTexture());
        }
        return surface;
    }

    public int getVideoHeight()
    {
        return videoHeight;
    }

    public int getVideoWidth()
    {
        return videoWidth;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        Log.v(TAG, (new StringBuilder()).append("onLayout: changed = ").append(flag).append(", left = ").append(i).append(", top = ").append(j).append(", right = ").append(k).append(", bottom = ").append(l).toString());
        super.onLayout(flag, i, j, k, l);
    }

    protected void onMeasure(int i, int j)
    {
        int k;
        int i1;
        k = android.view.View.MeasureSpec.getSize(i);
        int l = android.view.View.MeasureSpec.getMode(i);
        i1 = android.view.View.MeasureSpec.getSize(j);
        int j1 = android.view.View.MeasureSpec.getMode(j);
        Log.v(TAG, (new StringBuilder()).append("onMeasure: width = ").append(k).append(", height = ").append(i1).append(", videoWidth = ").append(videoWidth).append(", videoHeight = ").append(videoHeight).append(", widthMode = ").append(LayoutUtil.getSpecMode(l)).append(", heightMode = ").append(LayoutUtil.getSpecMode(j1)).toString());
        if (videoWidth <= 0 || videoHeight <= 0) goto _L2; else goto _L1
_L1:
        if (i1 * videoWidth <= k * videoHeight) goto _L4; else goto _L3
_L3:
        i1 = (k * videoHeight) / videoWidth;
_L2:
        Log.v(TAG, (new StringBuilder()).append("setMeasuredDimension: width = ").append(k).append(", height = ").append(i1).toString());
        setMeasuredDimension(k, i1);
        return;
_L4:
        if (i1 * videoWidth < k * videoHeight)
        {
            k = (i1 * videoWidth) / videoHeight;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        Log.v(TAG, (new StringBuilder()).append("onSizeChanged: width = ").append(i).append(", height = ").append(j).append(", oldw = ").append(k).append(", oldh = ").append(l).toString());
        super.onSizeChanged(i, j, k, l);
    }

    public void setVideoSize(int i, int j)
    {
        videoWidth = i;
        videoHeight = j;
        if (i != 0 && j != 0)
        {
            super.requestLayout();
            super.invalidate();
        }
    }

}
