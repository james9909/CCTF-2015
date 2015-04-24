// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.CatchClauseSignature;

// Referenced classes of package org.aspectj.runtime.reflect:
//            SignatureImpl, StringMaker

class CatchClauseSignatureImpl extends SignatureImpl
    implements CatchClauseSignature
{

    Class a;

    protected String a(StringMaker stringmaker)
    {
        return "catch(" + stringmaker.a(w_()) + ")";
    }

    public Class w_()
    {
        if (a == null)
        {
            a = c(3);
        }
        return a;
    }
}
