// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.cache.SaveImageToGalleryTask;

// Referenced classes of package com.snapchat.android.ui.dialog:
//            ConfirmSaveStoryToGalleryDialog

class a extends SaveImageToGalleryTask
{

    final ConfirmSaveStoryToGalleryDialog a;

    protected void a()
    {
        super.a();
        ConfirmSaveStoryToGalleryDialog.b(a).a(com.snapchat.android.model.g._cls2.a);
    }

    protected void b()
    {
        super.b();
        AlertDialogUtils.a(0x7f0c016f, c);
        ConfirmSaveStoryToGalleryDialog.b(a).a(com.snapchat.android.model.g._cls2.a);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        ConfirmSaveStoryToGalleryDialog.b(a).a(com.snapchat.android.model.g._cls2.a);
    }

    (ConfirmSaveStoryToGalleryDialog confirmsavestorytogallerydialog, Context context, Bitmap bitmap)
    {
        a = confirmsavestorytogallerydialog;
        super(context, bitmap);
    }
}
