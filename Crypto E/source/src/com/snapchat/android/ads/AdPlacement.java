// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;

import android.os.Bundle;

public abstract class AdPlacement
{

    public AdPlacement()
    {
    }

    public abstract String a();

    public abstract String a(String s, String s1);

    public abstract Bundle b();

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj == null || getClass() != obj.getClass())
        {
            return false;
        } else
        {
            AdPlacement adplacement = (AdPlacement)obj;
            return a().equals(adplacement.a());
        }
    }

    public int hashCode()
    {
        return a().hashCode();
    }

    public String toString()
    {
        return (new StringBuilder()).append("AdPlacement:{").append(a()).append("}").toString();
    }
}
