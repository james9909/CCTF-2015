// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.aspectj.lang.reflect.AjType;
import org.aspectj.lang.reflect.AjTypeSystem;
import org.aspectj.lang.reflect.InterTypeMethodDeclaration;

// Referenced classes of package org.aspectj.internal.lang.reflect:
//            InterTypeDeclarationImpl

public class InterTypeMethodDeclarationImpl extends InterTypeDeclarationImpl
    implements InterTypeMethodDeclaration
{

    private String b;
    private Method c;
    private int d;

    public String a()
    {
        return b;
    }

    public AjType c()
    {
        return AjTypeSystem.a(c.getReturnType());
    }

    public AjType[] d()
    {
        Class aclass[] = c.getParameterTypes();
        AjType aajtype[] = new AjType[aclass.length - d];
        for (int i = d; i < aclass.length; i++)
        {
            aajtype[i - d] = AjTypeSystem.a(aclass[i]);
        }

        return aajtype;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(Modifier.toString(b()));
        stringbuffer.append(" ");
        stringbuffer.append(c().toString());
        stringbuffer.append(" ");
        stringbuffer.append(a);
        stringbuffer.append(".");
        stringbuffer.append(a());
        stringbuffer.append("(");
        AjType aajtype[] = d();
        for (int i = 0; i < -1 + aajtype.length; i++)
        {
            stringbuffer.append(aajtype[i].toString());
            stringbuffer.append(", ");
        }

        if (aajtype.length > 0)
        {
            stringbuffer.append(aajtype[-1 + aajtype.length].toString());
        }
        stringbuffer.append(")");
        return stringbuffer.toString();
    }
}
