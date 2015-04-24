// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;


// Referenced classes of package net.hockeyapp.android:
//            StringListener

public class Strings
{

    public static final String a[] = {
        "Crash Data", "The app found information about previous crashes. Would you like to send this data to the developer?", "Dismiss", "Send", "Download Failed", "The update could not be downloaded. Would you like to try again?", "Cancel", "Retry", "Please install the latest version to continue to use this app.", "Update Available", 
        "Show information about the new update?", "Dismiss", "Show", "Build Expired", "This has build has expired. Please check HockeyApp for any updates.", "Feedback Failed", "Would you like to send your feedback again?"
    };

    public Strings()
    {
    }

    public static String a(StringListener stringlistener, int i)
    {
        String s = null;
        if (stringlistener != null)
        {
            s = stringlistener.a(i);
        }
        if (s == null && i >= 0 && i <= a.length)
        {
            s = a[i];
        }
        return s;
    }

}
