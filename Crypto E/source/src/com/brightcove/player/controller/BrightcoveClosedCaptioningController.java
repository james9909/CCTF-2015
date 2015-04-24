// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.TextView;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog;
import com.brightcove.player.captioning.LoadCaptionsService;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.StringUtil;
import com.brightcove.player.view.BaseVideoView;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.controller:
//            CaptioningChangeListener

public class BrightcoveClosedCaptioningController extends AbstractComponent
{

    public static final String CC_ENABLED_STATE = "ClosedCaptioningEnabledState";
    public static final String CLOSED_CAPTIONING_PLAYER_PREFERENCES = "ClosedCaptioningPlayerPreferences";
    private static final String TAG = com/brightcove/player/controller/BrightcoveClosedCaptioningController.getSimpleName();
    protected Activity activity;
    private android.view.View.OnClickListener advancedOptionsClickedListener;
    protected TextView advancedOptionsLink;
    protected Button captionDialogButton;
    protected TextView captionDialogMessage;
    private CaptioningChangeListener captioningChangeListener;
    private CaptioningManager captioningManager;
    protected EventListener captionsAvailableListener;
    protected PopupWindow captionsDialog;
    protected android.view.View.OnClickListener closedCaptionDialogClickListener;
    protected Context context;
    protected EventListener didSetVideoListener;
    protected RadioButton disableCaptionsButton;
    protected RadioButton enableCaptionsButton;
    private boolean isHLS;
    protected android.view.View.OnClickListener setCaptionStateListener;
    protected BaseVideoView videoPlayer;

