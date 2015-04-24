// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberMatcher, PhoneNumberUtil

class a
    implements pingChecker
{

    final pingChecker a;

    public boolean a(PhoneNumberUtil phonenumberutil, pingChecker pingchecker, StringBuilder stringbuilder, String as[])
    {
        return PhoneNumberMatcher.b(phonenumberutil, pingchecker, stringbuilder, as);
    }

    pingChecker(pingChecker pingchecker)
    {
        a = pingchecker;
        super();
    }

    // Unreferenced inner class com/google/i18n/phonenumbers/PhoneNumberUtil$Leniency$4

/* anonymous class */
    static final class PhoneNumberUtil.Leniency._cls4 extends PhoneNumberUtil.Leniency
    {

        boolean a(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
        {
            if (!phonenumberutil.b(phonenumber) || !PhoneNumberMatcher.a(phonenumber, s, phonenumberutil) || PhoneNumberMatcher.a(phonenumber, s) || !PhoneNumberMatcher.a(phonenumber, phonenumberutil))
            {
                return false;
            } else
            {
                return PhoneNumberMatcher.a(phonenumber, s, phonenumberutil, new PhoneNumberUtil.Leniency._cls4._cls1(this));
            }
        }

    }

}
