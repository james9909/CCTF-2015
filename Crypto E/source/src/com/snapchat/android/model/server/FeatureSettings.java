// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;


public class FeatureSettings
{

    public boolean front_facing_flash;
    public boolean replay_snaps;
    public boolean smart_filters;
    public boolean visual_filters;

    public FeatureSettings()
    {
    }

    public String toString()
    {
        return (new StringBuilder()).append("FeatureSettings[smart_filters=").append(smart_filters).append(", visual_filters=").append(visual_filters).append(", front_facing_flash=").append(front_facing_flash).append(", replay_snaps=").append(replay_snaps).append("]").toString();
    }
}
