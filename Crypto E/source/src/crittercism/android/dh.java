// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


// Referenced classes of package crittercism.android:
//            cm

public final class dh extends Thread
{

    public dh(Runnable runnable)
    {
        super(new cm(runnable));
    }

    public dh(Runnable runnable, String s)
    {
        super(new cm(runnable), s);
    }
}