    public BrightcoveClosedCaptioningController(BaseVideoView basevideoview, Context context1)
    {
        super(basevideoview.getEventEmitter(), com/brightcove/player/controller/BrightcoveClosedCaptioningController);
        setCaptionStateListener = new android.view.View.OnClickListener() ;
        captionsAvailableListener = new EventListener() {

            final BrightcoveClosedCaptioningController this$0;

            public void processEvent(Event event)
            {
                Boolean boolean1 = (Boolean)event.properties.get("boolean");
                setVideoHasCaptions(boolean1);
            }

            
            {
                this$0 = BrightcoveClosedCaptioningController.this;
                super();
            }
        };
        didSetVideoListener = new EventListener() ;
        closedCaptionDialogClickListener = new android.view.View.OnClickListener() {

            final BrightcoveClosedCaptioningController this$0;

            public void onClick(View view)
            {
                captionsDialogVisibleStatus();
            }

            
            {
                this$0 = BrightcoveClosedCaptioningController.this;
                super();
            }
        };
        advancedOptionsClickedListener = new android.view.View.OnClickListener() {

            final BrightcoveClosedCaptioningController this$0;

            public void onClick(View view)
            {
                Log.i("ClosedCaptionsDialog", "Advanced Options clicked.");
                if (activity != null)
                {
                    android.app.FragmentManager fragmentmanager = activity.getFragmentManager();
                    BrightcoveClosedCaptioningOptionsDialog brightcoveclosedcaptioningoptionsdialog = new BrightcoveClosedCaptioningOptionsDialog();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("isHLS", isHLS);
                    brightcoveclosedcaptioningoptionsdialog.setArguments(bundle);
                    brightcoveclosedcaptioningoptionsdialog.setEventEmitter(videoPlayer.getEventEmitter());
                    brightcoveclosedcaptioningoptionsdialog.show(fragmentmanager, "CaptionsOptionsDialog");
                    if (videoPlayer.isPlaying())
                    {
                        videoPlayer.pause();
                    }
                }
            }

            
            {
                this$0 = BrightcoveClosedCaptioningController.this;
                super();
            }
        };
        context = context1;
        videoPlayer = basevideoview;
        if (context1 instanceof Activity)
        {
            activity = (Activity)context1;
        }
        addListener("didSetVideo", didSetVideoListener);
        addListener("captionsAvailable", captionsAvailableListener);
        makeCaptionsDialog();
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            initCaptioningManager();
        }
    }

    private void addCaptioningChangeListener()
    {
        if (captioningManager != null)
        {
            captioningChangeListener = new CaptioningChangeListener(this);
            captioningManager.addCaptioningChangeListener(captioningChangeListener);
        }
    }

    private static URI getURIField(Map map, String s)
    {
        if (map != null && !StringUtil.isEmpty((String)map.get(s)))
        {
            return new URI((String)map.get(s));
        } else
        {
            return null;
        }
    }

    private void initCaptioningManager()
    {
        captioningManager = (CaptioningManager)context.getSystemService("captioning");
        if (captioningManager != null)
        {
            saveClosedCaptioningState(captioningManager.isEnabled());
        }
    }

    private void removeCaptioningChangeListener()
    {
        if (captioningManager != null && captioningChangeListener != null)
        {
            captioningManager.removeCaptioningChangeListener(captioningChangeListener);
            captioningChangeListener = null;
        }
    }

    public void captionsDialogVisibleStatus()
    {
        if (captionsDialog.isShowing())
        {
            hideCaptionsDialog();
            return;
        } else
        {
            showCaptionsDialog();
            return;
        }
    }

    public URI checkIfCaptionsExist(Video video)
    {
        Map map;
        if (video == null)
        {
            Log.e(TAG, "Got null video, cannot load captions.");
            return null;
        }
        map = (Map)video.getProperties().get("customFields");
        URI uri1 = getURIField(map, "captions_en");
        URI uri = uri1;
_L2:
        return uri;
        URISyntaxException urisyntaxexception;
        urisyntaxexception;
        Log.w(TAG, "error processing custom fields for Catalog Video: ", urisyntaxexception);
        uri = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void hideCaptionsDialog()
    {
        if (captionsDialog.isShowing())
        {
            captionsDialog.dismiss();
        }
    }

    public void makeCaptionsDialog()
    {
        View view = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(com.brightcove.player.R.layout.caption_dialog, null);
        captionDialogMessage = (TextView)view.findViewById(com.brightcove.player.R.id.captions_dialog_msg);
        captionDialogButton = (Button)view.findViewById(com.brightcove.player.R.id.closed_captioning_dialog_btn);
        enableCaptionsButton = (RadioButton)view.findViewById(com.brightcove.player.R.id.enable_captions_btn);
        disableCaptionsButton = (RadioButton)view.findViewById(com.brightcove.player.R.id.disable_captions_btn);
        advancedOptionsLink = (TextView)view.findViewById(com.brightcove.player.R.id.captions_dialog_options_link);
        captionDialogButton.setOnClickListener(closedCaptionDialogClickListener);
        enableCaptionsButton.setOnClickListener(setCaptionStateListener);
        disableCaptionsButton.setOnClickListener(setCaptionStateListener);
        advancedOptionsLink.setOnClickListener(advancedOptionsClickedListener);
        captionsDialog = new PopupWindow(context);
        captionsDialog.setContentView(view);
        captionsDialog.setWidth(-2);
        captionsDialog.setHeight(-2);
        captionsDialog.setBackgroundDrawable(null);
    }

    public boolean readClosedCaptioningState()
    {
        return context.getSharedPreferences("ClosedCaptioningPlayerPreferences", 0).getBoolean("ClosedCaptioningEnabledState", false);
    }

    public void saveClosedCaptioningState(boolean flag)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("boolean", Boolean.valueOf(flag));
        eventEmitter.emit("toggleClosedCaptions", hashmap);
        context.getSharedPreferences("ClosedCaptioningPlayerPreferences", 0).edit().putBoolean("ClosedCaptioningEnabledState", flag).commit();
    }

    protected void setCaptionDialogMessage(int i)
    {
        captionDialogMessage.setText(i);
    }

    public void setHLS(boolean flag)
    {
        isHLS = flag;
    }

    public void setVideoHasCaptions(Boolean boolean1)
    {
        if (boolean1.booleanValue())
        {
            setCaptionDialogMessage(com.brightcove.player.R.string.closed_captioning_available);
            setVisibility(0);
            advancedOptionsLink.setVisibility(0);
            return;
        } else
        {
            setCaptionDialogMessage(com.brightcove.player.R.string.closed_captioning_unavailable);
            setVisibility(8);
            advancedOptionsLink.setVisibility(8);
            return;
        }
    }

    protected void setVisibility(int i)
    {
        enableCaptionsButton.setVisibility(i);
        disableCaptionsButton.setVisibility(i);
    }

    public void showCaptionsDialog()
    {
        if (captionsDialog.isShowing())
        {
            return;
        }
        enableCaptionsButton.setChecked(readClosedCaptioningState());
        RadioButton radiobutton = disableCaptionsButton;
        boolean flag;
        int ai[];
        View view;
        int i;
        int j;
        int k;
        int l;
        if (!readClosedCaptioningState())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        radiobutton.setChecked(flag);
        ai = new int[2];
        videoPlayer.getLocationInWindow(ai);
        view = captionsDialog.getContentView();
        view.measure(0, 0);
        i = view.getMeasuredWidth();
        j = view.getMeasuredHeight();
        k = ai[0] + (videoPlayer.getWidth() - i) / 2;
        l = ai[1] + (videoPlayer.getHeight() - j) / 2;
        captionsDialog.showAtLocation(videoPlayer, 0, k, l);
    }






}
