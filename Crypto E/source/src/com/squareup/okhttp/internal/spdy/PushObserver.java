// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.util.List;
import okio.BufferedSource;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            ErrorCode

public interface PushObserver
{

    public static final PushObserver a = new PushObserver() {

        public void a(int i, ErrorCode errorcode)
        {
        }

        public boolean a(int i, List list)
        {
            return true;
        }

        public boolean a(int i, List list, boolean flag)
        {
            return true;
        }

        public boolean a(int i, BufferedSource bufferedsource, int j, boolean flag)
        {
            bufferedsource.g(j);
            return true;
        }

    };

    public abstract void a(int i, ErrorCode errorcode);

    public abstract boolean a(int i, List list);

    public abstract boolean a(int i, List list, boolean flag);

    public abstract boolean a(int i, BufferedSource bufferedsource, int j, boolean flag);

}
