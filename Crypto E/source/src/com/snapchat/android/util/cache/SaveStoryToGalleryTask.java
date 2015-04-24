// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import com.snapchat.android.analytics.SaveStoryToGalleryAnalytics;
import com.snapchat.android.analytics.handledexceptions.FailedToSaveStoryToGalleryException;
import com.snapchat.android.camera.transcoding.VideoTranscoder;
import com.snapchat.android.model.LazyMediaSource;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.system.Clock;
import com.snapchat.android.util.threading.ThreadUtils;
import com.snapchat.videotranscoder.pipeline.EncoderConfiguration;
import com.snapchat.videotranscoder.task.ImageMediaSource;
import com.snapchat.videotranscoder.task.MediaSource;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.TranscodingConfiguration;
import com.snapchat.videotranscoder.task.TranscodingTask;
import com.snapchat.videotranscoder.task.VideoMediaSource;
import com.snapchat.videotranscoder.utils.MimeTools;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.util.cache:
//            SaveStoryToGalleryResolutionProvider, FileUtils, CacheType

public class SaveStoryToGalleryTask extends AsyncTask
{
    class _cls1SaveStoryDoneCallback
        implements com.snapchat.videotranscoder.task.Task.DoneCallback
    {

        final Object a;
        final SaveStoryToGalleryTask b;

        public void a(com.snapchat.videotranscoder.task.Task.Status status)
        {
            synchronized (a)
            {
                a.notify();
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        _cls1SaveStoryDoneCallback(Object obj)
        {
            b = SaveStoryToGalleryTask.this;
            a = obj;
            super();
        }
    }

    class _cls1SaveStoryProgressCallback
        implements com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback
    {

        final SaveStoryToGalleryTask a;

        public void a(int i1)
        {
            int j1 = SaveStoryToGalleryTask.a(a) + (i1 * SaveStoryToGalleryTask.b(a)) / 100;
            SaveStoryToGalleryTask savestorytogallerytask = a;
            Integer ainteger[] = new Integer[1];
            ainteger[0] = Integer.valueOf(j1);
            SaveStoryToGalleryTask.a(savestorytogallerytask, ainteger);
        }

        _cls1SaveStoryProgressCallback()
        {
            a = SaveStoryToGalleryTask.this;
            super();
        }
    }

    public static final class Result extends Enum
    {

        public static final Result a;
        public static final Result b;
        public static final Result c;
        public static final Result d;
        public static final Result e;
        public static final Result f;
        private static final Result g[];

        public static Result valueOf(String s)
        {
            return (Result)Enum.valueOf(com/snapchat/android/util/cache/SaveStoryToGalleryTask$Result, s);
        }

        public static Result[] values()
        {
            return (Result[])g.clone();
        }

        static 
        {
            a = new Result("INIT", 0);
            b = new Result("STARTED", 1);
            c = new Result("SUCCESS", 2);
            d = new Result("FAILED_SNAPS_NOT_ALL_LOADED", 3);
            e = new Result("FAILED_DURING_INITIALIZATION", 4);
            f = new Result("FAILED_DURING_TRANSCODING", 5);
            Result aresult[] = new Result[6];
            aresult[0] = a;
            aresult[1] = b;
            aresult[2] = c;
            aresult[3] = d;
            aresult[4] = e;
            aresult[5] = f;
            g = aresult;
        }

        private Result(String s, int i1)
        {
            super(s, i1);
        }
    }


    private final Clock a;
    private final SaveStoryToGalleryAnalytics b;
    private final ExceptionReporter c;
    private final Context d;
    private final StoryGroup e;
    private final List f;
    private LazyMediaSource g[];
    private boolean h;
    private final int i;
    private final int j;
    private final int k;
    private TranscodingConfiguration l;
    private TranscodingTask m;
    private Result n;
    private long o;
    private long p;

    public SaveStoryToGalleryTask(Context context, StoryGroup storygroup, List list)
    {
        this(new Clock(), SaveStoryToGalleryAnalytics.a(), new ExceptionReporter(), context, storygroup, list);
    }

    protected SaveStoryToGalleryTask(Clock clock, SaveStoryToGalleryAnalytics savestorytogalleryanalytics, ExceptionReporter exceptionreporter, Context context, StoryGroup storygroup, List list)
    {
        h = true;
        n = Result.a;
        a = clock;
        b = savestorytogalleryanalytics;
        c = exceptionreporter;
        d = context;
        e = storygroup;
        f = list;
        i = Math.min(f.size(), 5);
        k = Math.min(f.size(), 2);
        j = 100 - (i + k);
    }

    static int a(SaveStoryToGalleryTask savestorytogallerytask)
    {
        return savestorytogallerytask.i;
    }

    private Resolution a(ImageMediaSource imagemediasource)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(imagemediasource.b(), options);
        return new Resolution(options.outHeight, options.outWidth);
    }

    private Resolution a(VideoMediaSource videomediasource, MimeTools mimetools)
    {
        String s = videomediasource.b();
        return new Resolution(mimetools.e(s), mimetools.d(s));
    }

    private EncoderConfiguration a(MediaSource amediasource[], MimeTools mimetools)
    {
        ArrayList arraylist = new ArrayList(amediasource.length);
        int i1 = amediasource.length;
        int j1 = 0;
        while (j1 < i1) 
        {
            MediaSource mediasource = amediasource[j1];
            if (mediasource instanceof ImageMediaSource)
            {
                arraylist.add(a((ImageMediaSource)mediasource));
            } else
            if (mediasource instanceof VideoMediaSource)
            {
                arraylist.add(a((VideoMediaSource)mediasource, mimetools));
            } else
            {
                throw new IllegalArgumentException("Unhandled media source type");
            }
            j1++;
        }
        Resolution resolution = (new SaveStoryToGalleryResolutionProvider()).a(arraylist, 0x3d0900);
        if (resolution == null)
        {
            throw new SetupException("Could not find a valid resolution for transcoding.");
        } else
        {
            MediaFormat mediaformat = MediaFormat.createVideoFormat("video/avc", resolution.b(), resolution.a());
            mediaformat.setInteger("color-format", 0x7f000789);
            mediaformat.setInteger("bitrate", 0x3d0900);
            mediaformat.setInteger("frame-rate", 30);
            mediaformat.setInteger("i-frame-interval", 1);
            return new EncoderConfiguration("video/avc", mediaformat);
        }
    }

    private TranscodingConfiguration a(String s)
    {
        MediaSource amediasource[] = new MediaSource[g.length];
        int i1 = 0;
        do
        {
            try
            {
                if (i1 >= g.length)
                {
                    break;
                }
                amediasource[i1] = g[i1].a(d);
                Integer ainteger1[] = new Integer[1];
                ainteger1[0] = Integer.valueOf(((i1 + 1) * i) / g.length);
                publishProgress(ainteger1);
            }
            catch (Exception exception)
            {
                throw new SetupException("Failed to get media sources", exception);
            }
            i1++;
        } while (true);
        MimeTools mimetools = new MimeTools();
        EncoderConfiguration encoderconfiguration = a(amediasource, mimetools);
        EncoderConfiguration encoderconfiguration1 = b(amediasource, mimetools);
        Integer ainteger[] = new Integer[1];
        ainteger[0] = Integer.valueOf(i);
        publishProgress(ainteger);
        return new TranscodingConfiguration(amediasource, s, encoderconfiguration, encoderconfiguration1, false);
    }

    static void a(SaveStoryToGalleryTask savestorytogallerytask, Object aobj[])
    {
        savestorytogallerytask.publishProgress(aobj);
    }

    private void a(String s, Exception exception)
    {
        FailedToSaveStoryToGalleryException failedtosavestorytogalleryexception;
        if (exception != null)
        {
            Log.e("SaveStoryToGalleryTask", s, exception);
            failedtosavestorytogalleryexception = new FailedToSaveStoryToGalleryException(s, exception);
        } else
        {
            Log.e("SaveStoryToGalleryTask", s);
            failedtosavestorytogalleryexception = new FailedToSaveStoryToGalleryException(s);
        }
        c.a(failedtosavestorytogalleryexception);
    }

    static int b(SaveStoryToGalleryTask savestorytogallerytask)
    {
        return savestorytogallerytask.j;
    }

    private EncoderConfiguration b(MediaSource amediasource[], MimeTools mimetools)
    {
label0:
        {
            int i1 = amediasource.length;
            int j1 = 0;
            MediaFormat mediaformat;
            do
            {
                if (j1 >= i1)
                {
                    break label0;
                }
                MediaSource mediasource = amediasource[j1];
                if (mediasource instanceof VideoMediaSource)
                {
                    mediaformat = mimetools.a(mediasource.b(), false);
                    if (mediaformat != null)
                    {
                        break;
                    }
                }
                j1++;
            } while (true);
            MediaFormat mediaformat1 = MediaFormat.createAudioFormat("audio/mp4a-latm", mimetools.d(mediaformat), mimetools.e(mediaformat));
            mediaformat1.setInteger("bitrate", 0x20000);
            return new EncoderConfiguration("audio/mp4a-latm", mediaformat1);
        }
        return null;
    }

    private void c()
    {
        Collections.sort(f, new Comparator() {

            final SaveStoryToGalleryTask a;

            public int a(StorySnapLogbook storysnaplogbook, StorySnapLogbook storysnaplogbook1)
            {
                if (storysnaplogbook.j() < storysnaplogbook1.j())
                {
                    return -1;
                }
                return storysnaplogbook.j() <= storysnaplogbook1.j() ? 0 : 1;
            }

            public int compare(Object obj, Object obj1)
            {
                return a((StorySnapLogbook)obj, (StorySnapLogbook)obj1);
            }

            
            {
                a = SaveStoryToGalleryTask.this;
                super();
            }
        });
    }

    private int d()
    {
        Iterator iterator = f.iterator();
        int i1 = 0;
        while (iterator.hasNext()) 
        {
            StorySnap storysnap = ((StorySnapLogbook)iterator.next()).e();
            boolean flag;
            int j1;
            if (storysnap.am() || storysnap.an())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                j1 = i1 + 1;
            } else
            {
                j1 = i1;
            }
            i1 = j1;
        }
        return i1;
    }

