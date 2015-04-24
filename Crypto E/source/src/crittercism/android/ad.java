// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.net.SocketImpl;
import java.net.SocketImplFactory;

// Referenced classes of package crittercism.android:
//            by, ac, e, d

public final class ad
    implements SocketImplFactory
{

    private Class a;
    private SocketImplFactory b;
    private e c;
    private d d;

    public ad(Class class1, e e, d d1)
    {
        c = e;
        d = d1;
        a = class1;
        Class class2 = a;
        if (class2 == null)
        {
            throw new by("Class was null");
        }
        try
        {
            class2.newInstance();
            return;
        }
        catch (Throwable throwable)
        {
            throw new by("Unable to create new instance", throwable);
        }
    }

    public ad(SocketImplFactory socketimplfactory, e e, d d1)
    {
        c = e;
        d = d1;
        b = socketimplfactory;
        SocketImplFactory socketimplfactory1 = b;
        if (socketimplfactory1 == null)
        {
            throw new by("Factory was null");
        }
        try
        {
            if (socketimplfactory1.createSocketImpl() == null)
            {
                throw new by("Factory does not work");
            }
        }
        catch (Throwable throwable)
        {
            throw new by("Factory does not work", throwable);
        }
    }

    public final SocketImpl createSocketImpl()
    {
        if (b == null) goto _L2; else goto _L1
_L1:
        SocketImpl socketimpl = b.createSocketImpl();
_L3:
        InstantiationException instantiationexception;
        IllegalAccessException illegalaccessexception;
        SocketImpl socketimpl1;
        if (socketimpl != null)
        {
            return new ac(c, d, socketimpl);
        } else
        {
            return socketimpl;
        }
_L2:
        a;
        socketimpl1 = (SocketImpl)a.newInstance();
        socketimpl = socketimpl1;
          goto _L3
        illegalaccessexception;
        illegalaccessexception.printStackTrace();
        socketimpl = null;
          goto _L3
        instantiationexception;
        instantiationexception.printStackTrace();
        socketimpl = null;
          goto _L3
    }
}
