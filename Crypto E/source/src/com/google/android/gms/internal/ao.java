// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class ao
{

    private static MessageDigest oc = null;
    protected Object mL;

    public ao()
    {
        mL = new Object();
    }

    protected MessageDigest bn()
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        MessageDigest messagedigest1;
        if (oc == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        messagedigest1 = oc;
        return messagedigest1;
        int i = 0;
        while (i < 2) 
        {
            Exception exception;
            MessageDigest messagedigest;
            try
            {
                oc = MessageDigest.getInstance("MD5");
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception) { }
            finally { }
            i++;
        }
        messagedigest = oc;
        obj;
        JVM INSTR monitorexit ;
        return messagedigest;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    abstract byte[] l(String s);

}
