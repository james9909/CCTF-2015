// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.webrtc.voiceengine;

import android.content.Context;
import android.media.AudioRecord;
import android.os.Process;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

class WebRtcAudioRecord
{

    private AudioRecord _audioRecord;
    private int _bufferedRecSamples;
    private Context _context;
    private boolean _doRecInit;
    private boolean _isRecording;
    private ByteBuffer _recBuffer;
    private final ReentrantLock _recLock = new ReentrantLock();
    private byte _tempBufRec[];

    WebRtcAudioRecord()
    {
        _audioRecord = null;
        _doRecInit = true;
        _isRecording = false;
        _bufferedRecSamples = 0;
        try
        {
            _recBuffer = ByteBuffer.allocateDirect(960);
        }
        catch (Exception exception)
        {
            Log.e("AddLive_SDK", "Failed to allocated recording byte buffer", exception);
        }
        _tempBufRec = new byte[960];
    }

    private int InitRecording(int i, int j)
    {
        int k = 2 * AudioRecord.getMinBufferSize(j, 16, 2);
        _bufferedRecSamples = j / 200;
        if (_audioRecord != null)
        {
            _audioRecord.release();
            _audioRecord = null;
        }
        try
        {
            _audioRecord = new AudioRecord(7, j, 16, 2, k);
        }
        catch (Exception exception)
        {
            Log.e("AddLive_SDK", "Failed to create AudioRecord", exception);
            return -1;
        }
        if (_audioRecord.getState() != 1)
        {
            return -1;
        } else
        {
            return _bufferedRecSamples;
        }
    }

    private int RecordAudio(int i)
    {
        _recLock.lock();
        AudioRecord audiorecord = _audioRecord;
        if (audiorecord == null)
        {
            _recLock.unlock();
            return -2;
        }
        boolean flag = _doRecInit;
        if (!flag) goto _L2; else goto _L1
_L1:
        Process.setThreadPriority(-19);
_L4:
        _doRecInit = false;
_L2:
        int j;
        _recBuffer.rewind();
        j = _audioRecord.read(_tempBufRec, 0, i);
        _recBuffer.put(_tempBufRec);
        Exception exception1;
        Exception exception2;
        if (j != i)
        {
            _recLock.unlock();
            return -1;
        }
        _recLock.unlock();
          goto _L3
        exception2;
        Log.w("AddLive_SDK", "Failed to increase recording thread priority", exception2);
          goto _L4
        exception1;
        Log.e("AddLive_SDK", "Recording audio failed", exception1);
        _recLock.unlock();
_L6:
        return _bufferedRecSamples;
_L3:
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        _recLock.unlock();
        throw exception;
    }

    private int StartRecording()
    {
        try
        {
            _audioRecord.startRecording();
        }
        catch (IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
            return -1;
        }
        _isRecording = true;
        return 0;
    }

    private int StopRecording()
    {
        _recLock.lock();
        int i = _audioRecord.getRecordingState();
        if (i != 3)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        _audioRecord.stop();
        _audioRecord.release();
        _audioRecord = null;
        _doRecInit = true;
        _recLock.unlock();
        _isRecording = false;
        return 0;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        illegalstateexception.printStackTrace();
        _doRecInit = true;
        _recLock.unlock();
        return -1;
        Exception exception;
        exception;
        _doRecInit = true;
        _recLock.unlock();
        throw exception;
    }
}
