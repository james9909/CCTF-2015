// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil, PhoneNumberMatcher

public static abstract class <init> extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    private static final e e[];

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$Leniency, s);
    }

    public static <init>[] values()
    {
        return (<init>[])e.clone();
    }

    abstract boolean a(y_3B_.clone clone, String s, PhoneNumberUtil phonenumberutil);

    static 
    {
        a = new PhoneNumberUtil.Leniency("POSSIBLE", 0) {

            boolean a(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
            {
                return phonenumberutil.d(phonenumber);
            }

        };
        b = new PhoneNumberUtil.Leniency("VALID", 1) {

            boolean a(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
            {
                if (!phonenumberutil.b(phonenumber) || !PhoneNumberMatcher.a(phonenumber, s, phonenumberutil))
                {
                    return false;
                } else
                {
                    return PhoneNumberMatcher.a(phonenumber, phonenumberutil);
                }
            }

        };
        c = new PhoneNumberUtil.Leniency("STRICT_GROUPING", 2) {

            boolean a(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
            {
                if (!phonenumberutil.b(phonenumber) || !PhoneNumberMatcher.a(phonenumber, s, phonenumberutil) || PhoneNumberMatcher.a(phonenumber, s) || !PhoneNumberMatcher.a(phonenumber, phonenumberutil))
                {
                    return false;
                } else
                {
                    return PhoneNumberMatcher.a(phonenumber, s, phonenumberutil, new PhoneNumberMatcher.NumberGroupingChecker(this) {

                        final _cls3 a;

                        public boolean a(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
                        {
                            return PhoneNumberMatcher.a(phonenumberutil, phonenumber, stringbuilder, as);
                        }

            
            {
                a = _pcls3;
                super();
            }
                    });
                }
            }

        };
        d = new PhoneNumberUtil.Leniency("EXACT_GROUPING", 3) {

            boolean a(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
            {
                if (!phonenumberutil.b(phonenumber) || !PhoneNumberMatcher.a(phonenumber, s, phonenumberutil) || PhoneNumberMatcher.a(phonenumber, s) || !PhoneNumberMatcher.a(phonenumber, phonenumberutil))
                {
                    return false;
                } else
                {
                    return PhoneNumberMatcher.a(phonenumber, s, phonenumberutil, new PhoneNumberMatcher.NumberGroupingChecker(this) {

                        final _cls4 a;

                        public boolean a(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
                        {
                            return PhoneNumberMatcher.b(phonenumberutil, phonenumber, stringbuilder, as);
                        }

            
            {
                a = _pcls4;
                super();
            }
                    });
                }
            }

        };
        y_3B_.clone aclone[] = new _cls4[4];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        e = aclone;
    }

    private _cls4(String s, int i)
    {
        super(s, i);
    }

    _cls4(String s, int i, _cls4 _pcls4)
    {
        this(s, i);
    }
}
