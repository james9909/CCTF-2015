// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.language;


// Referenced classes of package org.apache.commons.codec.language:
//            ColognePhonetic

class > extends >
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

    public (char ac[])
    {
        this$0 = ColognePhonetic.this;
        super(ColognePhonetic.this, ac);
    }
}
