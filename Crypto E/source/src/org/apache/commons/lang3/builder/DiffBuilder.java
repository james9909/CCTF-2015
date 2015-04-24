// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.builder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.lang3.ArrayUtils;

// Referenced classes of package org.apache.commons.lang3.builder:
//            Builder, DiffResult, ToStringStyle, Diff

public class DiffBuilder
    implements Builder
{

    private final List diffs = new ArrayList();
    private final Object left;
    private final boolean objectsTriviallyEqual;
    private final Object right;
    private final ToStringStyle style;

    public DiffBuilder(Object obj, Object obj1, ToStringStyle tostringstyle)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("lhs cannot be null");
        }
        if (obj1 == null)
        {
            throw new IllegalArgumentException("rhs cannot be null");
        }
        left = obj;
        right = obj1;
        style = tostringstyle;
        boolean flag;
        if (obj == obj1 || obj.equals(obj1))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        objectsTriviallyEqual = flag;
    }

    public DiffBuilder append(final String final_s, final byte lhs, byte byte0)
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || lhs == byte0) 
        {
            return this;
        }
        diffs.add(new Diff(byte0) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final byte val$lhs;
            final byte val$rhs;

            public Byte getLeft()
            {
                return Byte.valueOf(lhs);
            }

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Byte getRight()
            {
                return Byte.valueOf(rhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = byte0;
                rhs = byte1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final char lhs, char c)
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || lhs == c) 
        {
            return this;
        }
        diffs.add(new Diff(c) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final char val$lhs;
            final char val$rhs;

            public Character getLeft()
            {
                return Character.valueOf(lhs);
            }

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Character getRight()
            {
                return Character.valueOf(rhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = c;
                rhs = c1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final double lhs, double d)
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || Double.doubleToLongBits(lhs) == Double.doubleToLongBits(d)) 
        {
            return this;
        }
        diffs.add(new Diff(d) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final double val$lhs;
            final double val$rhs;

            public Double getLeft()
            {
                return Double.valueOf(lhs);
            }

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Double getRight()
            {
                return Double.valueOf(rhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = d;
                rhs = d1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final float lhs, float f)
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || Float.floatToIntBits(lhs) == Float.floatToIntBits(f)) 
        {
            return this;
        }
        diffs.add(new Diff(f) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final float val$lhs;
            final float val$rhs;

            public Float getLeft()
            {
                return Float.valueOf(lhs);
            }

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Float getRight()
            {
                return Float.valueOf(rhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = f;
                rhs = f1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final int lhs, int i)
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || lhs == i) 
        {
            return this;
        }
        diffs.add(new Diff(i) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final int val$lhs;
            final int val$rhs;

            public Integer getLeft()
            {
                return Integer.valueOf(lhs);
            }

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Integer getRight()
            {
                return Integer.valueOf(rhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = i;
                rhs = j;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final long lhs, long l)
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || lhs == l) 
        {
            return this;
        }
        diffs.add(new Diff(l) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final long val$lhs;
            final long val$rhs;

            public Long getLeft()
            {
                return Long.valueOf(lhs);
            }

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Long getRight()
            {
                return Long.valueOf(rhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = l;
                rhs = l1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final Object lhs, Object obj)
    {
        while (objectsTriviallyEqual || lhs == obj) 
        {
            return this;
        }
        Object obj1;
        if (lhs != null)
        {
            obj1 = lhs;
        } else
        {
            obj1 = obj;
        }
        if (obj1.getClass().isArray())
        {
            if (obj1 instanceof boolean[])
            {
                return append(final_s, (boolean[])(boolean[])lhs, (boolean[])(boolean[])obj);
            }
            if (obj1 instanceof byte[])
            {
                return append(final_s, (byte[])(byte[])lhs, (byte[])(byte[])obj);
            }
            if (obj1 instanceof char[])
            {
                return append(final_s, (char[])(char[])lhs, (char[])(char[])obj);
            }
            if (obj1 instanceof double[])
            {
                return append(final_s, (double[])(double[])lhs, (double[])(double[])obj);
            }
            if (obj1 instanceof float[])
            {
                return append(final_s, (float[])(float[])lhs, (float[])(float[])obj);
            }
            if (obj1 instanceof int[])
            {
                return append(final_s, (int[])(int[])lhs, (int[])(int[])obj);
            }
            if (obj1 instanceof long[])
            {
                return append(final_s, (long[])(long[])lhs, (long[])(long[])obj);
            }
            if (obj1 instanceof short[])
            {
                return append(final_s, (short[])(short[])lhs, (short[])(short[])obj);
            } else
            {
                return append(final_s, (Object[])(Object[])lhs, (Object[])(Object[])obj);
            }
        } else
        {
            diffs.add(new Diff(obj) {

                private static final long serialVersionUID = 1L;
                final DiffBuilder this$0;
                final Object val$lhs;
                final Object val$rhs;

                public Object getLeft()
                {
                    return lhs;
                }

                public Object getRight()
                {
                    return rhs;
                }

            
            {
                this$0 = DiffBuilder.this;
                lhs = obj;
                rhs = obj1;
                super(final_s);
            }
            });
            return this;
        }
    }

    public DiffBuilder append(final String final_s, final short lhs, short word0)
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || lhs == word0) 
        {
            return this;
        }
        diffs.add(new Diff(word0) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final short val$lhs;
            final short val$rhs;

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Short getLeft()
            {
                return Short.valueOf(lhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            public Short getRight()
            {
                return Short.valueOf(rhs);
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = word0;
                rhs = word1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final boolean lhs, boolean flag)
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || lhs == flag) 
        {
            return this;
        }
        diffs.add(new Diff(flag) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final boolean val$lhs;
            final boolean val$rhs;

            public Boolean getLeft()
            {
                return Boolean.valueOf(lhs);
            }

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Boolean getRight()
            {
                return Boolean.valueOf(rhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = flag;
                rhs = flag1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final byte lhs[], byte abyte0[])
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || Arrays.equals(lhs, abyte0)) 
        {
            return this;
        }
        diffs.add(new Diff(abyte0) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final byte val$lhs[];
            final byte val$rhs[];

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Byte[] getLeft()
            {
                return ArrayUtils.toObject(lhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            public Byte[] getRight()
            {
                return ArrayUtils.toObject(rhs);
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = abyte0;
                rhs = abyte1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final char lhs[], char ac[])
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || Arrays.equals(lhs, ac)) 
        {
            return this;
        }
        diffs.add(new Diff(ac) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final char val$lhs[];
            final char val$rhs[];

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Character[] getLeft()
            {
                return ArrayUtils.toObject(lhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            public Character[] getRight()
            {
                return ArrayUtils.toObject(rhs);
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = ac;
                rhs = ac1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final double lhs[], double ad[])
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || Arrays.equals(lhs, ad)) 
        {
            return this;
        }
        diffs.add(new Diff(ad) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final double val$lhs[];
            final double val$rhs[];

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Double[] getLeft()
            {
                return ArrayUtils.toObject(lhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            public Double[] getRight()
            {
                return ArrayUtils.toObject(rhs);
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = ad;
                rhs = ad1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final float lhs[], float af[])
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || Arrays.equals(lhs, af)) 
        {
            return this;
        }
        diffs.add(new Diff(af) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final float val$lhs[];
            final float val$rhs[];

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Float[] getLeft()
            {
                return ArrayUtils.toObject(lhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            public Float[] getRight()
            {
                return ArrayUtils.toObject(rhs);
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = af;
                rhs = af1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final int lhs[], int ai[])
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || Arrays.equals(lhs, ai)) 
        {
            return this;
        }
        diffs.add(new Diff(ai) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final int val$lhs[];
            final int val$rhs[];

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Integer[] getLeft()
            {
                return ArrayUtils.toObject(lhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            public Integer[] getRight()
            {
                return ArrayUtils.toObject(rhs);
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = ai;
                rhs = ai1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final long lhs[], long al[])
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || Arrays.equals(lhs, al)) 
        {
            return this;
        }
        diffs.add(new Diff(al) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final long val$lhs[];
            final long val$rhs[];

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Long[] getLeft()
            {
                return ArrayUtils.toObject(lhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            public Long[] getRight()
            {
                return ArrayUtils.toObject(rhs);
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = al;
                rhs = al1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final Object lhs[], Object aobj[])
    {
        while (objectsTriviallyEqual || Arrays.equals(lhs, aobj)) 
        {
            return this;
        }
        diffs.add(new Diff(aobj) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final Object val$lhs[];
            final Object val$rhs[];

            public volatile Object getLeft()
            {
                return ((Object) (getLeft()));
            }

            public Object[] getLeft()
            {
                return lhs;
            }

            public volatile Object getRight()
            {
                return ((Object) (getRight()));
            }

            public Object[] getRight()
            {
                return rhs;
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = aobj;
                rhs = aobj1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final short lhs[], short aword0[])
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || Arrays.equals(lhs, aword0)) 
        {
            return this;
        }
        diffs.add(new Diff(aword0) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final short val$lhs[];
            final short val$rhs[];

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Short[] getLeft()
            {
                return ArrayUtils.toObject(lhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            public Short[] getRight()
            {
                return ArrayUtils.toObject(rhs);
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = aword0;
                rhs = aword1;
                super(final_s);
            }
        });
        return this;
    }

    public DiffBuilder append(final String final_s, final boolean lhs[], boolean aflag[])
    {
        if (final_s == null)
        {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        while (objectsTriviallyEqual || Arrays.equals(lhs, aflag)) 
        {
            return this;
        }
        diffs.add(new Diff(aflag) {

            private static final long serialVersionUID = 1L;
            final DiffBuilder this$0;
            final boolean val$lhs[];
            final boolean val$rhs[];

            public volatile Object getLeft()
            {
                return getLeft();
            }

            public Boolean[] getLeft()
            {
                return ArrayUtils.toObject(lhs);
            }

            public volatile Object getRight()
            {
                return getRight();
            }

            public Boolean[] getRight()
            {
                return ArrayUtils.toObject(rhs);
            }

            
            {
                this$0 = DiffBuilder.this;
                lhs = aflag;
                rhs = aflag1;
                super(final_s);
            }
        });
        return this;
    }

    public volatile Object build()
    {
        return build();
    }

    public DiffResult build()
    {
        return new DiffResult(left, right, diffs, style);
    }
}
