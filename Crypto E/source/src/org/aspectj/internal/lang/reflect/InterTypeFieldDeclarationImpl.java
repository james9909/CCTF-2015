// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Modifier;
import org.aspectj.lang.reflect.AjType;
import org.aspectj.lang.reflect.InterTypeFieldDeclaration;

// Referenced classes of package org.aspectj.internal.lang.reflect:
//            InterTypeDeclarationImpl

public class InterTypeFieldDeclarationImpl extends InterTypeDeclarationImpl
    implements InterTypeFieldDeclaration
{

    private String b;
    private AjType c;

    public String a()
    {
        return b;
    }

    public AjType c()
    {
        return c;
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
        return stringbuffer.toString();
    }
}
