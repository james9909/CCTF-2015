// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.network;

import android.database.Cursor;
import com.snapchat.android.Timber;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;

public final class CloseableUtils
{

    private CloseableUtils()
    {
    }

    public static void a(Cursor cursor)
    {
        if (cursor != null)
        {
            cursor.close();
        }
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        IOException ioexception;
        ioexception;
        Timber.a("CloseableUtils", ioexception);
        return;
        IncompatibleClassChangeError incompatibleclasschangeerror;
        incompatibleclasschangeerror;
        throw new RuntimeException((new StringBuilder()).append("Caused by attempting to close ").append(closeable.getClass().getName()).toString(), incompatibleclasschangeerror);
    }

    public static void a(Socket socket)
    {
        if (socket == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        socket.close();
        return;
        IOException ioexception;
        ioexception;
        Timber.a("CloseableUtils", ioexception);
        return;
    }
}
