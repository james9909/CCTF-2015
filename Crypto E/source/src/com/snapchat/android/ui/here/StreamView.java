// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraReadyEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.here:
//            LocalPreviewHolder, DisconnectReason

public abstract class StreamView extends FrameLayout
    implements com.snapchat.android.livechat.LiveChatProvider.LiveChatProviderCallback, com.snapchat.android.ui.ChatCameraButton.TouchEventSubscriber
{
    public static interface StreamViewCallback
    {

        public abstract void c(boolean flag);

        public abstract void d(boolean flag);

        public abstract void o();
    }


    protected static final com.addlive.service.AddLiveService.VideoFrameMetadata h = new com.addlive.service.AddLiveService.VideoFrameMetadata();
    protected static final LocalPreviewHolder i = new LocalPreviewHolder();

    public StreamView(Context context)
    {
        super(context);
    }

    public StreamView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public StreamView(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
    }

    public static StreamView getLastInstance()
    {
        return null;
    }

    public static void setCameraInfo(android.hardware.Camera.CameraInfo camerainfo)
    {
        h.setInfo(camerainfo);
        i.a();
    }

    public static void setCameraPreviewSize(Resolution resolution)
    {
        h.setWidth(resolution.a());
        h.setHeight(resolution.b());
        i.a();
    }

    public abstract void a(Activity activity, StreamViewCallback streamviewcallback);

    public abstract void a(MotionEvent motionevent);

    public abstract void a(ChatConversation chatconversation);

    public abstract void b();

    public abstract void b(DisconnectReason disconnectreason);

    public abstract void b(boolean flag);

    public abstract void c();

    public abstract boolean d();

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
    }

    public abstract boolean e();

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        BusProvider.a().c(this);
    }

    public abstract void onCameraReadyEvent(CameraReadyEvent camerareadyevent);

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        BusProvider.a().b(this);
    }

    protected abstract void onSizeChanged(int j, int k, int l, int i1);

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return super.onTouchEvent(motionevent);
    }

    public abstract void setCanStreamVideo(boolean flag, DisconnectReason disconnectreason);

}
