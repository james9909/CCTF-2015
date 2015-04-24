// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;

public class rp extends IOException
{

    public rp(String s)
    {
        super(s);
    }

    static rp ub()
    {
        return new rp("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    static rp uc()
    {
        return new rp("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static rp ud()
    {
        return new rp("CodedInputStream encountered a malformed varint.");
    }

    static rp ue()
    {
        return new rp("Protocol message contained an invalid tag (zero).");
    }

    static rp uf()
    {
        return new rp("Protocol message end-group tag did not match expected tag.");
    }

    static rp ug()
    {
        return new rp("Protocol message tag had invalid wire type.");
    }

    static rp uh()
    {
        return new rp("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }
}
