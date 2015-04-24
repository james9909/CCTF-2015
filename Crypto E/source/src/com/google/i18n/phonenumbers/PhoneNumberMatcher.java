// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil, MetadataManager, NumberParseException, PhoneNumberMatch

final class PhoneNumberMatcher
    implements Iterator
{
    static interface NumberGroupingChecker
    {

        public abstract boolean a(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[]);
    }

    static final class State extends Enum
    {

        public static final State a;
        public static final State b;
        public static final State c;
        private static final State d[];

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberMatcher$State, s);
        }

        public static State[] values()
        {
            return (State[])d.clone();
        }

        static 
        {
            a = new State("NOT_READY", 0);
            b = new State("READY", 1);
            c = new State("DONE", 2);
            State astate[] = new State[3];
            astate[0] = a;
            astate[1] = b;
            astate[2] = c;
            d = astate;
        }

        private State(String s, int i1)
        {
            super(s, i1);
        }
    }


    private static final Pattern a;
    private static final Pattern b = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");
    private static final Pattern c = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");
    private static final Pattern d = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");
    private static final Pattern e = Pattern.compile(":[0-5]\\d");
    private static final Pattern f;
    private static final Pattern g[];
    private static final Pattern h;
    private final PhoneNumberUtil i;
    private final CharSequence j;
    private final String k;
    private final PhoneNumberUtil.Leniency l;
    private long m;
    private State n;
    private PhoneNumberMatch o;
    private int p;

    PhoneNumberMatcher(PhoneNumberUtil phonenumberutil, CharSequence charsequence, String s, PhoneNumberUtil.Leniency leniency, long l1)
    {
        n = State.a;
        o = null;
        p = 0;
        if (phonenumberutil == null || leniency == null)
        {
            throw new NullPointerException();
        }
        if (l1 < 0L)
        {
            throw new IllegalArgumentException();
        }
        i = phonenumberutil;
        if (charsequence == null)
        {
            charsequence = "";
        }
        j = charsequence;
        k = s;
        l = leniency;
        m = l1;
    }

    private PhoneNumberMatch a(int i1)
    {
        for (Matcher matcher = a.matcher(j); m > 0L && matcher.find(i1); m = m - 1L)
        {
            int j1 = matcher.start();
            CharSequence charsequence = j.subSequence(j1, matcher.end());
            CharSequence charsequence1 = a(PhoneNumberUtil.c, charsequence);
            PhoneNumberMatch phonenumbermatch = a(charsequence1, j1);
            if (phonenumbermatch != null)
            {
                return phonenumbermatch;
            }
            i1 = j1 + charsequence1.length();
        }

        return null;
    }

    private PhoneNumberMatch a(CharSequence charsequence, int i1)
    {
        boolean flag;
        PhoneNumberMatch phonenumbermatch;
        flag = c.matcher(charsequence).find();
        phonenumbermatch = null;
        if (!flag) goto _L2; else goto _L1
_L1:
        return phonenumbermatch;
_L2:
        boolean flag1;
        if (!d.matcher(charsequence).find())
        {
            break; /* Loop/switch isn't completed */
        }
        String s1 = j.toString().substring(i1 + charsequence.length());
        flag1 = e.matcher(s1).lookingAt();
        phonenumbermatch = null;
        if (flag1) goto _L1; else goto _L3
_L3:
        String s = charsequence.toString();
        phonenumbermatch = b(s, i1);
        if (phonenumbermatch == null)
        {
            return a(s, i1);
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private PhoneNumberMatch a(String s, int i1)
    {
        Pattern apattern[] = g;
        int j1 = apattern.length;
        for (int k1 = 0; k1 < j1; k1++)
        {
            Matcher matcher = apattern[k1].matcher(s);
            boolean flag = true;
            for (; matcher.find() && m > 0L; m = m - 1L)
            {
                if (flag)
                {
                    PhoneNumberMatch phonenumbermatch1 = b(a(PhoneNumberUtil.d, ((CharSequence) (s.substring(0, matcher.start())))).toString(), i1);
                    if (phonenumbermatch1 != null)
                    {
                        return phonenumbermatch1;
                    }
                    m = m - 1L;
                    flag = false;
                }
                PhoneNumberMatch phonenumbermatch = b(a(PhoneNumberUtil.d, ((CharSequence) (matcher.group(1)))).toString(), i1 + matcher.start(1));
                if (phonenumbermatch != null)
                {
                    return phonenumbermatch;
                }
            }

        }

        return null;
    }

    private static CharSequence a(Pattern pattern, CharSequence charsequence)
    {
        Matcher matcher = pattern.matcher(charsequence);
        if (matcher.find())
        {
            charsequence = charsequence.subSequence(0, matcher.start());
        }
        return charsequence;
    }

    private static String a(int i1, int j1)
    {
        if (i1 < 0 || j1 <= 0 || j1 < i1)
        {
            throw new IllegalArgumentException();
        } else
        {
            return (new StringBuilder(25)).append("{").append(i1).append(",").append(j1).append("}").toString();
        }
    }

    static boolean a(char c1)
    {
        Character.UnicodeBlock unicodeblock;
        if (Character.isLetter(c1) || Character.getType(c1) == 6)
        {
            if ((unicodeblock = Character.UnicodeBlock.of(c1)).equals(Character.UnicodeBlock.BASIC_LATIN) || unicodeblock.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT) || unicodeblock.equals(Character.UnicodeBlock.LATIN_EXTENDED_A) || unicodeblock.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL) || unicodeblock.equals(Character.UnicodeBlock.LATIN_EXTENDED_B) || unicodeblock.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS))
            {
                return true;
            }
        }
        return false;
    }

    static boolean a(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
    {
        int i1;
        int j1;
        if (phonenumber.p() != Phonenumber.PhoneNumber.CountryCodeSource.d)
        {
            String s1 = Integer.toString(phonenumber.b());
            i1 = stringbuilder.indexOf(s1) + s1.length();
        } else
        {
            i1 = 0;
        }
        j1 = i1;
        for (int k1 = 0; k1 < as.length; k1++)
        {
            int l1 = stringbuilder.indexOf(as[k1], j1);
            if (l1 < 0)
            {
                return false;
            }
            j1 = l1 + as[k1].length();
            if (k1 == 0 && j1 < stringbuilder.length() && phonenumberutil.b(phonenumberutil.b(phonenumber.b()), true) != null && Character.isDigit(stringbuilder.charAt(j1)))
            {
                String s = phonenumberutil.a(phonenumber);
                return stringbuilder.substring(j1 - as[k1].length()).startsWith(s);
            }
        }

        return stringbuilder.substring(j1).contains(phonenumber.f());
    }

    static boolean a(Phonenumber.PhoneNumber phonenumber, PhoneNumberUtil phonenumberutil)
    {
        Phonemetadata.PhoneMetadata phonemetadata;
        if (phonenumber.p() == Phonenumber.PhoneNumber.CountryCodeSource.d)
        {
            if ((phonemetadata = phonenumberutil.f(phonenumberutil.b(phonenumber.b()))) != null)
            {
                String s = phonenumberutil.a(phonenumber);
                Phonemetadata.NumberFormat numberformat = phonenumberutil.a(phonemetadata.t(), s);
                if (numberformat != null && numberformat.d().length() > 0 && !numberformat.e() && !PhoneNumberUtil.e(numberformat.d()))
                {
                    return phonenumberutil.a(new StringBuilder(PhoneNumberUtil.d(phonenumber.m())), phonemetadata, null);
                }
            }
        }
        return true;
    }

    static boolean a(Phonenumber.PhoneNumber phonenumber, String s)
    {
        int i1 = s.indexOf('/');
        int j1;
        if (i1 >= 0)
        {
            if ((j1 = s.indexOf('/', i1 + 1)) >= 0)
            {
                boolean flag;
                if (phonenumber.p() == Phonenumber.PhoneNumber.CountryCodeSource.a || phonenumber.p() == Phonenumber.PhoneNumber.CountryCodeSource.c)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag && PhoneNumberUtil.d(s.substring(0, i1)).equals(Integer.toString(phonenumber.b())))
                {
                    return s.substring(j1 + 1).contains("/");
                } else
                {
                    return true;
                }
            }
        }
        return false;
    }

    static boolean a(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
    {
        int i1 = 0;
_L7:
        if (i1 >= -1 + s.length()) goto _L2; else goto _L1
_L1:
        char c2;
        char c1 = s.charAt(i1);
        if (c1 != 'x' && c1 != 'X')
        {
            continue; /* Loop/switch isn't completed */
        }
        c2 = s.charAt(i1 + 1);
        if (c2 != 'x' && c2 != 'X') goto _L4; else goto _L3
_L3:
        i1++;
        if (phonenumberutil.b(phonenumber, s.substring(i1)) == PhoneNumberUtil.MatchType.d)
        {
            continue; /* Loop/switch isn't completed */
        }
_L6:
        return false;
_L4:
        if (!PhoneNumberUtil.d(s.substring(i1)).equals(phonenumber.f())) goto _L6; else goto _L5
_L5:
        i1++;
          goto _L7
_L2:
        return true;
    }

    static boolean a(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil, NumberGroupingChecker numbergroupingchecker)
    {
label0:
        {
            StringBuilder stringbuilder = PhoneNumberUtil.a(s, true);
            if (numbergroupingchecker.a(phonenumberutil, phonenumber, stringbuilder, a(phonenumberutil, phonenumber, ((Phonemetadata.NumberFormat) (null)))))
            {
                return true;
            }
            Phonemetadata.PhoneMetadata phonemetadata = MetadataManager.a(phonenumber.b());
            if (phonemetadata == null)
            {
                break label0;
            }
            Iterator iterator = phonemetadata.t().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
            } while (!numbergroupingchecker.a(phonenumberutil, phonenumber, stringbuilder, a(phonenumberutil, phonenumber, (Phonemetadata.NumberFormat)iterator.next())));
            return true;
        }
        return false;
    }

    private static String[] a(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, Phonemetadata.NumberFormat numberformat)
    {
        if (numberformat == null)
        {
            String s = phonenumberutil.a(phonenumber, PhoneNumberUtil.PhoneNumberFormat.d);
            int i1 = s.indexOf(';');
            if (i1 < 0)
            {
                i1 = s.length();
            }
            return s.substring(1 + s.indexOf('-'), i1).split("-");
        } else
        {
            return phonenumberutil.a(phonenumberutil.a(phonenumber), numberformat, PhoneNumberUtil.PhoneNumberFormat.d).split("-");
        }
    }

    private PhoneNumberMatch b(String s, int i1)
    {
        if (!f.matcher(s).matches())
        {
            break MISSING_BLOCK_LABEL_267;
        }
        if (b.matcher(s).find())
        {
            return null;
        }
        if (l.compareTo(PhoneNumberUtil.Leniency.b) < 0)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        if (i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        if (!h.matcher(s).lookingAt())
        {
            char c2 = j.charAt(i1 - 1);
            if (b(c2) || a(c2))
            {
                break MISSING_BLOCK_LABEL_267;
            }
        }
        int j1 = i1 + s.length();
        if (j1 < j.length())
        {
            char c1 = j.charAt(j1);
            if (b(c1) || a(c1))
            {
                break MISSING_BLOCK_LABEL_267;
            }
        }
        Phonenumber.PhoneNumber phonenumber;
        phonenumber = i.c(s, k);
        if (!i.b(phonenumber.b()).equals("IL") || i.a(phonenumber).length() != 4)
        {
            break MISSING_BLOCK_LABEL_215;
        }
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_267;
        }
        if (i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_215;
        }
        if (j.charAt(i1 - 1) != '*')
        {
            break MISSING_BLOCK_LABEL_267;
        }
        PhoneNumberMatch phonenumbermatch;
        if (!l.a(phonenumber, s, i))
        {
            break MISSING_BLOCK_LABEL_267;
        }
        phonenumber.q();
        phonenumber.n();
        phonenumber.t();
        phonenumbermatch = new PhoneNumberMatch(i1, s, phonenumber);
        return phonenumbermatch;
        NumberParseException numberparseexception;
        numberparseexception;
        return null;
    }

    private static boolean b(char c1)
    {
        return c1 == '%' || Character.getType(c1) == 26;
    }

    static boolean b(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
    {
        String as1[];
        int i1;
        boolean flag;
        as1 = PhoneNumberUtil.f.split(stringbuilder.toString());
        if (phonenumber.e())
        {
            i1 = -2 + as1.length;
        } else
        {
            i1 = -1 + as1.length;
        }
        if (as1.length != 1 && !as1[i1].contains(phonenumberutil.a(phonenumber))) goto _L2; else goto _L1
_L1:
        flag = true;
_L4:
        return flag;
_L2:
        int k1;
        int j1 = -1 + as.length;
        k1 = i1;
        int l1 = j1;
label0:
        do
        {
label1:
            {
                if (l1 <= 0 || k1 < 0)
                {
                    break label1;
                }
                boolean flag2 = as1[k1].equals(as[l1]);
                flag = false;
                if (!flag2)
                {
                    break label0;
                }
                l1--;
                k1--;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        boolean flag1;
        if (k1 >= 0 && as1[k1].endsWith(as[0]))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag1;
    }

    public PhoneNumberMatch a()
    {
        if (!hasNext())
        {
            throw new NoSuchElementException();
        } else
        {
            PhoneNumberMatch phonenumbermatch = o;
            o = null;
            n = State.a;
            return phonenumbermatch;
        }
    }

    public boolean hasNext()
    {
        if (n == State.a)
        {
            o = a(p);
            if (o == null)
            {
                n = State.c;
            } else
            {
                p = o.b();
                n = State.b;
            }
        }
        return n == State.b;
    }

    public Object next()
    {
        return a();
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }

    static 
    {
        Pattern apattern[] = new Pattern[6];
        apattern[0] = Pattern.compile("/+(.*)");
        apattern[1] = Pattern.compile("(\\([^(]*)");
        apattern[2] = Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)");
        apattern[3] = Pattern.compile("[\u2012-\u2015\uFF0D]\\p{Z}*(.+)");
        apattern[4] = Pattern.compile("\\.+\\p{Z}*([^.]+)");
        apattern[5] = Pattern.compile("\\p{Z}+(\\P{Z}+)");
        g = apattern;
        String s = String.valueOf(String.valueOf("(\\[\uFF08\uFF3B"));
        String s1 = String.valueOf(String.valueOf(")\\]\uFF09\uFF3D"));
        String s2 = (new StringBuilder(3 + s.length() + s1.length())).append("[^").append(s).append(s1).append("]").toString();
        String s3 = a(0, 3);
        String s4 = String.valueOf(String.valueOf("(\\[\uFF08\uFF3B"));
        String s5 = String.valueOf(String.valueOf(s2));
        String s6 = String.valueOf(String.valueOf(")\\]\uFF09\uFF3D"));
        String s7 = String.valueOf(String.valueOf(s2));
        String s8 = String.valueOf(String.valueOf("(\\[\uFF08\uFF3B"));
        String s9 = String.valueOf(String.valueOf(s2));
        String s10 = String.valueOf(String.valueOf(")\\]\uFF09\uFF3D"));
        String s11 = String.valueOf(String.valueOf(s3));
        String s12 = String.valueOf(String.valueOf(s2));
        f = Pattern.compile((new StringBuilder(26 + s4.length() + s5.length() + s6.length() + s7.length() + s8.length() + s9.length() + s10.length() + s11.length() + s12.length())).append("(?:[").append(s4).append("])?").append("(?:").append(s5).append("+").append("[").append(s6).append("])?").append(s7).append("+").append("(?:[").append(s8).append("]").append(s9).append("+[").append(s10).append("])").append(s11).append(s12).append("*").toString());
        String s13 = a(0, 2);
        String s14 = a(0, 4);
        String s15 = a(0, 20);
        String s16 = String.valueOf("[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E]");
        String s17 = String.valueOf(s14);
        String s18;
        String s19;
        String s20;
        String s21;
        String s22;
        String s23;
        String s24;
        String s25;
        String s26;
        String s27;
        String s28;
        String s29;
        String s30;
        String s31;
        String s32;
        String s33;
        if (s17.length() != 0)
        {
            s18 = s16.concat(s17);
        } else
        {
            s18 = new String(s16);
        }
        s19 = String.valueOf(a(1, 20));
        if (s19.length() != 0)
        {
            s20 = "\\p{Nd}".concat(s19);
        } else
        {
            s20 = new String("\\p{Nd}");
        }
        s21 = String.valueOf("(\\[\uFF08\uFF3B");
        s22 = String.valueOf("+\uFF0B");
        if (s22.length() != 0)
        {
            s23 = s21.concat(s22);
        } else
        {
            s23 = new String(s21);
        }
        s24 = String.valueOf(String.valueOf(s23));
        s25 = (new StringBuilder(2 + s24.length())).append("[").append(s24).append("]").toString();
        h = Pattern.compile(s25);
        s26 = String.valueOf(String.valueOf(s25));
        s27 = String.valueOf(String.valueOf(s18));
        s28 = String.valueOf(String.valueOf(s13));
        s29 = String.valueOf(String.valueOf(s20));
        s30 = String.valueOf(String.valueOf(s18));
        s31 = String.valueOf(String.valueOf(s20));
        s32 = String.valueOf(String.valueOf(s15));
        s33 = String.valueOf(String.valueOf(PhoneNumberUtil.e));
        a = Pattern.compile((new StringBuilder(13 + s26.length() + s27.length() + s28.length() + s29.length() + s30.length() + s31.length() + s32.length() + s33.length())).append("(?:").append(s26).append(s27).append(")").append(s28).append(s29).append("(?:").append(s30).append(s31).append(")").append(s32).append("(?:").append(s33).append(")?").toString(), 66);
    }
}
