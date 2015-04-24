// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller;

import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.util.cache.SaveSentSnapToCacheTask;
import java.util.HashMap;

// Referenced classes of package com.snapchat.android.controller:
//            UploadSnapMediaController

class t> extends SaveSentSnapToCacheTask
{

    final AnnotatedMediabryo a;
    final UploadSnapMediaController b;

    protected void a(Void void1)
    {
        b.b(a);
        UploadSnapMediaController.a().remove(a.N());
        super.onPostExecute(void1);
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }

    A(UploadSnapMediaController uploadsnapmediacontroller, AnnotatedMediabryo annotatedmediabryo)
    {
        b = uploadsnapmediacontroller;
        a = annotatedmediabryo;
        super();
    }
}
