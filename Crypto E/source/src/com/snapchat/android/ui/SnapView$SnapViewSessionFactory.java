// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.view.ViewGroup;
import com.snapchat.android.model.ChronologicalSnapProvider;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.ui.snapview.SnapViewSession;

// Referenced classes of package com.snapchat.android.ui:
//            SnapView, SnapTimerView

public static class 
{

    public SnapViewSession a(ReceivedSnap receivedsnap, ChronologicalSnapProvider chronologicalsnapprovider, ViewGroup viewgroup, boolean flag, SnapTimerView snaptimerview, boolean flag1, SnapMediaRenderer snapmediarenderer)
    {
        return new SnapViewSession(receivedsnap, chronologicalsnapprovider, viewgroup, flag, snaptimerview, flag1, snapmediarenderer);
    }

    protected ()
    {
    }
}
