// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Looper;

// Referenced classes of package com.brightcove.player.view:
//            BrightcoveSurfaceView

public class BrightcoveClosedCaptioningSurfaceView extends BrightcoveSurfaceView
    implements android.media.SubtitleController.Anchor
{

    private static final String TAG = com/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView.getSimpleName();
    private android.media.SubtitleTrack.RenderingWidget subtitleWidget;
    private android.media.SubtitleTrack.RenderingWidget.OnChangedListener subtitlesChangedListener;

    public BrightcoveClosedCaptioningSurfaceView(Context context)
    {
        super(context);
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        if (subtitleWidget != null)
        {
            int i = canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            subtitleWidget.draw(canvas);
            canvas.restoreToCount(i);
        }
    }

    public Looper getSubtitleLooper()
    {
        return Looper.getMainLooper();
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (subtitleWidget != null)
        {
            subtitleWidget.onAttachedToWindow();
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (subtitleWidget != null)
        {
            subtitleWidget.onDetachedFromWindow();
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (subtitleWidget != null)
        {
            int i1 = getWidth() - getPaddingLeft() - getPaddingRight();
            int j1 = getHeight() - getPaddingTop() - getPaddingBottom();
            subtitleWidget.setSize(i1, j1);
        }
    }

    public void setSubtitleWidget(android.media.SubtitleTrack.RenderingWidget renderingwidget)
    {
        if (subtitleWidget == renderingwidget)
        {
            return;
        }
        boolean flag = isAttachedToWindow();
        if (subtitleWidget != null)
        {
            if (flag)
            {
                subtitleWidget.onDetachedFromWindow();
            }
            subtitleWidget.setOnChangedListener(null);
        }
        subtitleWidget = renderingwidget;
        if (renderingwidget != null)
        {
            if (subtitlesChangedListener == null)
            {
                subtitlesChangedListener = new android.media.SubtitleTrack.RenderingWidget.OnChangedListener() {

                    final BrightcoveClosedCaptioningSurfaceView this$0;

                    public void onChanged(android.media.SubtitleTrack.RenderingWidget renderingwidget1)
                    {
                        invalidate();
                    }

            
            {
                this$0 = BrightcoveClosedCaptioningSurfaceView.this;
                super();
            }
                };
            }
            setWillNotDraw(false);
            renderingwidget.setOnChangedListener(subtitlesChangedListener);
            if (flag)
            {
                renderingwidget.onAttachedToWindow();
                requestLayout();
            }
        } else
        {
            setWillNotDraw(true);
        }
        invalidate();
    }

}
