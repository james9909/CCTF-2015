// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding;

import android.net.Uri;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.transcoding.TranscodingTaskMetrics;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TaskExecutor;
import com.snapchat.videotranscoder.task.TranscodingTask;
import java.io.PrintStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.android.camera.transcoding:
//            TranscodingPreferencesWrapper, TranscoderConfigurationProvider, TranscodingDoneCallback

public class VideoTranscoder
{

    private static VideoTranscoder b;
    private TaskExecutor a;
    private TranscodingPreferencesWrapper c;
    private final Map d;

    private VideoTranscoder()
    {
        this(new TaskExecutor(), TranscodingPreferencesWrapper.a());
    }

    protected VideoTranscoder(TaskExecutor taskexecutor, TranscodingPreferencesWrapper transcodingpreferenceswrapper)
    {
        a = null;
        d = Collections.synchronizedMap(new HashMap());
        a = taskexecutor;
        c = transcodingpreferenceswrapper;
    }

    public static VideoTranscoder a()
    {
        if (b == null)
        {
            b = new VideoTranscoder();
        }
        return b;
    }

    private void b(SnapVideobryo snapvideobryo, TranscoderConfigurationProvider transcoderconfigurationprovider)
    {
        Uri uri;
        try
        {
            uri = snapvideobryo.I();
        }
        catch (SetupException setupexception)
        {
            System.err.println(setupexception.getMessage());
            Timber.e("VideoTranscoder", setupexception.getMessage(), new Object[0]);
            return;
        }
        if (uri != null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        throw new SetupException(new NullPointerException("Null video uri!"));
        com.snapchat.videotranscoder.task.TranscodingConfiguration transcodingconfiguration = transcoderconfigurationprovider.b(uri.getPath());
        TranscodingDoneCallback transcodingdonecallback = new TranscodingDoneCallback(this, snapvideobryo, transcodingconfiguration, new TranscodingTaskMetrics());
        a(new TranscodingTask(transcodingconfiguration), transcodingdonecallback, null);
        snapvideobryo.b(com.snapchat.videotranscoder.task.Task.Status.d);
        return;
    }

    public void a(SnapVideobryo snapvideobryo)
    {
        a(snapvideobryo, new TranscoderConfigurationProvider(snapvideobryo));
    }

    protected void a(SnapVideobryo snapvideobryo, TranscoderConfigurationProvider transcoderconfigurationprovider)
    {
        TranscodingPreferencesWrapper.TranscodingEnabled transcodingenabled;
label0:
        {
            transcodingenabled = c.b();
            boolean flag = snapvideobryo.X();
            boolean flag1;
            boolean flag2;
            if (transcodingenabled == TranscodingPreferencesWrapper.TranscodingEnabled.d)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (!flag)
            {
                flag2 = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag2 = true;
        }
        if (flag2)
        {
            if (!d.containsKey(snapvideobryo))
            {
                d.put(snapvideobryo, new Object());
            }
            snapvideobryo.b(com.snapchat.videotranscoder.task.Task.Status.a);
            if (transcodingenabled == TranscodingPreferencesWrapper.TranscodingEnabled.e || transcodingenabled == TranscodingPreferencesWrapper.TranscodingEnabled.d)
            {
                int i = 5;
                int j;
                do
                {
                    j = i - 1;
                    if (i <= 0 || snapvideobryo.T() != com.snapchat.videotranscoder.task.Task.Status.a)
                    {
                        break;
                    }
                    b(snapvideobryo, transcoderconfigurationprovider);
                    i = j;
                } while (true);
                if (j < 0)
                {
                    a(snapvideobryo, com.snapchat.videotranscoder.task.Task.Status.c);
                    return;
                }
            }
        }
    }

    public void a(SnapVideobryo snapvideobryo, com.snapchat.videotranscoder.task.Task.Status status)
    {
        snapvideobryo.a(status);
        if (snapvideobryo.V())
        {
            if (b(snapvideobryo))
            {
                return;
            }
            snapvideobryo.c(status);
        }
        Object obj = d.get(snapvideobryo);
        obj;
        JVM INSTR monitorenter ;
        TranscodingPreferencesWrapper transcodingpreferenceswrapper = c;
        Exception exception;
        boolean flag;
        if (status == com.snapchat.videotranscoder.task.Task.Status.g)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        transcodingpreferenceswrapper.b(flag);
        obj.notifyAll();
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(TranscodingTask transcodingtask, com.snapchat.videotranscoder.task.Task.DoneCallback donecallback, com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback progressupdatecallback)
    {
        a.a(transcodingtask, donecallback, progressupdatecallback);
    }

    public boolean b(SnapVideobryo snapvideobryo)
    {
        boolean flag = snapvideobryo.U();
        boolean flag1 = false;
        if (flag)
        {
            Timber.e("VideoTranscoder", (new StringBuilder()).append("Transcoding failed with: ").append(snapvideobryo.T()).append(" trying again").toString(), new Object[0]);
            a(snapvideobryo);
            flag1 = true;
        }
        return flag1;
    }

    public boolean c(SnapVideobryo snapvideobryo)
    {
        if (!snapvideobryo.V()) goto _L2; else goto _L1
_L1:
        if (b(snapvideobryo)) goto _L4; else goto _L3
_L3:
        return false;
_L4:
        snapvideobryo.c(snapvideobryo.T());
_L2:
        synchronized (d.get(snapvideobryo))
        {
            obj.wait(30000L);
        }
        if (snapvideobryo.T() != com.snapchat.videotranscoder.task.Task.Status.g) goto _L3; else goto _L5
_L5:
        return true;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
