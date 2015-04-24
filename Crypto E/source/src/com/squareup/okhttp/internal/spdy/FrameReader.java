// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.Closeable;
import java.util.List;
import okio.BufferedSource;
import okio.ByteString;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            ErrorCode, Settings, HeadersMode

public interface FrameReader
    extends Closeable
{
    public static interface Handler
    {

        public abstract void a();

        public abstract void a(int i, int j, int k, boolean flag);

        public abstract void a(int i, int j, List list);

        public abstract void a(int i, long l);

        public abstract void a(int i, ErrorCode errorcode);

        public abstract void a(int i, ErrorCode errorcode, ByteString bytestring);

        public abstract void a(boolean flag, int i, int j);

        public abstract void a(boolean flag, int i, BufferedSource bufferedsource, int j);

        public abstract void a(boolean flag, Settings settings);

        public abstract void a(boolean flag, boolean flag1, int i, int j, List list, HeadersMode headersmode);
    }


    public abstract void a();

    public abstract boolean a(Handler handler);
}
