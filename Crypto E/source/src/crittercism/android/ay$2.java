// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.DialogInterface;

// Referenced classes of package crittercism.android:
//            ay, dg

final class erface
    implements android.content.gInterface.OnClickListener
{

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        try
        {
            ay.t();
            return;
        }
        catch (Exception exception)
        {
            dg.c("CrittercismInstance", "MAYBE LATER button failed.  Email support@crittercism.com.");
        }
    }
}
