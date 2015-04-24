// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ip, im, in

class tation.b extends ip
{

    final s.RS EH;

    public void b(Status status, List list)
    {
        if (list != null && list.size() > 0)
        {
            EM.e(EH..a(status, list));
            return;
        } else
        {
            EM.e(EH..a(Status.RS, list));
            return;
        }
    }

    tation.b(tation.b b1, com.google.android.gms.common.api.lementation.b b2)
    {
        EH = b1;
        super(b2);
    }

    // Unreferenced inner class com/google/android/gms/internal/im$2

/* anonymous class */
    class im._cls2 extends im.a
    {

        final List EE;
        final im EF;

        protected void a(in in1)
        {
            in1.a(new im._cls2._cls1(this, this), EE);
        }

        public Result b(Status status)
        {
            return c(status);
        }

        public com.google.android.gms.appindexing.AppLinkingApi.TranslatedUriResults c(Status status)
        {
            return new im.c(status, null);
        }

            
            {
                EF = im1;
                EE = list;
                super(googleapiclient);
            }
    }

}
