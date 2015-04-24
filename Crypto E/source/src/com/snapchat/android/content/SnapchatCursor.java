// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.content;

import android.database.CursorWrapper;
import android.os.Bundle;

public class SnapchatCursor extends CursorWrapper
{

    private Bundle a;

    public Bundle getExtras()
    {
        return a;
    }

    public Bundle respond(Bundle bundle)
    {
        if (bundle != null)
        {
            a = bundle;
        }
        return bundle;
    }
}
