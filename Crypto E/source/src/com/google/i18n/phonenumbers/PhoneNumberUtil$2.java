// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.Iterator;

// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil, PhoneNumberMatcher

class d
    implements Iterable
{

    final CharSequence a;
    final String b;
    final niency c;
    final long d;
    final PhoneNumberUtil e;

    public Iterator iterator()
    {
        return new PhoneNumberMatcher(e, a, b, c, d);
    }

    niency(PhoneNumberUtil phonenumberutil, CharSequence charsequence, String s, niency niency, long l)
    {
        e = phonenumberutil;
        a = charsequence;
        b = s;
        c = niency;
        d = l;
        super();
    }
}
