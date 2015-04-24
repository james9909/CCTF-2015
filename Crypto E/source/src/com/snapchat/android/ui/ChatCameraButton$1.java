// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.media.MediaPlayer;

// Referenced classes of package com.snapchat.android.ui:
//            ChatCameraButton

class a extends Thread
{

    final Context a;
    final ChatCameraButton b;

    public void run()
    {
        ChatCameraButton.a(b, MediaPlayer.create(a, 0x7f060004));
    }

    (ChatCameraButton chatcamerabutton, Context context)
    {
        b = chatcamerabutton;
        a = context;
        super();
    }
}
