// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.dialog;

import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.ui.dialog:
//            ConfirmSaveStoryToGalleryDialog

class a
    implements com.snapchat.android.util.r
{

    final ConfirmSaveStoryToGalleryDialog a;

    public void a(com.snapchat.android.util.og._cls1 _pcls1)
    {
        switch (a[_pcls1.al()])
        {
        default:
            throw new IllegalStateException("Illegal dialog option");

        case 1: // '\001'
            UserPrefs.w(false);
            ConfirmSaveStoryToGalleryDialog.a(a);
            // fall through

        case 3: // '\003'
            return;

        case 2: // '\002'
            ConfirmSaveStoryToGalleryDialog.a(a);
            break;
        }
    }

    (ConfirmSaveStoryToGalleryDialog confirmsavestorytogallerydialog)
    {
        a = confirmsavestorytogallerydialog;
        super();
    }
}
