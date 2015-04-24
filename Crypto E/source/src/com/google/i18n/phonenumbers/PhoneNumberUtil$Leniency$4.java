// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil, PhoneNumberMatcher

static final class nit> extends nit>
{

    boolean a(nit> nit>, String s, PhoneNumberUtil phonenumberutil)
    {
        if (!phonenumberutil.b(nit>) || !PhoneNumberMatcher.a(nit>, s, phonenumberutil) || PhoneNumberMatcher.a(nit>, s) || !PhoneNumberMatcher.a(nit>, phonenumberutil))
        {
            return false;
        } else
        {
            return PhoneNumberMatcher.a(nit>, s, phonenumberutil, new PhoneNumberMatcher.NumberGroupingChecker() {

                final PhoneNumberUtil.Leniency._cls4 a;

                public boolean a(PhoneNumberUtil phonenumberutil1, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
                {
                    return PhoneNumberMatcher.b(phonenumberutil1, phonenumber, stringbuilder, as);
                }

            
            {
                a = PhoneNumberUtil.Leniency._cls4.this;
                super();
            }
            });
        }
    }

    _cls1.a(String s, int i)
    {
        super(s, i, null);
    }
}
