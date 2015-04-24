// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display.tasks;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.AsyncTask;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.util.ErrorUtil;
import java.lang.ref.WeakReference;
import java.net.URI;

public class LoadImageTask extends AsyncTask
    implements Component
{

    public static final String TAG = com/brightcove/player/display/tasks/LoadImageTask.getSimpleName();
    private EventEmitter eventEmitter;
    private HttpService httpService;
    private int imageNotLoadedResourceId;
    private final WeakReference imageViewReference;
    private String successEventType;

    public LoadImageTask(ImageView imageview, EventEmitter eventemitter)
    {
        imageNotLoadedResourceId = 0x108001c;
        if (imageview == null || eventemitter == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("imageViewAndEventEmitterRequired"));
        } else
        {
            eventEmitter = RegisteringEventEmitter.build(eventemitter, com/brightcove/player/display/tasks/LoadImageTask);
            imageViewReference = new WeakReference(imageview);
            httpService = new HttpService();
            return;
        }
    }

    private int getByteCount(Bitmap bitmap)
    {
        int i;
        try
        {
            i = bitmap.getByteCount();
        }
        catch (Exception exception)
        {
            return -1;
        }
        return i;
    }

    private Display getDisplay()
    {
        ImageView imageview = (ImageView)imageViewReference.get();
        if (imageview != null)
        {
            if (android.os.Build.VERSION.SDK_INT >= 17)
            {
                return imageview.getDisplay();
            } else
            {
                return ((WindowManager)imageview.getContext().getSystemService("window")).getDefaultDisplay();
            }
        } else
        {
            return null;
        }
    }

    private Point getDisplaySize()
    {
        int i = android.os.Build.VERSION.SDK_INT;
        Point point = null;
        if (i >= 13)
        {
            Display display = getDisplay();
            point = null;
            if (display != null)
            {
                point = new Point();
                display.getSize(point);
            }
        }
        return point;
    }

    protected transient Bitmap doInBackground(URI auri[])
    {
        if (auri == null || auri.length == 0 || auri[0] == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("urlRequired"));
        }
        URI uri;
        Point point;
        Bitmap bitmap;
        try
        {
            uri = auri[0];
            point = getDisplaySize();
        }
        catch (Exception exception)
        {
            Log.e(TAG, (new StringBuilder()).append("error encountered in loading image: ").append(auri[0]).toString(), exception);
            return null;
        }
        if (point == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        return httpService.doImageGetRequest(uri, point.x, point.y);
        bitmap = httpService.doImageGetRequest(uri);
        return bitmap;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((URI[])aobj);
    }

    public String getSuccessEventType()
    {
        return successEventType;
    }

    protected void onPostExecute(Bitmap bitmap)
    {
        ImageView imageview;
label0:
        {
            if (android.os.Build.VERSION.SDK_INT >= 12 && bitmap != null)
            {
                Log.v(TAG, (new StringBuilder()).append("onPostExecute: byte count = ").append(getByteCount(bitmap)).toString());
            }
            if (imageViewReference != null)
            {
                imageview = (ImageView)imageViewReference.get();
                if (imageview != null)
                {
                    if (bitmap == null)
                    {
                        break label0;
                    }
                    imageview.setImageBitmap(bitmap);
                    imageview.setVisibility(0);
                    imageview.requestLayout();
                    if (successEventType != null)
                    {
                        eventEmitter.emit(successEventType);
                    }
                }
            }
            return;
        }
        imageview.setImageResource(imageNotLoadedResourceId);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Bitmap)obj);
    }

    public void setSuccessEventType(String s)
    {
        successEventType = s;
    }

}
