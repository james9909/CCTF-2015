// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import com.snapchat.android.ui.caption.CaptionTypeEnums;

// Referenced classes of package com.snapchat.android.ui:
//            SnapEditorView

static class peEnums
{

    static final int a[];

    static 
    {
        a = new int[CaptionTypeEnums.values().length];
        try
        {
            a[CaptionTypeEnums.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[CaptionTypeEnums.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[CaptionTypeEnums.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2)
        {
            return;
        }
    }
}
