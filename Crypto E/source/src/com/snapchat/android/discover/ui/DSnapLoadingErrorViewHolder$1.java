// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.view.View;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapLoadingErrorViewHolder

class a
    implements android.view.ngErrorViewHolder._cls1
{

    final android.view.ngErrorViewHolder._cls1.a a;
    final DSnapLoadingErrorViewHolder b;

    public void onClick(View view)
    {
        DSnapLoadingErrorViewHolder.a(b, true);
        if (a != null)
        {
            a.a(view);
        }
    }

    (DSnapLoadingErrorViewHolder dsnaploadingerrorviewholder, android.view.ngErrorViewHolder ngerrorviewholder)
    {
        b = dsnaploadingerrorviewholder;
        a = ngerrorviewholder;
        super();
    }
}
