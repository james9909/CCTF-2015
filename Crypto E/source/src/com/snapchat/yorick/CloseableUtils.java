// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.yorick;

import java.io.Closeable;
import java.io.IOException;

// Referenced classes of package com.snapchat.yorick:
//            Timber

final class CloseableUtils
{

    private CloseableUtils()
    {
    }

    static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        IOException ioexception;
        ioexception;
        Timber.a(ioexception);
        return;
        IncompatibleClassChangeError incompatibleclasschangeerror;
        incompatibleclasschangeerror;
        throw new RuntimeException((new StringBuilder()).append("Caused by attempting to close ").append(closeable.getClass().getName()).toString(), incompatibleclasschangeerror);
    }
}
