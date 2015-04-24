// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;


// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionEditText

class a
    implements Runnable
{

    final CaptionEditText a;

    public void run()
    {
        a.g();
        int i = Math.min((int)a.getLastSelectedPositionY(), a.k);
        if (i != a.getTop())
        {
            a.setCaptionPositionY(i);
        }
        a.setVisibility(0);
    }

    (CaptionEditText captionedittext)
    {
        a = captionedittext;
        super();
    }
}
