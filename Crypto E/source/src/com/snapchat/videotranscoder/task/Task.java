// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import android.util.Log;

// Referenced classes of package com.snapchat.videotranscoder.task:
//            SetupException, TranscodingException

public abstract class Task
{
    public static interface DoneCallback
    {

        public abstract void a(Status status);
    }

    public static interface ProgressUpdateCallback
    {

        public abstract void a(int i);
    }

    public static final class Status extends Enum
    {

        public static final Status a;
        public static final Status b;
        public static final Status c;
        public static final Status d;
        public static final Status e;
        public static final Status f;
        public static final Status g;
        private static final Status h[];

        public static Status valueOf(String s)
        {
            return (Status)Enum.valueOf(com/snapchat/videotranscoder/task/Task$Status, s);
        }

        public static Status[] values()
        {
            return (Status[])h.clone();
        }

        static 
        {
            a = new Status("INVALID", 0);
            b = new Status("CONFIGURED", 1);
            c = new Status("CONFIG_ERROR", 2);
            d = new Status("RUNNING", 3);
            e = new Status("ABORTED", 4);
            f = new Status("FAILED", 5);
            g = new Status("FINISHED", 6);
            Status astatus[] = new Status[7];
            astatus[0] = a;
            astatus[1] = b;
            astatus[2] = c;
            astatus[3] = d;
            astatus[4] = e;
            astatus[5] = f;
            astatus[6] = g;
            h = astatus;
        }

        private Status(String s, int i)
        {
            super(s, i);
        }
    }


    private volatile Status a;

    public Task()
    {
        a = Status.a;
    }

    public Status a()
    {
        return a;
    }

    public void a(DoneCallback donecallback, ProgressUpdateCallback progressupdatecallback)
    {
        (new Thread(new Runnable(this, progressupdatecallback, donecallback) {

            final Task a;
            final ProgressUpdateCallback b;
            final DoneCallback c;
            final Task d;

            public void run()
            {
                a.a(b);
                if (c != null)
                {
                    c.a(a.a());
                }
_L2:
                return;
                SetupException setupexception;
                setupexception;
                Log.e("Task", "Task failed during setup", setupexception);
                if (c == null) goto _L2; else goto _L1
_L1:
                c.a(Status.c);
                return;
                TranscodingException transcodingexception;
                transcodingexception;
                Log.e("Task", "Task failed during transcoding", transcodingexception);
                if (c != null)
                {
                    c.a(Status.f);
                    return;
                }
                  goto _L2
            }

            
            {
                d = Task.this;
                a = task1;
                b = progressupdatecallback;
                c = donecallback;
                super();
            }
        })).start();
    }

    public abstract void a(ProgressUpdateCallback progressupdatecallback);

    protected void a(Status status)
    {
        a = status;
    }

    public abstract Status b();
}
