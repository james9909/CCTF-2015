// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.impl.cam;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.Camera;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import com.addlive.impl.Log;
import com.addlive.impl.cb.ADLInjectFrameCb;
import com.addlive.service.Device;
import com.addlive.service.VideoCaptureDevice;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.addlive.impl.cam:
//            CaptureConfig

public class ADLCameraHelper extends HandlerThread
    implements android.hardware.Camera.PreviewCallback
{
    class AsyncResult
    {

        String error;
        boolean isSuccess;
        final ADLCameraHelper this$0;

        private AsyncResult()
        {
            this$0 = ADLCameraHelper.this;
            super();
            isSuccess = true;
            error = "";
        }

    }

    public static interface CamTask
    {

        public abstract void workOnCam(Camera camera1);
    }


    private static final int NUM_BUFFERS = 2;
    private static String selectedCam;
    private Camera camera;
    private List cameraDevices;
    private Context context;
    private CountDownLatch firstFrameLatch;
    private int fps;
    private ADLInjectFrameCb frameReceiver;
    private int height;
    private Map id2IdxMap;
    private int prevOrientation;
    private Handler taskHandler;
    private int width;

    public ADLCameraHelper(Context context1, ADLInjectFrameCb adlinjectframecb, CaptureConfig captureconfig)
    {
        super("CameraHandlerThread");
        id2IdxMap = new HashMap();
        cameraDevices = new LinkedList();
        taskHandler = null;
        prevOrientation = -1;
        width = captureconfig.getWidth();
        height = captureconfig.getHeight();
        fps = captureconfig.getFps();
        context = context1;
        frameReceiver = adlinjectframecb;
        start();
        taskHandler = new Handler(getLooper());
    }

    private void configInternal(CountDownLatch countdownlatch, AsyncResult asyncresult)
    {
        Log.d("AddLive_SDK", (new StringBuilder()).append("Setting up hardware camera: ").append(selectedCam).toString());
        camera = Camera.open(((Integer)id2IdxMap.get(selectedCam)).intValue());
        int j;
        int i = getOrientation(false);
        camera.setDisplayOrientation(i);
        android.hardware.Camera.Parameters parameters = camera.getParameters();
        parameters.setPreviewFormat(17);
        parameters.setPreviewSize(width, height);
        int ai[] = getFrameRateRange(parameters.getSupportedPreviewFpsRange(), fps);
        parameters.setPreviewFpsRange(ai[0], ai[1]);
        camera.setParameters(parameters);
        camera.setPreviewCallbackWithBuffer(this);
        j = (3 * width * height) / 2;
        int k = 0;
_L2:
        if (k >= 2)
        {
            break; /* Loop/switch isn't completed */
        }
        camera.addCallbackBuffer(new byte[j]);
        k++;
        if (true) goto _L2; else goto _L1
        RuntimeException runtimeexception;
        runtimeexception;
        Log.e("AddLive_SDK", "Failed to open camera device. It's most likely already in use.", runtimeexception);
        asyncresult.isSuccess = false;
        asyncresult.error = (new StringBuilder()).append("Failed to open camera device. It's most likely already in use.").append(" (").append(runtimeexception.toString()).append(")").toString();
        countdownlatch.countDown();
        countdownlatch.countDown();
        return;
_L1:
        prevOrientation = getOrientation(true);
        countdownlatch.countDown();
        return;
        Exception exception1;
        exception1;
        Log.e("AddLive_SDK", "Failed to configure the camera", exception1);
        asyncresult.isSuccess = false;
        asyncresult.error = (new StringBuilder()).append("Got an exception: ").append(exception1.toString()).toString();
        countdownlatch.countDown();
        return;
        Exception exception;
        exception;
        countdownlatch.countDown();
        throw exception;
    }

    private void doOnCamInternal(CountDownLatch countdownlatch, CamTask camtask, AsyncResult asyncresult)
    {
        camtask.workOnCam(camera);
        countdownlatch.countDown();
        return;
        Exception exception1;
        exception1;
        Log.e("AddLive_SDK", "Failed to perform camera operation", exception1);
        asyncresult.isSuccess = false;
        asyncresult.error = (new StringBuilder()).append("Got an exception: ").append(exception1.toString()).toString();
        countdownlatch.countDown();
        return;
        Exception exception;
        exception;
        countdownlatch.countDown();
        throw exception;
    }

    public static String getSelectedCam()
    {
        return selectedCam;
    }

    private void processFrame(byte abyte0[])
    {
        long l = System.currentTimeMillis();
        if (camera == null)
        {
            Log.w("AddLive_SDK", "Got new frame on already disposed camera");
            return;
        }
        try
        {
            int i = getOrientation(true);
            if (i != prevOrientation)
            {
                camera.setDisplayOrientation(getOrientation(false));
                prevOrientation = i;
            }
            frameReceiver.injectFrame(abyte0, width, height, abyte0.length, 17, i, l);
            return;
        }
        catch (Exception exception)
        {
            Log.e("AddLive_SDK", "Error injectFrame: ", exception);
        }
        return;
    }

    public static void setSelectedCam(String s)
    {
        selectedCam = s;
    }

    private void stopInternal(CountDownLatch countdownlatch, AsyncResult asyncresult)
    {
        Camera camera1 = camera;
        if (camera1 == null)
        {
            countdownlatch.countDown();
            return;
        }
        camera.stopPreview();
        camera.release();
        camera = null;
        countdownlatch.countDown();
        return;
        Exception exception1;
        exception1;
        Log.e("AddLive_SDK", "Failed to configure the camera", exception1);
        asyncresult.isSuccess = false;
        asyncresult.error = (new StringBuilder()).append("Got an exception: ").append(exception1.toString()).toString();
        countdownlatch.countDown();
        return;
        Exception exception;
        exception;
        countdownlatch.countDown();
        throw exception;
    }

    public void checkHardware()
    {
        int i = 0;
        if (context == null)
        {
            throw new RuntimeException("Invalid context.");
        }
        boolean flag;
        if (context.getPackageManager().hasSystemFeature("android.hardware.camera") || context.getPackageManager().hasSystemFeature("android.hardware.camera.front"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            throw new RuntimeException("Camera feature is not supported by system.");
        }
        int j = Camera.getNumberOfCameras();
        android.hardware.Camera.CameraInfo camerainfo = new android.hardware.Camera.CameraInfo();
        while (i < j) 
        {
            Camera.getCameraInfo(i, camerainfo);
            if (camerainfo.facing == 1)
            {
                cameraDevices.add(new Device(VideoCaptureDevice.FRONT_CAMERA.getId(), "Front Camera"));
                id2IdxMap.put(VideoCaptureDevice.FRONT_CAMERA.getId(), Integer.valueOf(i));
            } else
            {
                cameraDevices.add(new Device(VideoCaptureDevice.BACK_CAMERA.getId(), "Back Camera"));
                id2IdxMap.put(VideoCaptureDevice.BACK_CAMERA.getId(), Integer.valueOf(i));
            }
            i++;
        }
        if (!id2IdxMap.containsKey(selectedCam))
        {
            selectedCam = VideoCaptureDevice.BACK_CAMERA.getId();
        }
    }

    public void configure(CountDownLatch countdownlatch)
    {
        final CountDownLatch syncLatch = new CountDownLatch(1);
        final AsyncResult result = new AsyncResult();
        taskHandler.post(new Runnable() {

            final ADLCameraHelper this$0;
            final AsyncResult val$result;
            final CountDownLatch val$syncLatch;

            public void run()
            {
                configInternal(syncLatch, result);
            }

            
            {
                this$0 = ADLCameraHelper.this;
                syncLatch = countdownlatch;
                result = asyncresult;
                super();
            }
        });
        firstFrameLatch = countdownlatch;
        syncLatch.await();
        if (!result.isSuccess)
        {
            throw new IOException(result.error);
        } else
        {
            return;
        }
    }

    public void dispose()
    {
        quit();
        context = null;
    }

    public void doOnCam(final CamTask task)
    {
        final CountDownLatch syncLatch = new CountDownLatch(1);
        final AsyncResult result = new AsyncResult();
        taskHandler.post(new Runnable() {

            final ADLCameraHelper this$0;
            final AsyncResult val$result;
            final CountDownLatch val$syncLatch;
            final CamTask val$task;

            public void run()
            {
                doOnCamInternal(syncLatch, task, result);
            }

            
            {
                this$0 = ADLCameraHelper.this;
                syncLatch = countdownlatch;
                task = camtask;
                result = asyncresult;
                super();
            }
        });
        syncLatch.await();
        if (!result.isSuccess)
        {
            throw new IOException((new StringBuilder()).append("Failed to stop the camera: ").append(result.error).toString());
        } else
        {
            return;
        }
    }

    public List getCameraDevices()
    {
        return cameraDevices;
    }

    public String getDevice()
    {
        return selectedCam;
    }

    public int[] getFrameRateRange(List list, int i)
    {
        int j = i * 1000;
        StringBuilder stringbuilder = new StringBuilder();
        int ai4[];
        for (Iterator iterator = list.iterator(); iterator.hasNext(); stringbuilder.append('[').append(ai4[0]).append(';').append(ai4[1]).append("], "))
        {
            ai4 = (int[])iterator.next();
        }

        stringbuilder.delete(-2 + stringbuilder.length(), stringbuilder.length());
        Log.d("AddLive_SDK", "Looking up for best frame rate range within available ones:");
        Log.d("AddLive_SDK", stringbuilder.toString());
        LinkedList linkedlist = new LinkedList();
        Iterator iterator1 = list.iterator();
        int k = -1;
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            int ai3[] = (int[])iterator1.next();
            if (ai3[1] <= j)
            {
                if (k < ai3[1])
                {
                    k = ai3[1];
                }
                linkedlist.add(ai3);
            }
        } while (true);
        if (linkedlist.isEmpty())
        {
            int ai2[] = (int[])list.get(0);
            Log.w("AddLive_SDK", (new StringBuilder()).append("The camera does not support framerate as low as the requested one. Will use the lowest framerate range possible: [").append(ai2[0]).append(";").append(ai2[1]).append("]").toString());
            return ai2;
        }
        LinkedList linkedlist1 = new LinkedList();
        Iterator iterator2 = linkedlist.iterator();
        int l = -1;
        int i1;
        int j1;
        for (i1 = 0; iterator2.hasNext(); i1 = j1)
        {
            int ai1[] = (int[])iterator2.next();
            if (ai1[1] == k)
            {
                if (l < ai1[0])
                {
                    l = ai1[0];
                    i1 = linkedlist1.size();
                }
                linkedlist1.add(ai1);
            }
            j1 = i1;
        }

        int ai[] = (int[])linkedlist1.get(i1);
        Log.d("AddLive_SDK", (new StringBuilder()).append("Will use FPS range: [").append(ai[0]).append(";").append(ai[1]).append("]").toString());
        return ai;
    }

    public int getHeight()
    {
        return height;
    }

    public int getOrientation(boolean flag)
    {
        int i = ((Integer)id2IdxMap.get(selectedCam)).intValue();
        android.hardware.Camera.CameraInfo camerainfo = new android.hardware.Camera.CameraInfo();
        Camera.getCameraInfo(i, camerainfo);
        int j = ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (flag)
        {
            if (camerainfo.facing == 1)
            {
                return (j + camerainfo.orientation / 90) % 4;
            } else
            {
                return (4 + (camerainfo.orientation / 90 - j)) % 4;
            }
        }
        if (camerainfo.facing == 1)
        {
            return (360 - (camerainfo.orientation + j * 90) % 360) % 360;
        } else
        {
            return (360 + (camerainfo.orientation - j * 90)) % 360;
        }
    }

    public int getWidth()
    {
        return width;
    }

    public boolean isCamWorking()
    {
        return camera != null;
    }

    public void onPreviewFrame(byte abyte0[], Camera camera1)
    {
        processFrame(abyte0);
        camera1.addCallbackBuffer(abyte0);
        if (firstFrameLatch != null)
        {
            firstFrameLatch.countDown();
            firstFrameLatch = null;
        }
    }

    public int processProperty(String s, String s1)
    {
        char c = '\u03EA';
        if (s.equals("global.dev.camera.FPS"))
        {
            fps = Integer.parseInt(s1);
            break MISSING_BLOCK_LABEL_136;
        }
        if (s.equals("global.dev.camera.height"))
        {
            height = Integer.parseInt(s1);
            break MISSING_BLOCK_LABEL_136;
        }
        if (s.equals("global.dev.camera.width"))
        {
            width = Integer.parseInt(s1);
            break MISSING_BLOCK_LABEL_136;
        }
        try
        {
            if (!s.equals("global.dev.camera.mode"))
            {
                break MISSING_BLOCK_LABEL_138;
            }
            Matcher matcher = Pattern.compile("(\\d{1,3})x(\\d{1,3})@(\\d{1,2})").matcher(s1);
            if (!matcher.matches())
            {
                break MISSING_BLOCK_LABEL_138;
            }
            width = Integer.parseInt(matcher.group(1));
            height = Integer.parseInt(matcher.group(2));
            fps = Integer.parseInt(matcher.group(3));
        }
        catch (NumberFormatException numberformatexception)
        {
            return c;
        }
        c = '\0';
        return c;
    }

    public void setDevice(String s)
    {
        if (!id2IdxMap.keySet().contains(s))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("There is no camera device with id: ").append(s).toString());
        }
        if (!selectedCam.equals(s))
        {
            selectedCam = s;
        }
    }

    public void stopCam()
    {
        final CountDownLatch syncLatch = new CountDownLatch(1);
        final AsyncResult result = new AsyncResult();
        taskHandler.post(new Runnable() {

            final ADLCameraHelper this$0;
            final AsyncResult val$result;
            final CountDownLatch val$syncLatch;

            public void run()
            {
                stopInternal(syncLatch, result);
            }

            
            {
                this$0 = ADLCameraHelper.this;
                syncLatch = countdownlatch;
                result = asyncresult;
                super();
            }
        });
        syncLatch.await();
        if (!result.isSuccess)
        {
            throw new IOException((new StringBuilder()).append("Failed to stop the camera: ").append(result.error).toString());
        } else
        {
            return;
        }
    }

    static 
    {
        selectedCam = VideoCaptureDevice.FRONT_CAMERA.getId();
    }



}
