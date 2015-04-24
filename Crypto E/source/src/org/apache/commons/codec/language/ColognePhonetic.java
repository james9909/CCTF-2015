// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class ColognePhonetic
    implements StringEncoder
{
    abstract class CologneBuffer
    {

        protected final char data[];
        protected int length;
        final ColognePhonetic this$0;

        protected abstract char[] copyData(int i, int j);

        public int length()
        {
            return length;
        }

        public String toString()
        {
            return new String(copyData(0, length));
        }

        public CologneBuffer(int i)
        {
            this$0 = ColognePhonetic.this;
            super();
            length = 0;
            data = new char[i];
            length = 0;
        }

        public CologneBuffer(char ac[])
        {
            this$0 = ColognePhonetic.this;
            super();
            length = 0;
            data = ac;
            length = ac.length;
        }
    }

    class CologneInputBuffer extends CologneBuffer
    {

        final ColognePhonetic this$0;

        public void addLeft(char c)
        {
            length = 1 + length;
            data[getNextPos()] = c;
        }

        protected char[] copyData(int i, int j)
        {
            char ac[] = new char[j];
            System.arraycopy(data, i + (data.length - length), ac, 0, j);
            return ac;
        }

        public char getNextChar()
        {
            return data[getNextPos()];
        }

        protected int getNextPos()
        {
            return data.length - length;
        }

        public char removeNext()
        {
            char c = getNextChar();
            length = -1 + length;
            return c;
        }

        public CologneInputBuffer(char ac[])
        {
            this$0 = ColognePhonetic.this;
            super(ac);
        }
    }

    class CologneOutputBuffer extends CologneBuffer
    {

        final ColognePhonetic this$0;

        public void addRight(char c)
        {
            data[length] = c;
            length = 1 + length;
        }

        protected char[] copyData(int i, int j)
        {
            char ac[] = new char[j];
            System.arraycopy(data, i, ac, 0, j);
            return ac;
        }

        public CologneOutputBuffer(int i)
        {
            this$0 = ColognePhonetic.this;
            super(i);
        }
    }


    private static final char PREPROCESS_MAP[][] = {
        {
            '\304', 'A'
        }, {
            '\334', 'U'
        }, {
            '\326', 'O'
        }, {
            '\337', 'S'
        }
    };

    public ColognePhonetic()
    {
    }

    private static boolean arrayContains(char ac[], char c)
    {
        int i = ac.length;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    if (ac[j] != c)
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    private String preprocess(String s)
    {
        char ac[];
        int i;
        ac = s.toUpperCase(Locale.GERMAN).toCharArray();
        i = 0;
_L10:
        if (i >= ac.length) goto _L2; else goto _L1
_L1:
        if (ac[i] <= 'Z') goto _L4; else goto _L3
_L3:
        char ac1[][];
        int j;
        int k;
        ac1 = PREPROCESS_MAP;
        j = ac1.length;
        k = 0;
_L8:
        if (k >= j) goto _L4; else goto _L5
_L5:
        char ac2[] = ac1[k];
        if (ac[i] != ac2[0]) goto _L7; else goto _L6
_L6:
        ac[i] = ac2[1];
_L4:
        i++;
        continue; /* Loop/switch isn't completed */
_L7:
        k++;
        if (true) goto _L8; else goto _L2
_L2:
        return new String(ac);
        if (true) goto _L10; else goto _L9
_L9:
    }

    public String colognePhonetic(String s)
    {
        CologneOutputBuffer cologneoutputbuffer;
        CologneInputBuffer cologneinputbuffer;
        int i;
        char c;
        char c1;
        if (s == null)
        {
            return null;
        }
        String s1 = preprocess(s);
        cologneoutputbuffer = new CologneOutputBuffer(2 * s1.length());
        cologneinputbuffer = new CologneInputBuffer(s1.toCharArray());
        i = cologneinputbuffer.length();
        c = '/';
        c1 = '-';
_L3:
        char c2;
        char c3;
        int j;
        char c4;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_816;
        }
        c2 = cologneinputbuffer.removeNext();
        i = cologneinputbuffer.length();
        int i2;
        if (i > 0)
        {
            c3 = cologneinputbuffer.getNextChar();
        } else
        {
            c3 = '-';
        }
        if (!arrayContains(new char[] {
            'A', 'E', 'I', 'J', 'O', 'U', 'Y'
        }, c2)) goto _L2; else goto _L1
_L1:
        i2 = i;
        c4 = '0';
        j = i2;
_L5:
        if (c4 != '-' && (c != c4 && (c4 != '0' || c == '/') || c4 < '0' || c4 > '8'))
        {
            cologneoutputbuffer.addRight(c4);
        }
        c = c4;
        c1 = c2;
        i = j;
          goto _L3
_L2:
        if (c2 != 'H' && c2 >= 'A' && c2 <= 'Z')
        {
            break MISSING_BLOCK_LABEL_256;
        }
        if (c == '/') goto _L3; else goto _L4
_L4:
        j = i;
        c4 = '-';
          goto _L5
        if (c2 == 'B' || c2 == 'P' && c3 != 'H')
        {
            int k = i;
            c4 = '1';
            j = k;
        } else
        if ((c2 == 'D' || c2 == 'T') && !arrayContains(new char[] {
    'S', 'C', 'Z'
}, c3))
        {
            int l1 = i;
            c4 = '2';
            j = l1;
        } else
        if (arrayContains(new char[] {
    'W', 'F', 'P', 'V'
}, c2))
        {
            int k1 = i;
            c4 = '3';
            j = k1;
        } else
        if (arrayContains(new char[] {
    'G', 'K', 'Q'
}, c2))
        {
            j = i;
            c4 = '4';
        } else
        if (c2 == 'X' && !arrayContains(new char[] {
    'C', 'K', 'Q'
}, c1))
        {
            cologneinputbuffer.addLeft('S');
            j = i + 1;
            c4 = '4';
        } else
        if (c2 == 'S' || c2 == 'Z')
        {
            j = i;
            c4 = '8';
        } else
        if (c2 == 'C')
        {
            if (c == '/')
            {
                if (arrayContains(new char[] {
    'A', 'H', 'K', 'L', 'O', 'Q', 'R', 'U', 'X'
}, c3))
                {
                    j = i;
                    c4 = '4';
                } else
                {
                    j = i;
                    c4 = '8';
                }
            } else
            if (arrayContains(new char[] {
    'S', 'Z'
}, c1) || !arrayContains(new char[] {
    'A', 'H', 'O', 'U', 'K', 'Q', 'X'
}, c3))
            {
                j = i;
                c4 = '8';
            } else
            {
                j = i;
                c4 = '4';
            }
        } else
        if (arrayContains(new char[] {
    'T', 'D', 'X'
}, c2))
        {
            j = i;
            c4 = '8';
        } else
        if (c2 == 'R')
        {
            int j1 = i;
            c4 = '7';
            j = j1;
        } else
        if (c2 == 'L')
        {
            int i1 = i;
            c4 = '5';
            j = i1;
        } else
        if (c2 == 'M' || c2 == 'N')
        {
            int l = i;
            c4 = '6';
            j = l;
        } else
        {
            j = i;
            c4 = c2;
        }
          goto _L5
        return cologneoutputbuffer.toString();
    }

    public Object encode(Object obj)
    {
        if (!(obj instanceof String))
        {
            throw new EncoderException((new StringBuilder()).append("This method's parameter was expected to be of the type ").append(java/lang/String.getName()).append(". But actually it was of the type ").append(obj.getClass().getName()).append(".").toString());
        } else
        {
            return encode((String)obj);
        }
    }

    public String encode(String s)
    {
        return colognePhonetic(s);
    }

    public boolean isEncodeEqual(String s, String s1)
    {
        return colognePhonetic(s).equals(colognePhonetic(s1));
    }

}
