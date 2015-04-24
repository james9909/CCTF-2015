// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.data.gson.identity.ValidateEmailResponse;

public class ValidationEmailEvent
{

    public final String a;
    public final ValidateEmailResponse b;

    public ValidationEmailEvent(String s, ValidateEmailResponse validateemailresponse)
    {
        a = s;
        b = validateemailresponse;
    }
}
