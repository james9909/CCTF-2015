// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.snapchat.videotranscoder.task:
//            Task

public class TaskExecutor
{
    class TaskWrapper
    {

        Task a;
        Task.DoneCallback b;
        Task.ProgressUpdateCallback c;
        final TaskExecutor d;

        public TaskWrapper(Task task, Task.DoneCallback donecallback, Task.ProgressUpdateCallback progressupdatecallback)
        {
            d = TaskExecutor.this;
            super();
            a = task;
            b = donecallback;
            c = progressupdatecallback;
        }
    }


    private final Queue a = new ConcurrentLinkedQueue();
    private final Lock b = new ReentrantLock();
    private TaskWrapper c;

    public TaskExecutor()
    {
        c = null;
    }

    private void a()
    {
        b.lock();
        if (c != null || a.isEmpty())
        {
            b.unlock();
            return;
        } else
        {
            TaskWrapper taskwrapper = (TaskWrapper)a.poll();
            c = taskwrapper;
            b.unlock();
            taskwrapper.a.a(new Task.DoneCallback(taskwrapper) {

                final TaskWrapper a;
                final TaskExecutor b;

                public void a(Task.Status status)
                {
                    TaskExecutor.a(b, a, status);
                }

            
            {
                b = TaskExecutor.this;
                a = taskwrapper;
                super();
            }
            }, taskwrapper.c);
            return;
        }
    }

    private void a(TaskWrapper taskwrapper, Task.Status status)
    {
        Task.DoneCallback donecallback = taskwrapper.b;
        if (donecallback != null)
        {
            donecallback.a(status);
        }
        b();
        a();
    }

    static void a(TaskExecutor taskexecutor, TaskWrapper taskwrapper, Task.Status status)
    {
        taskexecutor.a(taskwrapper, status);
    }

    private void b()
    {
        b.lock();
        c = null;
        b.unlock();
    }

    public void a(Task task)
    {
        b.lock();
        if (task.b() != Task.Status.d)
        {
            Iterator iterator = a.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                TaskWrapper taskwrapper = (TaskWrapper)iterator.next();
                if (taskwrapper.a != task)
                {
                    continue;
                }
                a.remove(taskwrapper);
                break;
            } while (true);
            if (c.a == task)
            {
                c = null;
            }
        }
        b.unlock();
        a();
    }

    public void a(Task task, Task.DoneCallback donecallback, Task.ProgressUpdateCallback progressupdatecallback)
    {
        b.lock();
        a.add(new TaskWrapper(task, donecallback, progressupdatecallback));
        b.unlock();
        a();
    }
}
