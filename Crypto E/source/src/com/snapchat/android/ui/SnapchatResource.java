// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;


public class SnapchatResource
{
    public static interface ResourceListener
    {

        public abstract void a(ResourceStatus resourcestatus);
    }

    public static final class ResourceStatus extends Enum
    {

        public static final ResourceStatus a;
        public static final ResourceStatus b;
        public static final ResourceStatus c;
        public static final ResourceStatus d;
        private static final ResourceStatus e[];

        public static ResourceStatus valueOf(String s)
        {
            return (ResourceStatus)Enum.valueOf(com/snapchat/android/ui/SnapchatResource$ResourceStatus, s);
        }

        public static ResourceStatus[] values()
        {
            return (ResourceStatus[])e.clone();
        }

        static 
        {
            a = new ResourceStatus("NOT_LOADED", 0);
            b = new ResourceStatus("LOADING", 1);
            c = new ResourceStatus("LOADED", 2);
            d = new ResourceStatus("LOADING_FAILED", 3);
            ResourceStatus aresourcestatus[] = new ResourceStatus[4];
            aresourcestatus[0] = a;
            aresourcestatus[1] = b;
            aresourcestatus[2] = c;
            aresourcestatus[3] = d;
            e = aresourcestatus;
        }

        private ResourceStatus(String s, int i)
        {
            super(s, i);
        }
    }


    protected ResourceStatus b;
    protected ResourceListener c;

    public SnapchatResource()
    {
    }

    public void a(ResourceListener resourcelistener)
    {
        c = resourcelistener;
    }

    protected void a(ResourceStatus resourcestatus)
    {
        if (resourcestatus != b)
        {
            b = resourcestatus;
            if (c != null)
            {
                c.a(b);
            }
        }
    }

    public ResourceStatus c()
    {
        return b;
    }
}