    private int e()
    {
        Iterator iterator = f.iterator();
        int i1 = 0;
        while (iterator.hasNext()) 
        {
            StorySnap storysnap = ((StorySnapLogbook)iterator.next()).e();
            boolean flag;
            int j1;
            if (storysnap.am() || storysnap.an())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                j1 = i1 + 1;
            } else
            {
                j1 = i1;
            }
            i1 = j1;
        }
        return i1;
    }

    private long f()
    {
        if (n != Result.c)
        {
            return 0L;
        } else
        {
            return p - o;
        }
    }

    private com.snapchat.videotranscoder.task.Task.Status g()
    {
        if (m != null)
        {
            return m.a();
        } else
        {
            return com.snapchat.videotranscoder.task.Task.Status.a;
        }
    }

    protected transient Boolean a(Void avoid[])
    {
        String s;
        if (!h)
        {
            return Boolean.valueOf(false);
        }
        s = (new FileUtils()).a(CacheType.h).getAbsolutePath();
        Object obj;
        l = a(s);
        m = new TranscodingTask(l);
        obj = new Object();
        VideoTranscoder.a().a(m, new _cls1SaveStoryDoneCallback(obj), new _cls1SaveStoryProgressCallback());
        ThreadUtils.b();
        obj;
        JVM INSTR monitorenter ;
        obj.wait();
        obj;
        JVM INSTR monitorexit ;
        Boolean boolean3;
        if (m.a() == com.snapchat.videotranscoder.task.Task.Status.g)
        {
            break MISSING_BLOCK_LABEL_330;
        }
        a("Transcoding failed!", ((Exception) (null)));
        n = Result.f;
        boolean3 = Boolean.valueOf(false);
        int i3 = i + j;
        for (int j3 = 0; j3 < g.length; j3++)
        {
            g[j3].a();
            Integer ainteger4[] = new Integer[1];
            ainteger4[0] = Integer.valueOf(i3 + ((j3 + 1) * k) / g.length);
            publishProgress(ainteger4);
        }

        break MISSING_BLOCK_LABEL_327;
        Exception exception1;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        InterruptedException interruptedexception;
        interruptedexception;
        Boolean boolean2;
        a("Failed to wait for transcoding synchronization object to fire", ((Exception) (interruptedexception)));
        n = Result.f;
        boolean2 = Boolean.valueOf(false);
        int i2 = i + j;
        for (int j2 = 0; j2 < g.length; j2++)
        {
            g[j2].a();
            Integer ainteger2[] = new Integer[1];
            ainteger2[0] = Integer.valueOf(i2 + ((j2 + 1) * k) / g.length);
            publishProgress(ainteger2);
        }

        return boolean2;
        return boolean3;
        FileUtils.a(d, Uri.parse(s));
        int k2 = i + j;
        for (int l2 = 0; l2 < g.length; l2++)
        {
            g[l2].a();
            Integer ainteger3[] = new Integer[1];
            ainteger3[0] = Integer.valueOf(k2 + ((l2 + 1) * k) / g.length);
            publishProgress(ainteger3);
        }

        break MISSING_BLOCK_LABEL_603;
        SetupException setupexception;
        setupexception;
        Boolean boolean1;
        a("There was a setup issue with the transcoding operation", ((Exception) (setupexception)));
        n = Result.f;
        boolean1 = Boolean.valueOf(false);
        int k1 = i + j;
        for (int l1 = 0; l1 < g.length; l1++)
        {
            g[l1].a();
            Integer ainteger1[] = new Integer[1];
            ainteger1[0] = Integer.valueOf(k1 + ((l1 + 1) * k) / g.length);
            publishProgress(ainteger1);
        }

        return boolean1;
        Exception exception;
        exception;
        int i1 = i + j;
        for (int j1 = 0; j1 < g.length; j1++)
        {
            g[j1].a();
            Integer ainteger[] = new Integer[1];
            ainteger[0] = Integer.valueOf(i1 + ((j1 + 1) * k) / g.length);
            publishProgress(ainteger);
        }

        throw exception;
        return Boolean.valueOf(true);
    }

    protected void a()
    {
        e.a(com.snapchat.android.model.StoryGroup.ActionState.SAVED);
    }

    protected void a(Boolean boolean1)
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((StorySnapLogbook)iterator.next()).a(true)) { }
        p = a.a();
        if (boolean1.booleanValue())
        {
            n = Result.c;
        }
        b.a(e(), d(), f(), n, g(), l);
        if (boolean1.booleanValue())
        {
            a();
            return;
        } else
        {
            b();
            return;
        }
    }

    protected transient void a(Integer ainteger[])
    {
        super.onProgressUpdate(ainteger);
        int i1 = ainteger[0].intValue();
        e.a(i1);
    }

    protected void b()
    {
        AlertDialogUtils.a(0x7f0c016f, d);
        e.a(com.snapchat.android.model.StoryGroup.ActionState.READY);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    protected void onPreExecute()
    {
        Iterator iterator1;
        int i1;
        super.onPreExecute();
        n = Result.b;
        o = a.a();
        if (e.n() != com.snapchat.android.model.StoryGroup.ActionState.READY)
        {
            n = Result.e;
            throw new IllegalStateException("Can only save one story at a time.");
        }
        e.a(com.snapchat.android.model.StoryGroup.ActionState.SAVING);
        e.a(0);
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((StorySnapLogbook)iterator.next()).a(false)) { }
        c();
        g = new LazyMediaSource[f.size()];
        iterator1 = f.iterator();
        i1 = 0;
_L2:
        StorySnap storysnap;
label0:
        {
            if (iterator1.hasNext())
            {
                storysnap = ((StorySnapLogbook)iterator1.next()).e();
                if (storysnap.U())
                {
                    break label0;
                }
                a((new StringBuilder()).append("Story snap is not loaded: ").append(storysnap.ax()).toString(), ((Exception) (null)));
                n = Result.d;
                h = false;
            }
            return;
        }
        LazyMediaSource alazymediasource[];
        int j1;
        try
        {
            alazymediasource = g;
        }
        catch (Exception exception)
        {
            a((new StringBuilder()).append("Failed to setup media source for save story to gallery task: ").append(storysnap.ax()).toString(), exception);
            n = Result.e;
            h = false;
            return;
        }
        j1 = i1 + 1;
        alazymediasource[i1] = storysnap.d(d);
        i1 = j1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void onProgressUpdate(Object aobj[])
    {
        a((Integer[])aobj);
    }
}
