// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


public final class dj extends Enum
{

    public static final dj a;
    public static final dj b;
    public static final dj c;
    public static final dj d;
    public static final dj e;
    public static final dj f;
    public static final dj g;
    public static final dj h;
    public static final dj i;
    public static final dj j;
    private static final dj k[];

    private dj(String s, int l)
    {
        super(s, l);
    }

    public static dj valueOf(String s)
    {
        return (dj)Enum.valueOf(crittercism/android/dj, s);
    }

    public static dj[] values()
    {
        return (dj[])k.clone();
    }

    static 
    {
        a = new dj("DISKSPACEFREE_EXTERNAL_STORAGE_DIRECTORY_FAULT", 0);
        b = new dj("DISKSPACETOTAL_EXTERNAL_STORAGE_DIRECTORY_FAULT", 1);
        c = new dj("SDSPACEFREE_EXTERNAL_STORAGE_DIRECTORY_FAULT", 2);
        d = new dj("SDSPACETOTAL_EXTERNAL_STORAGE_DIRECTORY_FAULT", 3);
        e = new dj("GENERIC_HANDLER_DO_OPEN_CONNECTION_FAULT", 4);
        f = new dj("STREAM_HANDLER_FACTORY_ANNUL_REFLECTION_FAULT", 5);
        g = new dj("STREAM_HANDLER_FACTORY_CLEAR_STREAM_HANDLERS_FAULT", 6);
        h = new dj("HASHED_DEVICE_ID_GENERATE_FROM_DROID_ID_FAULT", 7);
        i = new dj("HASHED_DEVICE_ID_GENERATE_FROM_TELCO_ID_FAULT", 8);
        j = new dj("HASHED_DEVICE_ID_GENERATE_RANDOM_ID_FAULT", 9);
        dj adj[] = new dj[10];
        adj[0] = a;
        adj[1] = b;
        adj[2] = c;
        adj[3] = d;
        adj[4] = e;
        adj[5] = f;
        adj[6] = g;
        adj[7] = h;
        adj[8] = i;
        adj[9] = j;
        k = adj;
    }
}
