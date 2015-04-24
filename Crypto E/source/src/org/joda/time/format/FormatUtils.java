// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;


public class FormatUtils
{

    private static final double a = Math.log(10D);

    private FormatUtils()
    {
    }

    public static int a(long l)
    {
        if (l < 0L)
        {
            if (l != 0x8000000000000000L)
            {
                return 1 + a(-l);
            } else
            {
                return 20;
            }
        }
        if (l < 10L)
        {
            return 1;
        }
        if (l < 100L)
        {
            return 2;
        }
        if (l < 1000L)
        {
            return 3;
        }
        if (l < 10000L)
        {
            return 4;
        } else
        {
            return 1 + (int)(Math.log(l) / a);
        }
    }

    static int a(String s, int i)
    {
        int j = -48 + s.charAt(i);
        return -48 + ((j << 3) + (j << 1) + s.charAt(i + 1));
    }

    public static void a(StringBuffer stringbuffer, int i)
    {
label0:
        {
label1:
            {
                if (i < 0)
                {
                    stringbuffer.append('-');
                    if (i == 0x80000000)
                    {
                        break label1;
                    }
                    i = -i;
                }
                if (i < 10)
                {
                    stringbuffer.append((char)(i + 48));
                    return;
                }
                break label0;
            }
            stringbuffer.append("2147483648");
            return;
        }
        if (i < 100)
        {
            int j = 0xcccccc * (i + 1) >> 27;
            stringbuffer.append((char)(j + 48));
            stringbuffer.append((char)(48 + (i - (j << 3) - (j << 1))));
            return;
        } else
        {
            stringbuffer.append(Integer.toString(i));
            return;
        }
    }

    public static void a(StringBuffer stringbuffer, int i, int j)
    {
label0:
        {
label1:
            {
label2:
                {
                    if (i < 0)
                    {
                        stringbuffer.append('-');
                        if (i == 0x80000000)
                        {
                            break label2;
                        }
                        i = -i;
                    }
                    if (i >= 10)
                    {
                        break label0;
                    }
                    for (; j > 1; j--)
                    {
                        stringbuffer.append('0');
                    }

                    break label1;
                }
                for (; j > 10; j--)
                {
                    stringbuffer.append('0');
                }

                stringbuffer.append("2147483648");
                return;
            }
            stringbuffer.append((char)(i + 48));
            return;
        }
        if (i < 100)
        {
            for (; j > 2; j--)
            {
                stringbuffer.append('0');
            }

            int l = 0xcccccc * (i + 1) >> 27;
            stringbuffer.append((char)(l + 48));
            stringbuffer.append((char)(48 + (i - (l << 3) - (l << 1))));
            return;
        }
        int k;
        if (i >= 1000)
        {
            if (i < 10000)
            {
                k = 4;
            } else
            {
                k = 1 + (int)(Math.log(i) / a);
            }
        }
        for (k = 3; j > k; j--)
        {
            stringbuffer.append('0');
        }

        stringbuffer.append(Integer.toString(i));
    }

    public static void a(StringBuffer stringbuffer, long l)
    {
        int i = (int)l;
        if ((long)i == l)
        {
            a(stringbuffer, i);
            return;
        } else
        {
            stringbuffer.append(Long.toString(l));
            return;
        }
    }

    static String b(String s, int i)
    {
        int j = i + 32;
        String s1;
        if (s.length() <= j + 3)
        {
            s1 = s;
        } else
        {
            s1 = s.substring(0, j).concat("...");
        }
        if (i <= 0)
        {
            return (new StringBuilder()).append("Invalid format: \"").append(s1).append('"').toString();
        }
        if (i >= s.length())
        {
            return (new StringBuilder()).append("Invalid format: \"").append(s1).append("\" is too short").toString();
        } else
        {
            return (new StringBuilder()).append("Invalid format: \"").append(s1).append("\" is malformed at \"").append(s1.substring(i)).append('"').toString();
        }
    }

}
