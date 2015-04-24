// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


public class NumberParseException extends Exception
{
    public static final class ErrorType extends Enum
    {

        public static final ErrorType a;
        public static final ErrorType b;
        public static final ErrorType c;
        public static final ErrorType d;
        public static final ErrorType e;
        private static final ErrorType f[];

        public static ErrorType valueOf(String s)
        {
            return (ErrorType)Enum.valueOf(com/google/i18n/phonenumbers/NumberParseException$ErrorType, s);
        }

        public static ErrorType[] values()
        {
            return (ErrorType[])f.clone();
        }

        static 
        {
            a = new ErrorType("INVALID_COUNTRY_CODE", 0);
            b = new ErrorType("NOT_A_NUMBER", 1);
            c = new ErrorType("TOO_SHORT_AFTER_IDD", 2);
            d = new ErrorType("TOO_SHORT_NSN", 3);
            e = new ErrorType("TOO_LONG", 4);
            ErrorType aerrortype[] = new ErrorType[5];
            aerrortype[0] = a;
            aerrortype[1] = b;
            aerrortype[2] = c;
            aerrortype[3] = d;
            aerrortype[4] = e;
            f = aerrortype;
        }

        private ErrorType(String s, int i)
        {
            super(s, i);
        }
    }


    private ErrorType a;
    private String b;

    public NumberParseException(ErrorType errortype, String s)
    {
        super(s);
        b = s;
        a = errortype;
    }

    public ErrorType a()
    {
        return a;
    }

    public String toString()
    {
        String s = String.valueOf(String.valueOf(a));
        String s1 = String.valueOf(String.valueOf(b));
        return (new StringBuilder(14 + s.length() + s1.length())).append("Error type: ").append(s).append(". ").append(s1).toString();
    }
}
