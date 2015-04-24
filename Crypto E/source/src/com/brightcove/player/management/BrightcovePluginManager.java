// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.management;

import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class BrightcovePluginManager extends AbstractComponent
{
    public class OnRegisterPluginListener
        implements EventListener
    {

        final BrightcovePluginManager this$0;

        public void processEvent(Event event)
        {
            if (event.properties.containsKey("pluginName"))
            {
                String s = (String)event.properties.get("pluginName");
                Log.v(BrightcovePluginManager.TAG, (new StringBuilder()).append("OnRegisterPluginListener: plugin: ").append(s).toString());
                if (!pluginsInUse.contains(s))
                {
                    pluginsInUse.add(s);
                }
            }
        }

        protected OnRegisterPluginListener()
        {
            this$0 = BrightcovePluginManager.this;
            super();
        }
    }


    private static final String CRASHLYTICS_LOG = "log";
    private static final String TAG = com/brightcove/player/management/BrightcovePluginManager.getSimpleName();
    private static String commitIdentifier = "";
    private static String releaseIdentifier = "";
    private Class crashlyticsClass;
    private Method crashlyticsLogMethod;
    private boolean isCrashlyticsAvailable;
    OnRegisterPluginListener onRegisterPluginListener;
    private List pluginsInUse;

    public BrightcovePluginManager(EventEmitter eventemitter)
    {
        super(eventemitter, com/brightcove/player/management/BrightcovePluginManager);
        loadPropertiesInfo();
        Log.d(TAG, (new StringBuilder()).append("BrightcovePluginManager: git commit SHA: + ").append(commitIdentifier).append(", release: ").append(releaseIdentifier).toString());
        pluginsInUse = new ArrayList();
        initializeListeners();
        checkForCrashlytics();
        generateCrashlyticsMethods();
        crashlyticsLog((new StringBuilder()).append("Git Commit SHA: ").append(commitIdentifier).toString());
        crashlyticsLog((new StringBuilder()).append("Release Number: ").append(releaseIdentifier).toString());
    }

    protected void checkForCrashlytics()
    {
        try
        {
            crashlyticsClass = Class.forName("com.crashlytics.android.Crashlytics");
            isCrashlyticsAvailable = true;
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            Log.i(TAG, "Crashlytics was not found. Logging to console only.");
        }
        isCrashlyticsAvailable = false;
    }

    public void crashlyticsLog(String s)
    {
        Log.d(TAG, (new StringBuilder()).append("crashlyticsLog: ").append(s).toString());
        if (!isCrashlyticsAvailable || crashlyticsLogMethod == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        crashlyticsLogMethod.invoke(null, new Object[] {
            s
        });
        return;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        Log.i(TAG, "crashlyticsLog: Illegal argument exception occurred.");
        return;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        Log.i(TAG, "crashlyticsLog: Illegal access exception occurred.");
        return;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        Log.i(TAG, "crashlyticsLog: Invocation target exception occurred.");
        return;
    }

    protected void generateCrashlyticsMethods()
    {
        if (!isCrashlyticsAvailable)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        crashlyticsLogMethod = crashlyticsClass.getMethod("log", new Class[] {
            java/lang/String
        });
        return;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        Log.i(TAG, "Failed to wrap crashlytics methods.");
        return;
    }

    public String getCommitIdentifier()
    {
        return commitIdentifier;
    }

    public List getPluginsInUse()
    {
        return pluginsInUse;
    }

    public String getReleaseIdentifier()
    {
        return releaseIdentifier;
    }

    protected void initializeListeners()
    {
        onRegisterPluginListener = new OnRegisterPluginListener();
        addListener("registerPlugin", onRegisterPluginListener);
    }

    protected void loadPropertiesInfo()
    {
        Properties properties;
        InputStream inputstream;
        properties = new Properties();
        inputstream = null;
        inputstream = com/brightcove/player/management/BrightcovePluginManager.getClassLoader().getResourceAsStream("build-version.properties");
        properties.load(inputstream);
        commitIdentifier = properties.getProperty("commitSHA");
        releaseIdentifier = properties.getProperty("buildVersion");
        HashMap hashmap = new HashMap();
        hashmap.put("buildVersion", releaseIdentifier);
        getEventEmitter().emit("version", hashmap);
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        inputstream.close();
_L2:
        return;
        IOException ioexception4;
        ioexception4;
        Log.e(TAG, "Failed to close stream.", ioexception4);
        return;
        IOException ioexception2;
        ioexception2;
        Log.e(TAG, "Failed to load build version properties. Commit and Release numbers will be empty.", ioexception2);
        if (inputstream == null) goto _L2; else goto _L1
_L1:
        try
        {
            inputstream.close();
            return;
        }
        catch (IOException ioexception3)
        {
            Log.e(TAG, "Failed to close stream.", ioexception3);
        }
        return;
        NullPointerException nullpointerexception;
        nullpointerexception;
        Log.e(TAG, "Failed to load build-version.properties", nullpointerexception);
        if (inputstream == null) goto _L2; else goto _L3
_L3:
        try
        {
            inputstream.close();
            return;
        }
        catch (IOException ioexception1)
        {
            Log.e(TAG, "Failed to close stream.", ioexception1);
        }
        return;
        Exception exception;
        exception;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception)
            {
                Log.e(TAG, "Failed to close stream.", ioexception);
            }
        }
        throw exception;
    }



}
