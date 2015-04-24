// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            InChatCameraDecor

class a
    implements android.view.
{

    final InChatCameraDecor a;

    public void onClick(View view)
    {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        FragmentActivity fragmentactivity = a.a.h();
        if (intent.resolveActivity(fragmentactivity.getPackageManager()) != null)
        {
            fragmentactivity.startActivityForResult(intent, 1001);
        }
    }

    corInterface(InChatCameraDecor inchatcameradecor)
    {
        a = inchatcameradecor;
        super();
    }
}
