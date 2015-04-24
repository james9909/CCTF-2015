// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.dece;


// Referenced classes of package com.googlecode.mp4parser.boxes.dece:
//            AssetInformationBox

public static class 
{

    public String a;
    public String b;
    public String c;

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
              = ()obj;
            if (!c.equals(.c))
            {
                return false;
            }
            if (!a.equals(.a))
            {
                return false;
            }
            if (!b.equals(.b))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (31 * a.hashCode() + b.hashCode()) + c.hashCode();
    }

    public String toString()
    {
        return (new StringBuilder("{namespace='")).append(a).append('\'').append(", profileLevelIdc='").append(b).append('\'').append(", assetId='").append(c).append('\'').append('}').toString();
    }
}
