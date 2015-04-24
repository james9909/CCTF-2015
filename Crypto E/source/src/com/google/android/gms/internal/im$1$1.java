// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import com.google.android.gms.appindexing.a;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ip, im, in

class tation.b extends ip
{

    final s EG;

    public void b(Status status, List list)
    {
        if (list.size() > 0)
        {
            EM.e(new nit>(status, ((a)list.get(0)).getOriginalUri(), ((a)list.get(0)).fS(), ((a)list.get(0)).getPackageName(), ((a)list.get(0)).getAction(), ((a)list.get(0)).getVerificationStatus()));
            return;
        } else
        {
            EM.e(new nit>(Status.RS, EG., null, null, null, 0));
            return;
        }
    }

    tation.b(tation.b b1, com.google.android.gms.common.api.lementation.b b2)
    {
        EG = b1;
        super(b2);
    }

    // Unreferenced inner class com/google/android/gms/internal/im$1

/* anonymous class */
    class im._cls1 extends im.a
    {

        final Uri ED;
        final List EE;
        final im EF;

        public com.google.android.gms.appindexing.AppLinkingApi.TranslatedUriResult a(Status status)
        {
            return new im.b(status, ED, null, null, null, 0);
        }

        protected void a(in in1)
        {
            in1.a(new im._cls1._cls1(this, this), EE);
        }

        public Result b(Status status)
        {
            return a(status);
        }

            
            {
                EF = im1;
                ED = uri;
                EE = list;
                super(googleapiclient);
            }
    }

}
