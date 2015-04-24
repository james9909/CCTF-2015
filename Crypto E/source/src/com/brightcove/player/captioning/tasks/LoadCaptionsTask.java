// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning.tasks;

import android.os.AsyncTask;
import android.util.Log;
import com.brightcove.player.captioning.TTMLParser;
import com.brightcove.player.captioning.WebVTTParser;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.model.TTMLDocument;
import com.brightcove.player.model.WebVTTDocument;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

public class LoadCaptionsTask extends AsyncTask
    implements Component
{
    public static final class CaptionsType extends Enum
    {

        private static final CaptionsType $VALUES[];
        public static final CaptionsType TTML;
        public static final CaptionsType WEBVTT;

        public static CaptionsType valueOf(String s)
        {
            return (CaptionsType)Enum.valueOf(com/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType, s);
        }

        public static CaptionsType[] values()
        {
            return (CaptionsType[])$VALUES.clone();
        }

        static 
        {
            TTML = new CaptionsType("TTML", 0);
            WEBVTT = new CaptionsType("WEBVTT", 1);
            CaptionsType acaptionstype[] = new CaptionsType[2];
            acaptionstype[0] = TTML;
            acaptionstype[1] = WEBVTT;
            $VALUES = acaptionstype;
        }

        private CaptionsType(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface ResponseStreamListener
    {

        public abstract void onStreamReady(InputStream inputstream);
    }


    private static final String TAG = com/brightcove/player/captioning/tasks/LoadCaptionsTask.getSimpleName();
    private CaptionsType captionsType;
    private TTMLDocument currentTTMLDocument;
    private WebVTTDocument currentWebVTTDocument;
    private EventEmitter eventEmitter;
    private String lastError;
    private Exception lastException;

    public LoadCaptionsTask(EventEmitter eventemitter, CaptionsType captionstype)
    {
        if (eventemitter == null)
        {
            throw new IllegalArgumentException("must provide an EventEmitter");
        } else
        {
            eventEmitter = RegisteringEventEmitter.build(eventemitter, com/brightcove/player/captioning/tasks/LoadCaptionsTask);
            captionsType = captionstype;
            return;
        }
    }

    private void doGetRequestAsStream(URI uri, ResponseStreamListener responsestreamlistener)
    {
        URL url;
        HttpURLConnection httpurlconnection;
        if (uri == null)
        {
            throw new IllegalArgumentException("must provide a valid URI");
        }
        if (responsestreamlistener == null)
        {
            throw new IllegalArgumentException("must provide a listener to process the InputStream");
        }
        url = uri.toURL();
        httpurlconnection = null;
        Log.d(TAG, (new StringBuilder()).append("issuing GET request: ").append(url.toString()).toString());
        HttpURLConnection httpurlconnection1 = (HttpURLConnection)url.openConnection();
        responsestreamlistener.onStreamReady(httpurlconnection1.getInputStream());
        if (httpurlconnection1 != null)
        {
            httpurlconnection1.disconnect();
        }
        return;
        Exception exception;
        exception;
_L2:
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
        throw exception;
        Exception exception1;
        exception1;
        httpurlconnection = httpurlconnection1;
        exception = exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void emitErrorMessage(String s)
    {
        Log.e(TAG, s, lastException);
        HashMap hashmap = new HashMap();
        hashmap.put("errorMessage", s);
        if (lastException != null)
        {
            hashmap.put("error", lastException);
        }
        eventEmitter.emit("closedCaptioningError", hashmap);
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((URI[])aobj);
    }

    protected transient Void doInBackground(URI auri[])
    {
        if (auri.length != 1 || auri[0] == null)
        {
            throw new IllegalArgumentException("must provide a single URI argument");
        }
        lastError = null;
        if (captionsType == CaptionsType.WEBVTT)
        {
            try
            {
                doGetRequestAsStream(auri[0], new ResponseStreamListener() {

                    final LoadCaptionsTask this$0;

                    public void onStreamReady(InputStream inputstream)
                    {
                        currentWebVTTDocument = WebVTTParser.parse(inputstream, "UTF-8");
                    }

            
            {
                this$0 = LoadCaptionsTask.this;
                super();
            }
                });
            }
            catch (IOException ioexception1)
            {
                lastError = "exception while issuing HTTP request";
                lastException = ioexception1;
                cancel(true);
                return null;
            }
            catch (Exception exception1)
            {
                lastError = "unexpected exception parsing WebVTT response";
                lastException = exception1;
                cancel(true);
                return null;
            }
        } else
        if (captionsType == CaptionsType.TTML)
        {
            try
            {
                doGetRequestAsStream(auri[0], new ResponseStreamListener() {

                    final LoadCaptionsTask this$0;

                    public void onStreamReady(InputStream inputstream)
                    {
                        currentTTMLDocument = TTMLParser.parseXml(inputstream, null);
                    }

            
            {
                this$0 = LoadCaptionsTask.this;
                super();
            }
                });
            }
            catch (IOException ioexception)
            {
                lastError = "exception while issuing HTTP request";
                lastException = ioexception;
                cancel(true);
                return null;
            }
            catch (XmlPullParserException xmlpullparserexception)
            {
                lastError = "exception parsing DFXP TTML response";
                lastException = xmlpullparserexception;
                cancel(true);
                return null;
            }
            catch (Exception exception)
            {
                lastError = "unexpected exception parsing DFXP TTML response";
                lastException = exception;
                cancel(true);
                return null;
            }
            return null;
        }
        return null;
    }

    protected void onCancelled()
    {
        if (lastError != null)
        {
            emitErrorMessage(lastError);
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Void)obj);
    }

    protected void onPostExecute(Void void1)
    {
        HashMap hashmap = new HashMap();
        if (captionsType != CaptionsType.TTML) goto _L2; else goto _L1
_L1:
        if (currentTTMLDocument != null)
        {
            hashmap.put("ttmlDocument", currentTTMLDocument);
        }
_L4:
        eventEmitter.emit("didLoadCaptions", hashmap);
        return;
_L2:
        if (captionsType == CaptionsType.WEBVTT && currentWebVTTDocument != null)
        {
            hashmap.put("webvttDocument", currentWebVTTDocument);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }



/*
    static WebVTTDocument access$002(LoadCaptionsTask loadcaptionstask, WebVTTDocument webvttdocument)
    {
        loadcaptionstask.currentWebVTTDocument = webvttdocument;
        return webvttdocument;
    }

*/


/*
    static TTMLDocument access$102(LoadCaptionsTask loadcaptionstask, TTMLDocument ttmldocument)
    {
        loadcaptionstask.currentTTMLDocument = ttmldocument;
        return ttmldocument;
    }

*/
}
