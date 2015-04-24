// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr;


public abstract class PtrUIHandlerHook
    implements Runnable
{

    private Runnable a;
    private byte b;

    public PtrUIHandlerHook()
    {
        b = 0;
    }

    public void a()
    {
        a(null);
    }

    public void a(Runnable runnable)
    {
        if (runnable != null)
        {
            a = runnable;
        }
        switch (b)
        {
        case 1: // '\001'
        default:
            return;

        case 0: // '\0'
            b = 1;
            run();
            return;

        case 2: // '\002'
            c();
            break;
        }
    }

    public void b()
    {
        b = 0;
    }

    public void b(Runnable runnable)
    {
        a = runnable;
    }

    public void c()
    {
        if (a != null)
        {
            a.run();
        }
        b = 2;
    }
}
