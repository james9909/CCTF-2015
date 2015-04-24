// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.FileUploadTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.UserPrefs;
import java.io.File;

// Referenced classes of package com.snapchat.android.util.debug:
//            ManiphestAdapter

class h
    implements Runnable
{

    final String a;
    final String b;
    final String c;
    final String d;
    final String e;
    final File f;
    final File g[];
    final String h;
    final ManiphestAdapter i;

    public void run()
    {
        StringBuilder stringbuilder = new StringBuilder((new StringBuilder()).append(UserPrefs.k()).append("\n").append(UserPrefs.v()).append("\n").append("android").append("\n").append(a).append("\n").append(b).append("\n").toString());
        stringbuilder.append(c).append("\n").append("**BUG_DESCRIPTION**").append("\n").append(d).append("\n").append("**STEPS_TO_REPRO**").append("\n").append(e).append("\n").append("**ATTACHMENTS**").append("\n");
        if (f != null)
        {
            NetworkResult networkresult2 = (new FileUploadTask("https://basic-strata-577.appspot.com/maniphest/uploadImageFile?token=T2hTbmFwY2hhdFBsZWFzZUxldE1lQmVQYXJ0T2ZZb3VySVBPU3RvY2tTZWxsaW5n", f)).k();
            File afile[];
            int j;
            int k;
            NetworkResult networkresult1;
            if (networkresult2 != null)
            {
                stringbuilder.append(networkresult2.k()).append("\n");
            } else
            {
                Timber.b("ManiphestAdapter", "Oops. couldn't upload image to GCS for S2R", new Object[0]);
            }
        }
        afile = g;
        j = afile.length;
        k = 0;
        while (k < j) 
        {
            networkresult1 = (new FileUploadTask("https://basic-strata-577.appspot.com/maniphest/uploadTextFile?token=T2hTbmFwY2hhdFBsZWFzZUxldE1lQmVQYXJ0T2ZZb3VySVBPU3RvY2tTZWxsaW5n", afile[k])).k();
            if (networkresult1 != null)
            {
                stringbuilder.append(networkresult1.k()).append("\n");
            } else
            {
                Timber.b("ManiphestAdapter", "Oops. couldn't upload a file to GCS for S2R", new Object[0]);
            }
            k++;
        }
        NetworkResult networkresult = (new niphestCreationTask(stringbuilder.toString())).k();
        if (networkresult != null)
        {
            Timber.b("ManiphestAdapter", (new StringBuilder()).append("Maniphest Ticket Creation Response: ").append(networkresult.k()).toString(), new Object[0]);
            if (h != null)
            {
                (new moteLogRequestTask(h, networkresult.k())).k();
            }
            return;
        } else
        {
            Timber.b("ManiphestAdapter", "Oops. couldn't create maniphest ticket. maybe endpoint is down?", new Object[0]);
            return;
        }
    }

    moteLogRequestTask(ManiphestAdapter maniphestadapter, String s, String s1, String s2, String s3, String s4, File file, 
            File afile[], String s5)
    {
        i = maniphestadapter;
        a = s;
        b = s1;
        c = s2;
        d = s3;
        e = s4;
        f = file;
        g = afile;
        h = s5;
        super();
    }
}
