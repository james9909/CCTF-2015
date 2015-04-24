// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.location;

import android.content.DialogInterface;

// Referenced classes of package com.snapchat.android.location:
//            LocationPermissionsAccessor

class a
    implements android.content.r
{

    final cationPermissionsDialogListener a;
    final LocationPermissionsAccessor b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (a != null)
        {
            a.a(false);
        }
    }

    cationPermissionsDialogListener(LocationPermissionsAccessor locationpermissionsaccessor, cationPermissionsDialogListener cationpermissionsdialoglistener)
    {
        b = locationpermissionsaccessor;
        a = cationpermissionsdialoglistener;
        super();
    }
}
