// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.table.HttpMetricsTable;

public class ClientConnMetricsManager
{

    private boolean mConnectionReleased;
    private long mDuration;
    private String mMethod;
    private boolean mNeedToSaveMetrics;
    private String mPath;
    private long mReceivedBytes;
    private long mRequestTime;
    private boolean mResponseStatusReady;
    private long mSentBytes;
    private int mStatusCode;
    private String mStatusLine;

    public ClientConnMetricsManager()
    {
        mConnectionReleased = false;
        mResponseStatusReady = false;
        mNeedToSaveMetrics = true;
    }

    private void c()
    {
        HttpMetricsTable.a(SnapchatApplication.e(), mRequestTime, mMethod, mPath, mSentBytes, mReceivedBytes, mDuration, mStatusLine, mStatusCode);
    }

    public long a()
    {
        return mReceivedBytes;
    }

    public void a(long l, long l1)
    {
        this;
        JVM INSTR monitorenter ;
        mReceivedBytes = l;
        mSentBytes = l1;
        mConnectionReleased = true;
        if (mResponseStatusReady && mNeedToSaveMetrics)
        {
            c();
            mNeedToSaveMetrics = false;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s, String s1, String s2, int i, long l, long l1)
    {
        this;
        JVM INSTR monitorenter ;
        mMethod = s;
        mPath = s1;
        mStatusLine = s2;
        mStatusCode = i;
        mRequestTime = l;
        mDuration = l1;
        mResponseStatusReady = true;
        if (mConnectionReleased && mNeedToSaveMetrics)
        {
            c();
            mNeedToSaveMetrics = false;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public long b()
    {
        return mSentBytes;
    }
}
