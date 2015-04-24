// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.notification;

import android.content.Context;
import com.snapchat.android.api2.FileUploadTask;
import com.snapchat.android.util.debug.DebugCapturer;
import java.io.File;
import java.io.IOException;
import java.util.regex.Pattern;

// Referenced classes of package com.snapchat.android.notification:
//            NotificationResponder

public class UploadLogNotificationResponder
    implements NotificationResponder
{

    File a;
    File b;
    FileUploadTask c;
    FileUploadTask d;
    private final Context e;
    private final String f;
    private final String g = "^_^";

    public UploadLogNotificationResponder(Context context, String s)
    {
        e = context;
        f = s;
    }

    public void a()
    {
        b();
        c();
        d();
    }

    void b()
    {
        try
        {
            a = DebugCapturer.a(e, false);
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        try
        {
            b = DebugCapturer.a(e);
            return;
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
        }
    }

    void c()
    {
        String s = f.split(Pattern.quote("^_^"))[1];
        String s1 = (new StringBuilder()).append("https://basic-strata-577.appspot.com/maniphest/attachRemoteLog?token=T2hTbmFwY2hhdFBsZWFzZUxldE1lQmVQYXJ0T2ZZb3VySVBPU3RvY2tTZWxsaW5n&taskId=").append(s).toString();
        c = new FileUploadTask(s1, a);
        d = new FileUploadTask(s1, b);
    }

    void d()
    {
        if (a != null)
        {
            c.g();
        }
        if (b != null)
        {
            d.g();
        }
    }
}
