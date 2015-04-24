// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.eventbus.CameraReadyEvent;

// Referenced classes of package com.snapchat.android.ui.here:
//            StreamView, DisconnectReason

public class DummyStreamView extends StreamView
{

    public DummyStreamView(Context context)
    {
        super(context);
    }

    public DummyStreamView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public DummyStreamView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public static DummyStreamView getLastInstance()
    {
        return null;
    }

    public static void setCameraInfo(android.hardware.Camera.CameraInfo camerainfo)
    {
    }

    public static void setCameraPreviewSize(Resolution resolution)
    {
    }

    public void a()
    {
    }

    public void a(Activity activity, StreamView.StreamViewCallback streamviewcallback)
    {
    }

    public void a(MotionEvent motionevent)
    {
    }

    public void a(View view)
    {
    }

    public void a(ChatConversation chatconversation)
    {
    }

    public void a(DisconnectReason disconnectreason)
    {
    }

    public void a(boolean flag)
    {
    }

    public void b()
    {
    }

    public void b(DisconnectReason disconnectreason)
    {
    }

    public void b(boolean flag)
    {
    }

    public void c()
    {
    }

    public boolean d()
    {
        return false;
    }

    protected void dispatchDraw(Canvas canvas)
    {
    }

    public boolean e()
    {
        return false;
    }

    public void onCameraReadyEvent(CameraReadyEvent camerareadyevent)
    {
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return false;
    }

    public void setCanStreamVideo(boolean flag, DisconnectReason disconnectreason)
    {
    }
}
