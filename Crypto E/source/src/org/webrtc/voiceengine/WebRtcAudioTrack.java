// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.webrtc.voiceengine;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import com.addlive.impl.RuntimeConfig;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

class WebRtcAudioTrack
{

    private AudioManager _audioManager;
    private AudioTrack _audioTrack;
    private int _bufferedPlaySamples;
    private Context _context;
    private boolean _doPlayInit;
    private boolean _doRecInit;
    private boolean _isPlaying;
    private boolean _isRecording;
    private ByteBuffer _playBuffer;
    private final ReentrantLock _playLock = new ReentrantLock();
    private int _playPosition;
    private byte _tempBufPlay[];

    WebRtcAudioTrack()
    {
        _audioTrack = null;
        _doPlayInit = true;
        _doRecInit = true;
        _isRecording = false;
        _isPlaying = false;
        _bufferedPlaySamples = 0;
        _playPosition = 0;
        try
        {
            _playBuffer = ByteBuffer.allocateDirect(960);
        }
        catch (Exception exception)
        {
            Log.e("AddLive_SDK", "Failed to allocate playback buffer", exception);
        }
        _tempBufPlay = new byte[960];
    }

    private int GetPlayoutVolume()
    {
        if (_audioManager == null && _context != null)
        {
            _audioManager = (AudioManager)_context.getSystemService("audio");
        }
        int i = -1;
        if (_audioManager != null)
        {
            i = _audioManager.getStreamVolume(RuntimeConfig.AUDIO_STREAM_TYPE);
        }
        return i;
    }

    private int InitPlayback(int i)
    {
        int j = AudioTrack.getMinBufferSize(i, 4, 2);
        if (j < 6000)
        {
            j *= 2;
        }
        _bufferedPlaySamples = 0;
        if (_audioTrack != null)
        {
            _audioTrack.release();
            _audioTrack = null;
        }
        try
        {
            _audioTrack = new AudioTrack(RuntimeConfig.AUDIO_STREAM_TYPE, i, 4, 2, j, 1);
        }
        catch (Exception exception)
        {
            Log.e("AddLive_SDK", "Failed to create AudioTrack", exception);
            return -1;
        }
        if (_audioTrack.getState() != 1)
        {
            return -1;
        }
        if (_audioManager == null && _context != null)
        {
            _audioManager = (AudioManager)_context.getSystemService("audio");
        }
        if (_audioManager == null)
        {
            return 0;
        } else
        {
            return _audioManager.getStreamMaxVolume(RuntimeConfig.AUDIO_STREAM_TYPE);
        }
    }

    private int PlayAudio(int i)
    {
        _playLock.lock();
        AudioTrack audiotrack = _audioTrack;
        if (audiotrack == null)
        {
            _playLock.unlock();
            return -2;
        }
        boolean flag = _doPlayInit;
        if (!flag) goto _L2; else goto _L1
_L1:
        Process.setThreadPriority(-19);
_L3:
        _doPlayInit = false;
_L2:
        int j;
        _playBuffer.get(_tempBufPlay);
        j = _audioTrack.write(_tempBufPlay, 0, i);
        _playBuffer.rewind();
        _bufferedPlaySamples = _bufferedPlaySamples + (j >> 1);
        int k = _audioTrack.getPlaybackHeadPosition();
        if (k < _playPosition)
        {
            _playPosition = 0;
        }
        _bufferedPlaySamples = _bufferedPlaySamples - (k - _playPosition);
        _playPosition = k;
        Exception exception;
        Exception exception1;
        if (j != i)
        {
            _playLock.unlock();
            return -1;
        } else
        {
            _playLock.unlock();
            return _bufferedPlaySamples;
        }
        exception1;
        Log.w("AddLive_SDK", "Failed to increase recording thread priority", exception1);
          goto _L3
        exception;
        _playLock.unlock();
        throw exception;
    }

    private int SetPlayoutSpeaker(boolean flag)
    {
        if (_audioManager == null && _context != null)
        {
            _audioManager = (AudioManager)_context.getSystemService("audio");
        }
        if (_audioManager == null)
        {
            Log.e("AddLive_SDK", "Could not change audio routing - no audio manager");
            return -1;
        }
        int i = android.os.Build.VERSION.SDK_INT;
        if (3 == i || 4 == i)
        {
            if (flag)
            {
                _audioManager.setMode(0);
            } else
            {
                _audioManager.setMode(2);
            }
        } else
        if ((Build.BRAND.equals("Samsung") || Build.BRAND.equals("samsung")) && (5 == i || 6 == i || 7 == i))
        {
            if (flag)
            {
                _audioManager.setMode(2);
                _audioManager.setSpeakerphoneOn(flag);
            } else
            {
                _audioManager.setSpeakerphoneOn(flag);
                _audioManager.setMode(0);
            }
        } else
        {
            _audioManager.setSpeakerphoneOn(flag);
        }
        return 0;
    }

    private int SetPlayoutVolume(int i)
    {
        if (_audioManager == null && _context != null)
        {
            _audioManager = (AudioManager)_context.getSystemService("audio");
        }
        byte byte0 = -1;
        if (_audioManager != null)
        {
            _audioManager.setStreamVolume(RuntimeConfig.AUDIO_STREAM_TYPE, i, 0);
            byte0 = 0;
        }
        return byte0;
    }

    private int StartPlayback()
    {
        try
        {
            _audioTrack.play();
        }
        catch (IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
            return -1;
        }
        _isPlaying = true;
        return 0;
    }

    private int StopPlayback()
    {
        _playLock.lock();
        int i = _audioTrack.getPlayState();
        if (i != 3)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        _audioTrack.stop();
        _audioTrack.flush();
        _audioTrack.release();
        _audioTrack = null;
        _doPlayInit = true;
        _playLock.unlock();
        _isPlaying = false;
        return 0;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        illegalstateexception.printStackTrace();
        _doPlayInit = true;
        _playLock.unlock();
        return -1;
        Exception exception;
        exception;
        _doPlayInit = true;
        _playLock.unlock();
        throw exception;
    }
}
