// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

// Referenced classes of package com.google.android.gms.internal:
//            pe, pc

static final class <init> extends <init>
{

    final Uri aub;
    final pc aud;
    final Context no;

    public void a(int i, Bundle bundle, int j, Intent intent)
    {
        pe.b(no, aub);
        aud.a(i, bundle, j, intent);
    }

    (Context context, Uri uri, pc pc1)
    {
        no = context;
        aub = uri;
        aud = pc1;
        super();
    }
}
