// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import android.content.Context;

public class SnapMessageFeedRefreshedEvent
{
    public static final class RefreshError extends Enum
    {

        public static final RefreshError a;
        public static final RefreshError b;
        public static final RefreshError c;
        public static final RefreshError d;
        private static final RefreshError e[];

        public static RefreshError valueOf(String s)
        {
            return (RefreshError)Enum.valueOf(com/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError, s);
        }

        public static RefreshError[] values()
        {
            return (RefreshError[])e.clone();
        }

        static 
        {
            a = new RefreshError("NONE", 0);
            b = new RefreshError("EXTERNAL_STORAGE_UNAVAILABLE", 1);
            c = new RefreshError("FAIL_TO_UPDATE", 2);
            d = new RefreshError("AUTHENTICATION_ERROR", 3);
            RefreshError arefresherror[] = new RefreshError[4];
            arefresherror[0] = a;
            arefresherror[1] = b;
            arefresherror[2] = c;
            arefresherror[3] = d;
            e = arefresherror;
        }

        private RefreshError(String s, int i)
        {
            super(s, i);
        }
    }


    private RefreshError a;
    private int b;

    public SnapMessageFeedRefreshedEvent(int i)
    {
        a = RefreshError.a;
        b = -1;
        b = i;
    }

    public RefreshError a()
    {
        return a;
    }

    public String a(Context context)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[RefreshError.values().length];
                try
                {
                    a[RefreshError.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[RefreshError.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[RefreshError.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[RefreshError.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[a.ordinal()])
        {
        default:
            return "";

        case 2: // '\002'
            return context.getString(0x7f0c00a4);

        case 3: // '\003'
            return context.getString(0x7f0c00ad);

        case 4: // '\004'
            return context.getString(0x7f0c022d);

        case 1: // '\001'
            return "";
        }
    }

    public void a(RefreshError refresherror)
    {
        a = refresherror;
    }

    public int b()
    {
        return b;
    }
}
