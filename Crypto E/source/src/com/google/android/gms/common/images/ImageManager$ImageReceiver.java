// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.b;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.google.android.gms.common.images:
//            ImageManager, a

final class mUri extends ResultReceiver
{

    private final ArrayList SU = new ArrayList();
    final ImageManager SV;
    private final Uri mUri;

    static ArrayList a(mUri muri)
    {
        return muri.SU;
    }

    public void b(a a1)
    {
        com.google.android.gms.common.internal.b.bb("ImageReceiver.addImageRequest() must be called in the main thread");
        SU.add(a1);
    }

    public void c(a a1)
    {
        com.google.android.gms.common.internal.b.bb("ImageReceiver.removeImageRequest() must be called in the main thread");
        SU.remove(a1);
    }

    public void jw()
    {
        Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
        intent.putExtra("com.google.android.gms.extras.uri", mUri);
        intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
        intent.putExtra("com.google.android.gms.extras.priority", 3);
        com.google.android.gms.common.images.ImageManager.b(SV).sendBroadcast(intent);
    }

    public void onReceiveResult(int i, Bundle bundle)
    {
        ParcelFileDescriptor parcelfiledescriptor = (ParcelFileDescriptor)bundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
        ImageManager.f(SV).execute(new SV(SV, mUri, parcelfiledescriptor));
    }

    (ImageManager imagemanager, Uri uri)
    {
        SV = imagemanager;
        super(new Handler(Looper.getMainLooper()));
        mUri = uri;
    }
}
