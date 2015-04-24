// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding;

import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.camera.transcoding:
//            TranscodingHistory

public class TranscodingPreferencesWrapper
{
    public static final class TranscodingEnabled extends Enum
    {

        public static final TranscodingEnabled a;
        public static final TranscodingEnabled b;
        public static final TranscodingEnabled c;
        public static final TranscodingEnabled d;
        public static final TranscodingEnabled e;
        public static final TranscodingEnabled f;
        private static final TranscodingEnabled h[];
        private int g;

        public static TranscodingEnabled valueOf(String s)
        {
            return (TranscodingEnabled)Enum.valueOf(com/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled, s);
        }

        public static TranscodingEnabled[] values()
        {
            return (TranscodingEnabled[])h.clone();
        }

        public int a()
        {
            return g;
        }

        static 
        {
            a = new TranscodingEnabled("UNKNOWN", 0, 0);
            b = new TranscodingEnabled("BLOCKED", 1, 1);
            c = new TranscodingEnabled("TRANSCODING_NOT_SUPPORTED", 2, 2);
            d = new TranscodingEnabled("ENABLED_FOR_LOW_QUALITY", 3, 3);
            e = new TranscodingEnabled("ENABLED", 4, 4);
            f = new TranscodingEnabled("DISABLED", 5, 5);
            TranscodingEnabled atranscodingenabled[] = new TranscodingEnabled[6];
            atranscodingenabled[0] = a;
            atranscodingenabled[1] = b;
            atranscodingenabled[2] = c;
            atranscodingenabled[3] = d;
            atranscodingenabled[4] = e;
            atranscodingenabled[5] = f;
            h = atranscodingenabled;
        }

        private TranscodingEnabled(String s, int i, int j)
        {
            super(s, i);
            g = j;
        }
    }


    private static TranscodingPreferencesWrapper a = null;
    private final TranscodingHistory b;

    private TranscodingPreferencesWrapper()
    {
        this(new TranscodingHistory());
    }

    protected TranscodingPreferencesWrapper(TranscodingHistory transcodinghistory)
    {
        b = transcodinghistory;
        if (android.os.Build.VERSION.SDK_INT < 18)
        {
            a(TranscodingEnabled.c);
        }
        a = this;
    }

    public static TranscodingPreferencesWrapper a()
    {
        if (a == null)
        {
            a = new TranscodingPreferencesWrapper();
        }
        return a;
    }

    private void c()
    {
        if (b.a() >= 5)
        {
            Timber.e("TranscodingPreferencesWrapper", "Transcoding has failed too many times disabling for phone", new Object[0]);
            a(TranscodingEnabled.f);
        }
    }

    private void c(boolean flag)
    {
        if (flag)
        {
            a(TranscodingEnabled.e);
            return;
        } else
        {
            a(TranscodingEnabled.f);
            return;
        }
    }

    private TranscodingEnabled d()
    {
        String s = UserPrefs.aF();
        Timber.a("TranscodingPreferencesWrapper", (new StringBuilder()).append("loadTranscodingState ").append(s).toString(), new Object[0]);
        return TranscodingEnabled.valueOf(s);
    }

    protected void a(TranscodingEnabled transcodingenabled)
    {
        Timber.a("TranscodingPreferencesWrapper", (new StringBuilder()).append("storeTranscodingState ").append(transcodingenabled.name()).toString(), new Object[0]);
        UserPrefs.r(transcodingenabled.name());
        (new EasyMetric("STORE_TRANSCODING_STATE")).a("transcoding_status", Integer.valueOf(transcodingenabled.a())).c();
    }

    public void a(boolean flag)
    {
        TranscodingEnabled transcodingenabled = d();
        if (flag && (transcodingenabled == TranscodingEnabled.a || transcodingenabled == TranscodingEnabled.b))
        {
            a(TranscodingEnabled.d);
        } else
        if (!flag && transcodingenabled != TranscodingEnabled.c)
        {
            a(TranscodingEnabled.b);
            return;
        }
    }

    public TranscodingEnabled b()
    {
        TranscodingEnabled transcodingenabled = d();
        Timber.a("TranscodingPreferencesWrapper", (new StringBuilder()).append("ShouldUseTranscoding ").append(transcodingenabled).toString(), new Object[0]);
        return transcodingenabled;
    }

    public void b(boolean flag)
    {
        b.a(flag);
        c();
        if (d() == TranscodingEnabled.d)
        {
            c(flag);
        }
    }

}
