// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


// Referenced classes of package crittercism.android:
//            bm, bn

public static final class ry
    implements bm
{

    private Long a;

    public final String a()
    {
        return "memory_total";
    }

    public final volatile Object b()
    {
        return a;
    }

    public ()
    {
        a = null;
        a = Long.valueOf(Runtime.getRuntime().maxMemory());
    }
}
