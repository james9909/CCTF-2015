// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.brightcove.player.captioning.BrightcoveClosedCaption;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningStyle;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningTextView;
import com.brightcove.player.controller.BrightcoveClosedCaptioningController;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.management.BrightcoveClosedCaptioningManager;
import com.brightcove.player.model.Block;
import com.brightcove.player.model.Length;
import com.brightcove.player.model.Region;
import com.brightcove.player.model.Span;
import com.brightcove.player.model.TTMLDocument;
import com.brightcove.player.model.WebVTTDocument;
import com.brightcove.player.util.StringUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView, RenderView

public class BrightcoveClosedCaptioningView extends FrameLayout
    implements Component
{
    public static final class ClosedCaptioningMode extends Enum
    {

        private static final ClosedCaptioningMode $VALUES[];
        public static final ClosedCaptioningMode OFF;
        public static final ClosedCaptioningMode ON;

        public static ClosedCaptioningMode valueOf(String s)
        {
            return (ClosedCaptioningMode)Enum.valueOf(com/brightcove/player/view/BrightcoveClosedCaptioningView$ClosedCaptioningMode, s);
        }

        public static ClosedCaptioningMode[] values()
        {
            return (ClosedCaptioningMode[])$VALUES.clone();
        }

        static 
        {
            OFF = new ClosedCaptioningMode("OFF", 0);
            ON = new ClosedCaptioningMode("ON", 1);
            ClosedCaptioningMode aclosedcaptioningmode[] = new ClosedCaptioningMode[2];
            aclosedcaptioningmode[0] = OFF;
            aclosedcaptioningmode[1] = ON;
            $VALUES = aclosedcaptioningmode;
        }

        private ClosedCaptioningMode(String s, int i)
        {
            super(s, i);
        }
    }

    public class TimeMapEntry
    {

        public ViewGroup block;
        public BrightcoveClosedCaption closedCaption;
        final BrightcoveClosedCaptioningView this$0;

        public TimeMapEntry(BrightcoveClosedCaption brightcoveclosedcaption, ViewGroup viewgroup)
        {
            this$0 = BrightcoveClosedCaptioningView.this;
            super();
            closedCaption = brightcoveclosedcaption;
            block = viewgroup;
        }
    }


    public static final int DEFAULT_HORIZONTAL_GRAVITY = 17;
    protected static final int DEFAULT_TEXT_ROWS = 2;
    public static final int DEFAULT_VERTICAL_GRAVITY = 16;
    protected static final int HORIZONTAL_JUSTIFY_CENTER = 2;
    protected static final int HORIZONTAL_JUSTIFY_LEFT = 0;
    protected static final int HORIZONTAL_JUSTIFY_RIGHT = 1;
    protected static final float SAFE_AREA = 0.1F;
    protected static final String TAG = com/brightcove/player/view/BrightcoveClosedCaptioningView.getSimpleName();
    protected static final int VERTICAL_JUSTIFY_BOTTOM = 1;
    protected static final int VERTICAL_JUSTIFY_CENTER = 2;
    protected static final int VERTICAL_JUSTIFY_TOP;
    protected TreeMap beginTimeMap;
    protected android.widget.LinearLayout.LayoutParams blockParams;
    protected LinearLayout currentCaptionBlock;
    protected ClosedCaptioningMode currentMode;
    protected EventListener didLoadCaptionsLoadListener = new EventListener() {

        final BrightcoveClosedCaptioningView this$0;

        public void processEvent(Event event)
        {
            TTMLDocument ttmldocument = (TTMLDocument)event.properties.get("ttmlDocument");
            if (ttmldocument != null)
            {
                prepareDFXPCaptions(ttmldocument);
                return;
            }
            WebVTTDocument webvttdocument = (WebVTTDocument)event.properties.get("webvttDocument");
            if (webvttdocument != null)
            {
                prepareWebVTTCaptions(webvttdocument);
                return;
            } else
            {
                Log.e(BrightcoveClosedCaptioningView.TAG, "Captions document was null. No captions to load.");
                clear();
                return;
            }
        }

            
            {
                this$0 = BrightcoveClosedCaptioningView.this;
                super();
            }
    };
    protected EventEmitter eventEmitter;
    protected LayoutInflater inflater;
    protected Integer lastProgressTime;
    protected EventListener progressListener = new EventListener() {

        final BrightcoveClosedCaptioningView this$0;

        public void processEvent(Event event)
        {
            Integer integer = Integer.valueOf(event.getIntegerProperty("playheadPosition"));
            doUpdateCaption(integer);
        }

            
            {
                this$0 = BrightcoveClosedCaptioningView.this;
                super();
            }
    };
    protected int progressListenerToken;
    protected EventListener setCaptionsStateListener = new EventListener() {

        final BrightcoveClosedCaptioningView this$0;

        public void processEvent(Event event)
        {
            refreshCaptions();
        }

            
            {
                this$0 = BrightcoveClosedCaptioningView.this;
                super();
            }
    };
    protected EventListener toggleClosedCaptionsListener = new EventListener() {

        final BrightcoveClosedCaptioningView this$0;

        public void processEvent(Event event)
        {
            if (((Boolean)event.properties.get("boolean")).booleanValue())
            {
                setMode(ClosedCaptioningMode.ON);
                setVisibility(0);
                bringToFront();
                registerProgressListener();
                return;
            } else
            {
                setMode(ClosedCaptioningMode.OFF);
                setVisibility(8);
                cancelProgressListener();
                return;
            }
        }

            
            {
                this$0 = BrightcoveClosedCaptioningView.this;
                super();
            }
    };
    protected BaseVideoView videoPlayer;

    public BrightcoveClosedCaptioningView(Context context)
    {
        super(context);
        progressListenerToken = -1;
        lastProgressTime = Integer.valueOf(0);
    }

    public BrightcoveClosedCaptioningView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        progressListenerToken = -1;
        lastProgressTime = Integer.valueOf(0);
    }

    public BrightcoveClosedCaptioningView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        progressListenerToken = -1;
        lastProgressTime = Integer.valueOf(0);
    }

    protected void applyRegionLayout(LinearLayout linearlayout, TTMLDocument ttmldocument, BrightcoveClosedCaption brightcoveclosedcaption, int i)
    {
        int j = i | getCaptionDisplayAlignAsGravity(brightcoveclosedcaption, ttmldocument);
        android.widget.FrameLayout.LayoutParams layoutparams = getLayoutParamsForBlock(linearlayout);
        layoutparams.gravity = j;
        linearlayout.setLayoutParams(layoutparams);
    }

    protected void applyRegionLayout(LinearLayout linearlayout, WebVTTDocument webvttdocument, BrightcoveClosedCaption brightcoveclosedcaption, int i)
    {
        int j = i | getCaptionDisplayAlignAsGravity(brightcoveclosedcaption, webvttdocument);
        android.widget.FrameLayout.LayoutParams layoutparams = getLayoutParamsForBlock(linearlayout);
        layoutparams.gravity = j;
        linearlayout.setLayoutParams(layoutparams);
    }

    protected ViewGroup buildCaptionBlock(TTMLDocument ttmldocument, BrightcoveClosedCaption brightcoveclosedcaption)
    {
        LinearLayout linearlayout = (LinearLayout)inflater.inflate(com.brightcove.player.R.layout.caption_block, null);
        int i = getCaptionTextAlignAsGravity(brightcoveclosedcaption);
        applyRegionLayout(linearlayout, ttmldocument, brightcoveclosedcaption, i);
        linearlayout.setVisibility(8);
        Iterator iterator = brightcoveclosedcaption.getLines().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            List list = (List)iterator.next();
            if (list.size() != 0)
            {
                BrightcoveClosedCaptioningTextView brightcoveclosedcaptioningtextview = (BrightcoveClosedCaptioningTextView)inflater.inflate(com.brightcove.player.R.layout.caption_text, null);
                SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder();
                for (int j = 0; j < list.size(); j++)
                {
                    spannablestringbuilder.append(buildSpannableString(brightcoveclosedcaptioningtextview, (Span)list.get(j), 1.0F));
                }

                brightcoveclosedcaptioningtextview.setText(collapseWhitespace(spannablestringbuilder));
                brightcoveclosedcaptioningtextview.setGravity(i);
                linearlayout.addView(brightcoveclosedcaptioningtextview);
            }
        } while (true);
        return linearlayout;
    }

    protected ViewGroup buildCaptionBlock(WebVTTDocument webvttdocument, BrightcoveClosedCaption brightcoveclosedcaption)
    {
        LinearLayout linearlayout = (LinearLayout)inflater.inflate(com.brightcove.player.R.layout.caption_block, null);
        int i = getCaptionTextAlignAsGravity(brightcoveclosedcaption);
        applyRegionLayout(linearlayout, webvttdocument, brightcoveclosedcaption, i);
        linearlayout.setVisibility(8);
        BrightcoveClosedCaptioningTextView brightcoveclosedcaptioningtextview = (BrightcoveClosedCaptioningTextView)inflater.inflate(com.brightcove.player.R.layout.caption_text, null);
        brightcoveclosedcaptioningtextview.setText(brightcoveclosedcaption.getCaption());
        brightcoveclosedcaptioningtextview.setGravity(i);
        linearlayout.addView(brightcoveclosedcaptioningtextview);
        return linearlayout;
    }

    protected CharSequence buildSpannableString(TextView textview, Span span, float f)
    {
        SpannableString spannablestring;
        int i;
        if (StringUtil.isEmpty(span.getText()))
        {
            return "";
        }
        spannablestring = new SpannableString(span.getText());
        i = span.getText().length();
        if (span.getFontStyle() == null) goto _L2; else goto _L1
_L1:
        static class _cls5
        {

            static final int $SwitchMap$com$brightcove$player$model$StyledElement$FontStyle[];
            static final int $SwitchMap$com$brightcove$player$model$StyledElement$FontWeight[];
            static final int $SwitchMap$com$brightcove$player$model$StyledElement$TextDecoration[];

            static 
            {
                $SwitchMap$com$brightcove$player$model$StyledElement$TextDecoration = new int[com.brightcove.player.model.StyledElement.TextDecoration.values().length];
                try
                {
                    $SwitchMap$com$brightcove$player$model$StyledElement$TextDecoration[com.brightcove.player.model.StyledElement.TextDecoration.UNDERLINE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                $SwitchMap$com$brightcove$player$model$StyledElement$FontWeight = new int[com.brightcove.player.model.StyledElement.FontWeight.values().length];
                try
                {
                    $SwitchMap$com$brightcove$player$model$StyledElement$FontWeight[com.brightcove.player.model.StyledElement.FontWeight.BOLD.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                $SwitchMap$com$brightcove$player$model$StyledElement$FontStyle = new int[com.brightcove.player.model.StyledElement.FontStyle.values().length];
                try
                {
                    $SwitchMap$com$brightcove$player$model$StyledElement$FontStyle[com.brightcove.player.model.StyledElement.FontStyle.ITALIC.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls5..SwitchMap.com.brightcove.player.model.StyledElement.FontStyle[span.getFontStyle().ordinal()];
        JVM INSTR tableswitch 1 1: default 72
    //                   1 265;
           goto _L2 _L3
_L2:
        if (span.getFontWeight() == null) goto _L5; else goto _L4
_L4:
        _cls5..SwitchMap.com.brightcove.player.model.StyledElement.FontWeight[span.getFontWeight().ordinal()];
        JVM INSTR tableswitch 1 1: default 108
    //                   1 288;
           goto _L5 _L6
_L5:
        if (span.getTextDecoration() != null)
        {
            switch (_cls5..SwitchMap.com.brightcove.player.model.StyledElement.TextDecoration[span.getTextDecoration().ordinal()])
            {
            case 1: // '\001'
                break MISSING_BLOCK_LABEL_311;
            }
        }
_L7:
        if (!StringUtil.isEmpty(span.getColor()))
        {
            spannablestring.setSpan(new ForegroundColorSpan(Color.parseColor(span.getColor())), 0, i, 33);
        }
        if (!StringUtil.isEmpty(span.getBackgroundColor()))
        {
            spannablestring.setSpan(new BackgroundColorSpan(Color.parseColor(span.getBackgroundColor())), 0, i, 33);
        }
        if (span.getFontSize() != null)
        {
            spannablestring.setSpan(new AbsoluteSizeSpan((int)span.getFontSize().getValue()), 0, i, 33);
        }
        spannablestring.setSpan(new RelativeSizeSpan(f), 0, i, 33);
        return spannablestring;
_L3:
        spannablestring.setSpan(new StyleSpan(com.brightcove.player.R.style.caption_text_italic), 0, i, 33);
          goto _L2
_L6:
        spannablestring.setSpan(new StyleSpan(com.brightcove.player.R.style.caption_text_bold), 0, i, 33);
          goto _L5
        spannablestring.setSpan(new UnderlineSpan(), 0, i, 33);
          goto _L7
    }

    protected void cancelProgressListener()
    {
        if (progressListenerToken != -1)
        {
            eventEmitter.off("progress", progressListenerToken);
            progressListenerToken = -1;
        }
    }

    public void clear()
    {
        setMode(ClosedCaptioningMode.OFF);
        cancelProgressListener();
        emitCaptionsAvailable(false);
        if (getChildCount() > 0)
        {
            removeAllViews();
        }
        if (beginTimeMap != null && beginTimeMap.size() > 0)
        {
            beginTimeMap.clear();
        }
    }

    protected CharSequence collapseWhitespace(CharSequence charsequence)
    {
        return StringUtil.replaceAll(charsequence, new String[] {
            "\n", "\r", "\t", "  "
        }, new CharSequence[] {
            " ", " ", " ", " "
        });
    }

    void doUpdateCaption(Integer integer)
    {
label0:
        {
            if (isEnabled() && getMode() == ClosedCaptioningMode.ON)
            {
                lastProgressTime = integer;
                if (integer != null)
                {
                    break label0;
                }
            }
            return;
        }
        ViewGroup viewgroup = findCaptionForPosition(integer);
        if (currentCaptionBlock != null)
        {
            currentCaptionBlock.setVisibility(8);
        }
        if (viewgroup != null)
        {
            viewgroup.setVisibility(0);
        }
        currentCaptionBlock = (LinearLayout)viewgroup;
    }

    protected void emitCaptionsAvailable(boolean flag)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("boolean", Boolean.valueOf(flag));
        eventEmitter.emit("captionsAvailable", hashmap);
    }

    public ViewGroup findCaptionForPosition(Integer integer)
    {
        java.util.Map.Entry entry = beginTimeMap.floorEntry(integer);
        if (entry != null && entry.getValue() != null && ((TimeMapEntry)entry.getValue()).closedCaption.getEndTime() >= integer.intValue())
        {
            return styleCaptions(((TimeMapEntry)entry.getValue()).block);
        } else
        {
            return null;
        }
    }

    protected int getCaptionDisplayAlignAsGravity(BrightcoveClosedCaption brightcoveclosedcaption, TTMLDocument ttmldocument)
    {
        byte byte0 = 16;
        Region region = resolveRegionForBlock(brightcoveclosedcaption, ttmldocument);
        if (region != null)
        {
            com.brightcove.player.model.Region.DisplayAlign displayalign = region.getDisplayAlign();
            if (displayalign != null)
            {
                if (displayalign == com.brightcove.player.model.Region.DisplayAlign.BEFORE)
                {
                    byte0 = 48;
                } else
                if (displayalign == com.brightcove.player.model.Region.DisplayAlign.AFTER)
                {
                    return 80;
                }
            }
        }
        return byte0;
    }

    protected int getCaptionDisplayAlignAsGravity(BrightcoveClosedCaption brightcoveclosedcaption, WebVTTDocument webvttdocument)
    {
        return 80;
    }

    public int getCaptionLineCount()
    {
        if (currentCaptionBlock != null)
        {
            return currentCaptionBlock.getChildCount();
        } else
        {
            return -1;
        }
    }

    public int getCaptionLineSizeHeight()
    {
        if (currentCaptionBlock != null && currentCaptionBlock.getChildCount() > 0)
        {
            return currentCaptionBlock.getChildAt(0).getHeight();
        } else
        {
            return -1;
        }
    }

    protected int getCaptionTextAlignAsGravity(BrightcoveClosedCaption brightcoveclosedcaption)
    {
        byte byte0 = 17;
        if (brightcoveclosedcaption.getTextAlign() != null)
        {
            if (brightcoveclosedcaption.getTextAlign() == com.brightcove.player.model.StyledElement.TextAlign.LEFT)
            {
                byte0 = 3;
            } else
            if (brightcoveclosedcaption.getTextAlign() == com.brightcove.player.model.StyledElement.TextAlign.RIGHT)
            {
                return 5;
            }
        }
        return byte0;
    }

    protected android.widget.FrameLayout.LayoutParams getLayoutParamsForBlock(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        if (layoutparams == null)
        {
            return new android.widget.FrameLayout.LayoutParams(-2, -2);
        } else
        {
            return new android.widget.FrameLayout.LayoutParams(layoutparams);
        }
    }

    public ClosedCaptioningMode getMode()
    {
        return currentMode;
    }

    public int getSafeAreaHeight()
    {
        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
        int i = 0;
        if (layoutparams != null)
        {
            i = layoutparams.height;
        }
        if (i <= 0)
        {
            i = getHeight();
        }
        return Math.round(0.1F * (float)i);
    }

    public int getSafeAreaWidth()
    {
        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
        int i = 0;
        if (layoutparams != null)
        {
            i = layoutparams.width;
        }
        if (i <= 0)
        {
            i = getWidth();
        }
        return Math.round(0.1F * (float)i);
    }

    public void initialize(EventEmitter eventemitter)
    {
        initialize(eventemitter, null);
    }

    public void initialize(EventEmitter eventemitter, BaseVideoView basevideoview)
    {
        eventEmitter = RegisteringEventEmitter.build(eventemitter, getClass());
        inflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        beginTimeMap = new TreeMap();
        eventEmitter.on("didLoadCaptions", didLoadCaptionsLoadListener);
        eventEmitter.on("setCaptionsState", setCaptionsStateListener);
        eventEmitter.on("toggleClosedCaptions", toggleClosedCaptionsListener);
        videoPlayer = basevideoview;
        if (videoPlayer.getClosedCaptioningController().readClosedCaptioningState())
        {
            currentMode = ClosedCaptioningMode.ON;
            return;
        } else
        {
            currentMode = ClosedCaptioningMode.OFF;
            return;
        }
    }

    public void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
    }

    public void prepareDFXPCaptions(TTMLDocument ttmldocument)
    {
        List list;
label0:
        {
            prepareLayout();
            list = ttmldocument.getCaptions();
            if (list != null && list.size() > 0)
            {
                if (videoPlayer.getClosedCaptioningController().readClosedCaptioningState())
                {
                    setMode(ClosedCaptioningMode.ON);
                    registerProgressListener();
                }
                emitCaptionsAvailable(true);
                if (beginTimeMap.size() <= 0)
                {
                    break label0;
                }
                Iterator iterator1 = beginTimeMap.keySet().iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        break;
                    }
                    Integer integer = (Integer)iterator1.next();
                    TimeMapEntry timemapentry = (TimeMapEntry)beginTimeMap.get(integer);
                    if (timemapentry != null && timemapentry.block != null)
                    {
                        removeView(timemapentry.block);
                    }
                } while (true);
            } else
            {
                Log.w(TAG, "No captions found, cannot prepare captions for this video");
                emitCaptionsAvailable(false);
                return;
            }
            beginTimeMap.clear();
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            BrightcoveClosedCaption brightcoveclosedcaption1 = (BrightcoveClosedCaption)iterator.next();
            ViewGroup viewgroup = buildCaptionBlock(ttmldocument, brightcoveclosedcaption1);
            if (viewgroup.getChildCount() > 0)
            {
                addView(viewgroup);
                beginTimeMap.put(Integer.valueOf(brightcoveclosedcaption1.getBeginTime()), new TimeMapEntry(brightcoveclosedcaption1, viewgroup));
            }
        } while (true);
        BrightcoveClosedCaption brightcoveclosedcaption = (BrightcoveClosedCaption)list.get(-1 + list.size());
        beginTimeMap.put(Integer.valueOf(brightcoveclosedcaption.getEndTime()), null);
    }

    public void prepareLayout()
    {
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        blockParams = new android.widget.LinearLayout.LayoutParams(-2, -2);
        BrightcoveClosedCaptioningManager.getInstance(getContext()).getStyle();
        currentCaptionBlock = (LinearLayout)layoutinflater.inflate(com.brightcove.player.R.layout.caption_block, null);
        currentCaptionBlock.setVisibility(8);
    }

    public void prepareWebVTTCaptions(WebVTTDocument webvttdocument)
    {
        List list;
label0:
        {
            prepareLayout();
            list = webvttdocument.getCaptions();
            if (list != null && list.size() > 0)
            {
                if (videoPlayer.getClosedCaptioningController().readClosedCaptioningState())
                {
                    setMode(ClosedCaptioningMode.ON);
                    registerProgressListener();
                }
                emitCaptionsAvailable(true);
                if (beginTimeMap.size() <= 0)
                {
                    break label0;
                }
                Iterator iterator1 = beginTimeMap.keySet().iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        break;
                    }
                    Integer integer = (Integer)iterator1.next();
                    TimeMapEntry timemapentry = (TimeMapEntry)beginTimeMap.get(integer);
                    if (timemapentry != null && timemapentry.block != null)
                    {
                        removeView(timemapentry.block);
                    }
                } while (true);
            } else
            {
                Log.w(TAG, "No captions found, cannot prepare captions for this video");
                emitCaptionsAvailable(false);
                return;
            }
            beginTimeMap.clear();
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            BrightcoveClosedCaption brightcoveclosedcaption1 = (BrightcoveClosedCaption)iterator.next();
            ViewGroup viewgroup = buildCaptionBlock(webvttdocument, brightcoveclosedcaption1);
            if (viewgroup.getChildCount() > 0)
            {
                addView(viewgroup);
                beginTimeMap.put(Integer.valueOf(brightcoveclosedcaption1.getBeginTime()), new TimeMapEntry(brightcoveclosedcaption1, viewgroup));
            }
        } while (true);
        BrightcoveClosedCaption brightcoveclosedcaption = (BrightcoveClosedCaption)list.get(-1 + list.size());
        beginTimeMap.put(Integer.valueOf(brightcoveclosedcaption.getEndTime()), null);
    }

    public void refreshCaptions()
    {
        if (lastProgressTime == null)
        {
            return;
        } else
        {
            doUpdateCaption(lastProgressTime);
            return;
        }
    }

    public void refreshCaptions(Integer integer)
    {
        if (integer == null)
        {
            return;
        } else
        {
            doUpdateCaption(integer);
            return;
        }
    }

    protected void registerProgressListener()
    {
        if (progressListenerToken == -1)
        {
            progressListenerToken = eventEmitter.on("progress", progressListener);
        }
    }

    protected Region resolveRegionForBlock(Block block, TTMLDocument ttmldocument)
    {
        String s = block.getRegion();
        Map map = ttmldocument.getRegions();
        if (!StringUtil.isEmpty(s) && map.containsKey(s))
        {
            return (Region)map.get(s);
        }
        if (ttmldocument.getBody() != null)
        {
            String s1 = ttmldocument.getBody().getRegion();
            if (!StringUtil.isEmpty(s1) && map.containsKey(s1))
            {
                return (Region)map.get(s1);
            }
        }
        return null;
    }

    public void setMode(ClosedCaptioningMode closedcaptioningmode)
    {
        currentMode = closedcaptioningmode;
    }

    protected ViewGroup styleCaptions(ViewGroup viewgroup)
    {
        BrightcoveClosedCaptioningStyle brightcoveclosedcaptioningstyle = BrightcoveClosedCaptioningManager.getInstance(getContext()).getStyle();
        int i = 0;
        while (i < viewgroup.getChildCount()) 
        {
            View view = viewgroup.getChildAt(i);
            if (view instanceof BrightcoveClosedCaptioningTextView)
            {
                BrightcoveClosedCaptioningTextView brightcoveclosedcaptioningtextview = (BrightcoveClosedCaptioningTextView)view;
                int j;
                if (videoPlayer != null)
                {
                    j = videoPlayer.getRenderView().getMeasuredHeight();
                } else
                {
                    j = 1;
                }
                brightcoveclosedcaptioningtextview.setVideoPlayerHeightPx(j);
                ((BrightcoveClosedCaptioningTextView)view).setStyle(brightcoveclosedcaptioningstyle);
            }
            i++;
        }
        viewgroup.setBackgroundColor(brightcoveclosedcaptioningstyle.backgroundColor);
        viewgroup.invalidate();
        viewgroup.requestLayout();
        return viewgroup;
    }

}
