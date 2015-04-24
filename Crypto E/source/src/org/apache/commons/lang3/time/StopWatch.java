// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;


// Referenced classes of package org.apache.commons.lang3.time:
//            DurationFormatUtils

public class StopWatch
{
    static final class SplitState extends Enum
    {

        private static final SplitState $VALUES[];
        public static final SplitState SPLIT;
        public static final SplitState UNSPLIT;

        public static SplitState valueOf(String s)
        {
            return (SplitState)Enum.valueOf(org/apache/commons/lang3/time/StopWatch$SplitState, s);
        }

        public static SplitState[] values()
        {
            return (SplitState[])$VALUES.clone();
        }

        static 
        {
            SPLIT = new SplitState("SPLIT", 0);
            UNSPLIT = new SplitState("UNSPLIT", 1);
            SplitState asplitstate[] = new SplitState[2];
            asplitstate[0] = SPLIT;
            asplitstate[1] = UNSPLIT;
            $VALUES = asplitstate;
        }

        private SplitState(String s, int i)
        {
            super(s, i);
        }
    }

    static abstract class State extends Enum
    {

        private static final State $VALUES[];
        public static final State RUNNING;
        public static final State STOPPED;
        public static final State SUSPENDED;
        public static final State UNSTARTED;

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(org/apache/commons/lang3/time/StopWatch$State, s);
        }

        public static State[] values()
        {
            return (State[])$VALUES.clone();
        }

        abstract boolean isStarted();

        abstract boolean isStopped();

        abstract boolean isSuspended();

        static 
        {
            UNSTARTED = new State("UNSTARTED", 0) {

                boolean isStarted()
                {
                    return false;
                }

                boolean isStopped()
                {
                    return true;
                }

                boolean isSuspended()
                {
                    return false;
                }

            };
            RUNNING = new State("RUNNING", 1) {

                boolean isStarted()
                {
                    return true;
                }

                boolean isStopped()
                {
                    return false;
                }

                boolean isSuspended()
                {
                    return false;
                }

            };
            STOPPED = new State("STOPPED", 2) {

                boolean isStarted()
                {
                    return false;
                }

                boolean isStopped()
                {
                    return true;
                }

                boolean isSuspended()
                {
                    return false;
                }

            };
            SUSPENDED = new State("SUSPENDED", 3) {

                boolean isStarted()
                {
                    return true;
                }

                boolean isStopped()
                {
                    return false;
                }

                boolean isSuspended()
                {
                    return true;
                }

            };
            State astate[] = new State[4];
            astate[0] = UNSTARTED;
            astate[1] = RUNNING;
            astate[2] = STOPPED;
            astate[3] = SUSPENDED;
            $VALUES = astate;
        }

        private State(String s, int i)
        {
            super(s, i);
        }

    }


    private static final long NANO_2_MILLIS = 0xf4240L;
    private State runningState;
    private SplitState splitState;
    private long startTime;
    private long startTimeMillis;
    private long stopTime;

    public StopWatch()
    {
        runningState = State.UNSTARTED;
        splitState = SplitState.UNSPLIT;
    }

    public long getNanoTime()
    {
        if (runningState == State.STOPPED || runningState == State.SUSPENDED)
        {
            return stopTime - startTime;
        }
        if (runningState == State.UNSTARTED)
        {
            return 0L;
        }
        if (runningState == State.RUNNING)
        {
            return System.nanoTime() - startTime;
        } else
        {
            throw new RuntimeException("Illegal running state has occurred.");
        }
    }

    public long getSplitNanoTime()
    {
        if (splitState != SplitState.SPLIT)
        {
            throw new IllegalStateException("Stopwatch must be split to get the split time. ");
        } else
        {
            return stopTime - startTime;
        }
    }

    public long getSplitTime()
    {
        return getSplitNanoTime() / 0xf4240L;
    }

    public long getStartTime()
    {
        if (runningState == State.UNSTARTED)
        {
            throw new IllegalStateException("Stopwatch has not been started");
        } else
        {
            return startTimeMillis;
        }
    }

    public long getTime()
    {
        return getNanoTime() / 0xf4240L;
    }

    public boolean isStarted()
    {
        return runningState.isStarted();
    }

    public boolean isStopped()
    {
        return runningState.isStopped();
    }

    public boolean isSuspended()
    {
        return runningState.isSuspended();
    }

    public void reset()
    {
        runningState = State.UNSTARTED;
        splitState = SplitState.UNSPLIT;
    }

    public void resume()
    {
        if (runningState != State.SUSPENDED)
        {
            throw new IllegalStateException("Stopwatch must be suspended to resume. ");
        } else
        {
            startTime = startTime + (System.nanoTime() - stopTime);
            runningState = State.RUNNING;
            return;
        }
    }

    public void split()
    {
        if (runningState != State.RUNNING)
        {
            throw new IllegalStateException("Stopwatch is not running. ");
        } else
        {
            stopTime = System.nanoTime();
            splitState = SplitState.SPLIT;
            return;
        }
    }

    public void start()
    {
        if (runningState == State.STOPPED)
        {
            throw new IllegalStateException("Stopwatch must be reset before being restarted. ");
        }
        if (runningState != State.UNSTARTED)
        {
            throw new IllegalStateException("Stopwatch already started. ");
        } else
        {
            startTime = System.nanoTime();
            startTimeMillis = System.currentTimeMillis();
            runningState = State.RUNNING;
            return;
        }
    }

    public void stop()
    {
        if (runningState != State.RUNNING && runningState != State.SUSPENDED)
        {
            throw new IllegalStateException("Stopwatch is not running. ");
        }
        if (runningState == State.RUNNING)
        {
            stopTime = System.nanoTime();
        }
        runningState = State.STOPPED;
    }

    public void suspend()
    {
        if (runningState != State.RUNNING)
        {
            throw new IllegalStateException("Stopwatch must be running to suspend. ");
        } else
        {
            stopTime = System.nanoTime();
            runningState = State.SUSPENDED;
            return;
        }
    }

    public String toSplitString()
    {
        return DurationFormatUtils.formatDurationHMS(getSplitTime());
    }

    public String toString()
    {
        return DurationFormatUtils.formatDurationHMS(getTime());
    }

    public void unsplit()
    {
        if (splitState != SplitState.SPLIT)
        {
            throw new IllegalStateException("Stopwatch has not been split. ");
        } else
        {
            splitState = SplitState.UNSPLIT;
            return;
        }
    }
}
