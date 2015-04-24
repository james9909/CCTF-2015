// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;


// Referenced classes of package com.snapchat.android.ui.caption:
//            VanillaCaptionEditText

class a
    implements Runnable
{

    final VanillaCaptionEditText a;

    public void run()
    {
        if (!a.a() && a.h)
        {
            a.c = -1;
            a.a(true);
        }
    }

    (VanillaCaptionEditText vanillacaptionedittext)
    {
        a = vanillacaptionedittext;
        super();
    }
}
