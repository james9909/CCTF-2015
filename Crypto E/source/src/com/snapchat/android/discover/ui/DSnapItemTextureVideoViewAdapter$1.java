// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import com.snapchat.android.discover.ui.media.DSnapMediaListener;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemTextureVideoViewAdapter

class a
    implements DSnapMediaListener
{

    final DSnapMediaListener a;
    final DSnapItemTextureVideoViewAdapter b;

    public void a()
    {
        a.a();
    }

    public void a(String s)
    {
        a.a(s);
    }

    public void b()
    {
        DSnapItemTextureVideoViewAdapter.a(b, true);
        DSnapItemTextureVideoViewAdapter.a(b);
    }

    I(DSnapItemTextureVideoViewAdapter dsnapitemtexturevideoviewadapter, DSnapMediaListener dsnapmedialistener)
    {
        b = dsnapitemtexturevideoviewadapter;
        a = dsnapmedialistener;
        super();
    }
}
