// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller;

import com.snapchat.android.api.UploadMediaTask;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.server.ServerResponse;
import java.util.HashMap;

// Referenced classes of package com.snapchat.android.controller:
//            UploadSnapMediaController

class a extends UploadMediaTask
{

    final AnnotatedMediabryo a;
    final UploadSnapMediaController b;

    protected void a(ServerResponse serverresponse)
    {
        super.a(serverresponse);
        UploadSnapMediaController.b().remove(a.N());
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }

    A(UploadSnapMediaController uploadsnapmediacontroller, AnnotatedMediabryo annotatedmediabryo, AnnotatedMediabryo annotatedmediabryo1)
    {
        b = uploadsnapmediacontroller;
        a = annotatedmediabryo1;
        super(annotatedmediabryo);
    }
}
