// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.constraints;

import java.lang.annotation.Annotation;

public interface Pattern
    extends Annotation
{
    public static final class Flag extends Enum
    {

        private static final Flag $VALUES[];
        public static final Flag CANON_EQ;
        public static final Flag CASE_INSENSITIVE;
        public static final Flag COMMENTS;
        public static final Flag DOTALL;
        public static final Flag MULTILINE;
        public static final Flag UNICODE_CASE;
        public static final Flag UNIX_LINES;
        private final int value;

        public static Flag valueOf(String s)
        {
            return (Flag)Enum.valueOf(javax/validation/constraints/Pattern$Flag, s);
        }

        public static Flag[] values()
        {
            return (Flag[])$VALUES.clone();
        }

        public int getValue()
        {
            return value;
        }

        static 
        {
            UNIX_LINES = new Flag("UNIX_LINES", 0, 1);
            CASE_INSENSITIVE = new Flag("CASE_INSENSITIVE", 1, 2);
            COMMENTS = new Flag("COMMENTS", 2, 4);
            MULTILINE = new Flag("MULTILINE", 3, 8);
            DOTALL = new Flag("DOTALL", 4, 32);
            UNICODE_CASE = new Flag("UNICODE_CASE", 5, 64);
            CANON_EQ = new Flag("CANON_EQ", 6, 128);
            Flag aflag[] = new Flag[7];
            aflag[0] = UNIX_LINES;
            aflag[1] = CASE_INSENSITIVE;
            aflag[2] = COMMENTS;
            aflag[3] = MULTILINE;
            aflag[4] = DOTALL;
            aflag[5] = UNICODE_CASE;
            aflag[6] = CANON_EQ;
            $VALUES = aflag;
        }

        private Flag(String s, int i, int j)
        {
            super(s, i);
            value = j;
        }
    }

    public static interface List
        extends Annotation
    {

        public abstract Pattern[] value();
    }


    public abstract Flag[] flags();

    public abstract Class[] groups();

    public abstract String message();

    public abstract Class[] payload();

    public abstract String regexp();
}
