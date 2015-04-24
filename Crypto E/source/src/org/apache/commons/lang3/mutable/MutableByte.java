// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.mutable;


// Referenced classes of package org.apache.commons.lang3.mutable:
//            Mutable

public class MutableByte extends Number
    implements Comparable, Mutable
{

    private static final long serialVersionUID = 0xffffffffa17a41dfL;
    private byte value;

    public MutableByte()
    {
    }

    public MutableByte(byte byte0)
    {
        value = byte0;
    }

    public MutableByte(Number number)
    {
        value = number.byteValue();
    }

    public MutableByte(String s)
    {
        value = Byte.parseByte(s);
    }

    public void add(byte byte0)
    {
        value = (byte)(byte0 + value);
    }

    public void add(Number number)
    {
        value = (byte)(value + number.byteValue());
    }

    public byte byteValue()
    {
        return value;
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((MutableByte)obj);
    }

    public int compareTo(MutableByte mutablebyte)
    {
        byte byte0 = mutablebyte.value;
        if (value < byte0)
        {
            return -1;
        }
        return value != byte0 ? 1 : 0;
    }

    public void decrement()
    {
        value = (byte)(-1 + value);
    }

    public double doubleValue()
    {
        return (double)value;
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof MutableByte;
        boolean flag1 = false;
        if (flag)
        {
            byte byte0 = value;
            byte byte1 = ((MutableByte)obj).byteValue();
            flag1 = false;
            if (byte0 == byte1)
            {
                flag1 = true;
            }
        }
        return flag1;
    }

    public float floatValue()
    {
        return (float)value;
    }

    public Byte getValue()
    {
        return Byte.valueOf(value);
    }

    public volatile Object getValue()
    {
        return getValue();
    }

    public int hashCode()
    {
        return value;
    }

    public void increment()
    {
        value = (byte)(1 + value);
    }

    public int intValue()
    {
        return value;
    }

    public long longValue()
    {
        return (long)value;
    }

    public void setValue(byte byte0)
    {
        value = byte0;
    }

    public void setValue(Number number)
    {
        value = number.byteValue();
    }

    public volatile void setValue(Object obj)
    {
        setValue((Number)obj);
    }

    public void subtract(byte byte0)
    {
        value = (byte)(value - byte0);
    }

    public void subtract(Number number)
    {
        value = (byte)(value - number.byteValue());
    }

    public Byte toByte()
    {
        return Byte.valueOf(byteValue());
    }

    public String toString()
    {
        return String.valueOf(value);
    }
}
