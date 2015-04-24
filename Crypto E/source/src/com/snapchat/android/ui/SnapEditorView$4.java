// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import com.snapchat.android.util.PhotoEffectTask;

// Referenced classes of package com.snapchat.android.ui:
//            SnapEditorView

class  extends PhotoEffectTask
{

    final SnapEditorView a;

    public void a(Bitmap bitmap)
    {
        if (bitmap == null)
        {
            return;
        } else
        {
            SnapEditorView.a(a, bitmap, false, true);
            return;
        }
    }

    public void onPostExecute(Object obj)
    {
        a((Bitmap)obj);
    }

    (SnapEditorView snapeditorview, String s, Context context)
    {
        a = snapeditorview;
        super(s, context);
    }
}
