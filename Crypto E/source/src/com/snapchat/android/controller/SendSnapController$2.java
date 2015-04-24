// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller;


// Referenced classes of package com.snapchat.android.controller:
//            SendSnapController

static class 
{

    static final int a[];

    static 
    {
        a = new int[com.snapchat.android.model.s.values().length];
        try
        {
            a[com.snapchat.android.model.s.UPLOADED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[com.snapchat.android.model.s.FAILED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[com.snapchat.android.model.s.UPLOADING.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[com.snapchat.android.model.s.WILL_UPLOAD_AFTER_SAVE.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[com.snapchat.android.model.s.NOT_UPLOADED.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4)
        {
            return;
        }
    }
}
