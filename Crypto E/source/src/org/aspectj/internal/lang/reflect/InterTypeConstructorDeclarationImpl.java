// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.aspectj.lang.reflect.AjType;
import org.aspectj.lang.reflect.AjTypeSystem;
import org.aspectj.lang.reflect.InterTypeConstructorDeclaration;

// Referenced classes of package org.aspectj.internal.lang.reflect:
//            InterTypeDeclarationImpl

public class InterTypeConstructorDeclarationImpl extends InterTypeDeclarationImpl
    implements InterTypeConstructorDeclaration
{

    private Method b;

    public AjType[] a()
    {
        Class aclass[] = b.getParameterTypes();
        AjType aajtype[] = new AjType[-1 + aclass.length];
        for (int i = 1; i < aclass.length; i++)
        {
            aajtype[i - 1] = AjTypeSystem.a(aclass[i]);
        }

        return aajtype;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(Modifier.toString(b()));
        stringbuffer.append(" ");
        stringbuffer.append(a);
        stringbuffer.append(".new");
        stringbuffer.append("(");
        AjType aajtype[] = a();
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
