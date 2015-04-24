// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.management.BrightcoveClosedCaptioningManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaptioningStyle, BrightcoveClosedCaptioningTextView

public class BrightcoveClosedCaptioningOptionsDialog extends DialogFragment
{
    public static final class ClosedCaptioningOptionsType extends Enum
    {

        private static final ClosedCaptioningOptionsType $VALUES[];
        public static final ClosedCaptioningOptionsType BACKGROUND;
        public static final ClosedCaptioningOptionsType EDGE_COLOR;
        public static final ClosedCaptioningOptionsType EDGE_TYPE;
        public static final ClosedCaptioningOptionsType FONT;
        public static final ClosedCaptioningOptionsType HIGHLIGHT;
        public static final ClosedCaptioningOptionsType TEXT_COLOR;
        public static final ClosedCaptioningOptionsType TEXT_SIZE;

        public static ClosedCaptioningOptionsType valueOf(String s)
        {
            return (ClosedCaptioningOptionsType)Enum.valueOf(com/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType, s);
        }

        public static ClosedCaptioningOptionsType[] values()
        {
            return (ClosedCaptioningOptionsType[])$VALUES.clone();
        }

        static 
        {
            FONT = new ClosedCaptioningOptionsType("FONT", 0);
            TEXT_SIZE = new ClosedCaptioningOptionsType("TEXT_SIZE", 1);
            TEXT_COLOR = new ClosedCaptioningOptionsType("TEXT_COLOR", 2);
            EDGE_TYPE = new ClosedCaptioningOptionsType("EDGE_TYPE", 3);
            EDGE_COLOR = new ClosedCaptioningOptionsType("EDGE_COLOR", 4);
            HIGHLIGHT = new ClosedCaptioningOptionsType("HIGHLIGHT", 5);
            BACKGROUND = new ClosedCaptioningOptionsType("BACKGROUND", 6);
            ClosedCaptioningOptionsType aclosedcaptioningoptionstype[] = new ClosedCaptioningOptionsType[7];
            aclosedcaptioningoptionstype[0] = FONT;
            aclosedcaptioningoptionstype[1] = TEXT_SIZE;
            aclosedcaptioningoptionstype[2] = TEXT_COLOR;
            aclosedcaptioningoptionstype[3] = EDGE_TYPE;
            aclosedcaptioningoptionstype[4] = EDGE_COLOR;
            aclosedcaptioningoptionstype[5] = HIGHLIGHT;
            aclosedcaptioningoptionstype[6] = BACKGROUND;
            $VALUES = aclosedcaptioningoptionstype;
        }

        private ClosedCaptioningOptionsType(String s, int i)
        {
            super(s, i);
        }
    }

    public class ColorSelectorClickListener
        implements android.view.View.OnClickListener
    {

        protected List colorButtons;
        protected RadioGroup opacityRadioGroup;
        protected ClosedCaptioningOptionsType optionsType;
        final BrightcoveClosedCaptioningOptionsDialog this$0;

        private int getColorWithOpacity(int i, int j)
        {
            if (j == com.brightcove.player.R.id.closed_captioning_options_opacity_none)
            {
                i = Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_TRANSPARENT, Color.red(i), Color.green(i), Color.blue(i));
            } else
            {
                if (j == com.brightcove.player.R.id.closed_captioning_options_opacity_semi_transparent)
                {
                    return Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT, Color.red(i), Color.green(i), Color.blue(i));
                }
                if (j == com.brightcove.player.R.id.closed_captioning_options_opacity_semi_transparent_light)
                {
                    return Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT_LIGHT, Color.red(i), Color.green(i), Color.blue(i));
                }
                if (j == com.brightcove.player.R.id.closed_captioning_options_opacity_opaque)
                {
                    return Color.argb(255, Color.red(i), Color.green(i), Color.blue(i));
                }
            }
            return i;
        }

        private int getSelectedColor(RadioButton radiobutton)
        {
            Resources resources = getResources();
            String s = (String)radiobutton.getTag();
            Log.d("CaptionsOptionsDialog", String.format("clickedColorButton tag is %s", new Object[] {
                s
            }));
            if (s.equalsIgnoreCase(getResources().getString(com.brightcove.player.R.string.closed_captioning_red_tag)))
            {
                return resources.getColor(com.brightcove.player.R.color.closed_captioning_red);
            }
            if (s.equalsIgnoreCase(getResources().getString(com.brightcove.player.R.string.closed_captioning_yellow_tag)))
            {
                return resources.getColor(com.brightcove.player.R.color.closed_captioning_yellow);
            }
            if (s.equalsIgnoreCase(getResources().getString(com.brightcove.player.R.string.closed_captioning_green_tag)))
            {
                return resources.getColor(com.brightcove.player.R.color.closed_captioning_green);
            }
            if (s.equalsIgnoreCase(getResources().getString(com.brightcove.player.R.string.closed_captioning_cyan_tag)))
            {
                return resources.getColor(com.brightcove.player.R.color.closed_captioning_cyan);
            }
            if (s.equalsIgnoreCase(getResources().getString(com.brightcove.player.R.string.closed_captioning_blue_tag)))
            {
                return resources.getColor(com.brightcove.player.R.color.closed_captioning_blue);
            }
            if (s.equalsIgnoreCase(getResources().getString(com.brightcove.player.R.string.closed_captioning_magenta_tag)))
            {
                return resources.getColor(com.brightcove.player.R.color.closed_captioning_magenta);
            }
            if (s.equalsIgnoreCase(getResources().getString(com.brightcove.player.R.string.closed_captioning_white_tag)))
            {
                return resources.getColor(com.brightcove.player.R.color.closed_captioning_white);
            }
            if (s.equalsIgnoreCase(getResources().getString(com.brightcove.player.R.string.closed_captioning_black_tag)))
            {
                return resources.getColor(com.brightcove.player.R.color.closed_captioning_black);
            } else
            {
                return 0xff000000;
            }
        }

        private void resetButtons(RadioButton radiobutton)
        {
            for (Iterator iterator = colorButtons.iterator(); iterator.hasNext(); ((RadioButton)iterator.next()).setChecked(false)) { }
            radiobutton.setChecked(true);
        }

        private void setBuilderColor(int i)
        {
            if (optionsType == ClosedCaptioningOptionsType.TEXT_COLOR)
            {
                closedCaptioningStyleBuilder.setTextColor(i);
            } else
            {
                if (optionsType == ClosedCaptioningOptionsType.EDGE_COLOR)
                {
                    closedCaptioningStyleBuilder.setEdgeColor(i);
                    return;
                }
                if (optionsType == ClosedCaptioningOptionsType.BACKGROUND)
                {
                    closedCaptioningStyleBuilder.setBackgroundColor(i);
                    return;
                }
                if (optionsType == ClosedCaptioningOptionsType.HIGHLIGHT)
                {
                    closedCaptioningStyleBuilder.setHighlightColor(i);
                    return;
                }
            }
        }

        public void onClick(View view)
        {
            int i = opacityRadioGroup.getCheckedRadioButtonId();
            Log.v("ColorSelector", (new StringBuilder()).append("Color selected: ").append(view).toString());
            RadioButton radiobutton = (RadioButton)view;
            setBuilderColor(getColorWithOpacity(getSelectedColor(radiobutton), i));
            resetButtons(radiobutton);
            updateCaptions();
        }

        public ColorSelectorClickListener(List list, ClosedCaptioningOptionsType closedcaptioningoptionstype, RadioGroup radiogroup)
        {
            this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
            super();
            colorButtons = list;
            optionsType = closedcaptioningoptionstype;
            opacityRadioGroup = radiogroup;
        }
    }

    public class EdgeTypeSelectorClickListener
        implements android.widget.RadioGroup.OnCheckedChangeListener
    {

        protected ClosedCaptioningOptionsType optionsType;
        final BrightcoveClosedCaptioningOptionsDialog this$0;

        private BrightcoveClosedCaptioningTextView.EdgeAttribute getSelectedEdgeType(int i)
        {
            if (i == com.brightcove.player.R.id.closed_captioning_options_edge_selection_depressed_edges)
            {
                return BrightcoveClosedCaptioningTextView.EdgeAttribute.DEPRESSED;
            }
            if (i == com.brightcove.player.R.id.closed_captioning_options_edge_selection_drop_shadow_edges)
            {
                return BrightcoveClosedCaptioningTextView.EdgeAttribute.DROP_SHADOW;
            }
            if (i == com.brightcove.player.R.id.closed_captioning_options_edge_selection_no_edge_attribute)
            {
                return BrightcoveClosedCaptioningTextView.EdgeAttribute.NONE;
            }
            if (i == com.brightcove.player.R.id.closed_captioning_options_edge_selection_raised_edges)
            {
                return BrightcoveClosedCaptioningTextView.EdgeAttribute.RAISED;
            }
            if (i == com.brightcove.player.R.id.closed_captioning_options_edge_selection_uniform_edges)
            {
                return BrightcoveClosedCaptioningTextView.EdgeAttribute.UNIFORM;
            } else
            {
                return BrightcoveClosedCaptioningTextView.EdgeAttribute.NONE;
            }
        }

        private void setBuilderEdgeAttribute(BrightcoveClosedCaptioningTextView.EdgeAttribute edgeattribute)
        {
            if (optionsType == ClosedCaptioningOptionsType.EDGE_TYPE)
            {
                closedCaptioningStyleBuilder.setEdgeAttribute(edgeattribute);
            }
        }

        public void onCheckedChanged(RadioGroup radiogroup, int i)
        {
            setBuilderEdgeAttribute(getSelectedEdgeType(i));
            updateCaptions();
        }

        public EdgeTypeSelectorClickListener(ClosedCaptioningOptionsType closedcaptioningoptionstype)
        {
            this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
            super();
            optionsType = closedcaptioningoptionstype;
        }
    }

    public class FontChangedListener
        implements android.widget.RadioGroup.OnCheckedChangeListener
    {

        final BrightcoveClosedCaptioningOptionsDialog this$0;

        private Typeface getTypeface(int i)
        {
            if (i == com.brightcove.player.R.id.closed_captioning_options_font_selection_normal)
            {
                return Typeface.DEFAULT;
            }
            if (i == com.brightcove.player.R.id.closed_captioning_options_font_selection_monospace)
            {
                return Typeface.MONOSPACE;
            }
            if (i == com.brightcove.player.R.id.closed_captioning_options_font_selection_serif)
            {
                return Typeface.SERIF;
            }
            if (i == com.brightcove.player.R.id.closed_captioning_options_font_selection_sans_serif)
            {
                return Typeface.SANS_SERIF;
            } else
            {
                return Typeface.DEFAULT;
            }
        }

        public void onCheckedChanged(RadioGroup radiogroup, int i)
        {
            closedCaptioningStyleBuilder.setTypeface(getTypeface(i));
            updateCaptions();
        }

        protected FontChangedListener()
        {
            this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
            super();
        }
    }

    public class OpacitySelectorChangedListener
        implements android.widget.RadioGroup.OnCheckedChangeListener
    {

        protected final ClosedCaptioningOptionsType optionsType;
        final BrightcoveClosedCaptioningOptionsDialog this$0;

        protected int getColorWithOpacity(int i)
        {
            int j = getCurrentColor();
            if (i == com.brightcove.player.R.id.closed_captioning_options_opacity_none)
            {
                j = Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_TRANSPARENT, Color.red(j), Color.green(j), Color.blue(j));
            } else
            {
                if (i == com.brightcove.player.R.id.closed_captioning_options_opacity_semi_transparent)
                {
                    return Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT, Color.red(j), Color.green(j), Color.blue(j));
                }
                if (i == com.brightcove.player.R.id.closed_captioning_options_opacity_semi_transparent_light)
                {
                    return Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT_LIGHT, Color.red(j), Color.green(j), Color.blue(j));
                }
                if (i == com.brightcove.player.R.id.closed_captioning_options_opacity_opaque)
                {
                    return Color.argb(255, Color.red(j), Color.green(j), Color.blue(j));
                }
            }
            return j;
        }

        protected int getCurrentColor()
        {
            static class _cls3
            {

                static final int $SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[];

                static 
                {
                    $SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType = new int[ClosedCaptioningOptionsType.values().length];
                    try
                    {
                        $SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[ClosedCaptioningOptionsType.TEXT_COLOR.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror) { }
                    try
                    {
                        $SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[ClosedCaptioningOptionsType.EDGE_COLOR.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[ClosedCaptioningOptionsType.HIGHLIGHT.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        $SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[ClosedCaptioningOptionsType.BACKGROUND.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror3)
                    {
                        return;
                    }
                }
            }

            switch (_cls3..SwitchMap.com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType[optionsType.ordinal()])
            {
            default:
                String s = BrightcoveClosedCaptioningOptionsDialog.TAG;
                Object aobj[] = new Object[1];
                aobj[0] = optionsType.toString();
                Log.e(s, String.format("Unknown CC Options Type: %s", aobj));
                return -1;

            case 1: // '\001'
                return closedCaptioningStyleBuilder.getTextColor();

            case 2: // '\002'
                return closedCaptioningStyleBuilder.getEdgeColor();

            case 3: // '\003'
                return closedCaptioningStyleBuilder.getHighlightColor();

            case 4: // '\004'
                return closedCaptioningStyleBuilder.getBackgroundColor();
            }
        }

        public void onCheckedChanged(RadioGroup radiogroup, int i)
        {
            setBuilderColor(getColorWithOpacity(i));
            updateCaptions();
        }

        protected void setBuilderColor(int i)
        {
            switch (_cls3..SwitchMap.com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType[optionsType.ordinal()])
            {
            default:
                return;

            case 1: // '\001'
                closedCaptioningStyleBuilder.setTextColor(i);
                return;

            case 2: // '\002'
                closedCaptioningStyleBuilder.setEdgeColor(i);
                return;

            case 3: // '\003'
                closedCaptioningStyleBuilder.setHighlightColor(i);
                return;

            case 4: // '\004'
                closedCaptioningStyleBuilder.setBackgroundColor(i);
                break;
            }
        }

        public OpacitySelectorChangedListener(ClosedCaptioningOptionsType closedcaptioningoptionstype)
        {
            this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
            super();
            optionsType = closedcaptioningoptionstype;
        }
    }

    public class TextSizeChangedListener
        implements android.widget.RadioGroup.OnCheckedChangeListener
    {

        final BrightcoveClosedCaptioningOptionsDialog this$0;

        private float getTextSize(int i)
        {
            float f = 1.0F;
            if (i != com.brightcove.player.R.id.closed_captioning_options_text_size_50_percent) goto _L2; else goto _L1
_L1:
            f = 0.5F;
_L4:
            Object aobj[] = new Object[1];
            aobj[0] = Float.valueOf(f);
            Log.i("TextSizeChangeListener", String.format("sizeMultipler is %f", aobj));
            return f * 14F;
_L2:
            if (i == com.brightcove.player.R.id.closed_captioning_options_text_size_75_percent)
            {
                f = 0.75F;
            } else
            if (i != com.brightcove.player.R.id.closed_captioning_options_text_size_100_percent)
            {
                if (i == com.brightcove.player.R.id.closed_captioning_options_text_size_150_percent)
                {
                    f = 1.5F;
                } else
                if (i == com.brightcove.player.R.id.closed_captioning_options_text_size_200_percent)
                {
                    f = 2.0F;
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public void onCheckedChanged(RadioGroup radiogroup, int i)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            Log.d("TextSizeChangedListener", String.format("Text Size %d selected", aobj));
            closedCaptioningStyleBuilder.setTextSize(getTextSize(i));
            updateCaptions();
        }

        protected TextSizeChangedListener()
        {
            this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
            super();
        }
    }


    private static final String TAG = com/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog.getSimpleName();
    protected final List CLOSED_CAPTIONING_OPTIONS = Arrays.asList(new String[] {
        "Font", "Text Size", "Text Color", "Edge Type", "Edge Color", "Highlight", "Background"
    });
    protected final List CLOSED_CAPTIONING_OPTIONS_CHILD_VIEWS;
    private LinearLayout closedCaptioningContainer;
    protected ExpandableListAdapter closedCaptioningOptionsListAdapter;
    private BrightcoveClosedCaptioningStyle.Builder closedCaptioningStyleBuilder;
    private BrightcoveClosedCaptioningTextView closedCaptioningTextView;
    private SparseArray colorToTagMap;
    private Context context;
    private View dialogView;
    private EventEmitter eventEmitter;
    private boolean isHLS;
    private android.view.View.OnClickListener onDoneButtonClickedListener;

    public BrightcoveClosedCaptioningOptionsDialog()
    {
        Integer ainteger[] = new Integer[7];
        ainteger[0] = Integer.valueOf(com.brightcove.player.R.layout.closed_captioning_options_font_selection);
        ainteger[1] = Integer.valueOf(com.brightcove.player.R.layout.closed_captioning_options_text_size_selection);
        ainteger[2] = Integer.valueOf(com.brightcove.player.R.layout.closed_captioning_options_color_selection);
        ainteger[3] = Integer.valueOf(com.brightcove.player.R.layout.closed_captioning_options_edge_type_selection);
        ainteger[4] = Integer.valueOf(com.brightcove.player.R.layout.closed_captioning_options_color_selection);
        ainteger[5] = Integer.valueOf(com.brightcove.player.R.layout.closed_captioning_options_color_selection);
        ainteger[6] = Integer.valueOf(com.brightcove.player.R.layout.closed_captioning_options_color_selection);
        CLOSED_CAPTIONING_OPTIONS_CHILD_VIEWS = Arrays.asList(ainteger);
        closedCaptioningOptionsListAdapter = new BaseExpandableListAdapter() {

            final BrightcoveClosedCaptioningOptionsDialog this$0;

            protected RadioGroup createColorSelection(View view, ClosedCaptioningOptionsType closedcaptioningoptionstype)
            {
                RadioGroup radiogroup = (RadioGroup)view.findViewById(com.brightcove.player.R.id.closed_captioning_options_color_selector);
                RadioGroup radiogroup1 = (RadioGroup)view.findViewById(com.brightcove.player.R.id.closed_captioning_options_opacity_selector);
                List list = BrightcoveClosedCaptioningOptionsDialog.getChildRadioButtons(radiogroup);
                ColorSelectorClickListener colorselectorclicklistener = new ColorSelectorClickListener(list, closedcaptioningoptionstype, radiogroup1);
                for (Iterator iterator = list.iterator(); iterator.hasNext(); ((RadioButton)iterator.next()).setOnClickListener(colorselectorclicklistener)) { }
                return radiogroup;
            }

            protected RadioGroup createEdgeSelection(View view)
            {
                RadioGroup radiogroup = (RadioGroup)view.findViewById(com.brightcove.player.R.id.closed_captioning_options_edge_type_selector);
                radiogroup.setOnCheckedChangeListener(new EdgeTypeSelectorClickListener(ClosedCaptioningOptionsType.EDGE_TYPE));
                return radiogroup;
            }

            protected RadioGroup createOpacitySelection(View view, ClosedCaptioningOptionsType closedcaptioningoptionstype)
            {
                RadioGroup radiogroup = (RadioGroup)view.findViewById(com.brightcove.player.R.id.closed_captioning_options_opacity_selector);
                radiogroup.setOnCheckedChangeListener(new OpacitySelectorChangedListener(closedcaptioningoptionstype));
                if (closedcaptioningoptionstype == ClosedCaptioningOptionsType.TEXT_COLOR)
                {
                    radiogroup.findViewById(com.brightcove.player.R.id.closed_captioning_options_opacity_none).setVisibility(8);
                    radiogroup.findViewById(com.brightcove.player.R.id.closed_captioning_options_opacity_semi_transparent_light).setVisibility(0);
                }
                return radiogroup;
            }

            protected int getBuilderCurrentColor(ClosedCaptioningOptionsType closedcaptioningoptionstype)
            {
                int i = 0;
                _cls3..SwitchMap.com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType[closedcaptioningoptionstype.ordinal()];
                JVM INSTR tableswitch 1 4: default 40
            //                           1 76
            //                           2 90
            //                           3 104
            //                           4 118;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                Log.e(BrightcoveClosedCaptioningOptionsDialog.TAG, String.format("Cannot get the color of %s. It is not a color.", new Object[] {
                    closedcaptioningoptionstype
                }));
_L7:
                return Color.rgb(Color.red(i), Color.green(i), Color.blue(i));
_L2:
                i = closedCaptioningStyleBuilder.getTextColor();
                continue; /* Loop/switch isn't completed */
_L3:
                i = closedCaptioningStyleBuilder.getEdgeColor();
                continue; /* Loop/switch isn't completed */
_L4:
                i = closedCaptioningStyleBuilder.getHighlightColor();
                continue; /* Loop/switch isn't completed */
_L5:
                i = closedCaptioningStyleBuilder.getBackgroundColor();
                if (true) goto _L7; else goto _L6
_L6:
            }

            protected int getBuilderCurrentOpacity(ClosedCaptioningOptionsType closedcaptioningoptionstype)
            {
                int i = 0;
                _cls3..SwitchMap.com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType[closedcaptioningoptionstype.ordinal()];
                JVM INSTR tableswitch 1 4: default 40
            //                           1 65
            //                           2 79
            //                           3 93
            //                           4 107;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                Log.e(BrightcoveClosedCaptioningOptionsDialog.TAG, String.format("Cannot get the color of %s. It is not a color.", new Object[] {
                    closedcaptioningoptionstype
                }));
_L7:
                return Color.alpha(i);
_L2:
                i = closedCaptioningStyleBuilder.getTextColor();
                continue; /* Loop/switch isn't completed */
_L3:
                i = closedCaptioningStyleBuilder.getEdgeColor();
                continue; /* Loop/switch isn't completed */
_L4:
                i = closedCaptioningStyleBuilder.getHighlightColor();
                continue; /* Loop/switch isn't completed */
_L5:
                i = closedCaptioningStyleBuilder.getBackgroundColor();
                if (true) goto _L7; else goto _L6
_L6:
            }

            public Object getChild(int i, int j)
            {
                return null;
            }

            public long getChildId(int i, int j)
            {
                return (long)(j + i * 100);
            }

            public View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
            {
                View view1;
                String s;
                byte byte0;
                view1 = View.inflate(context, ((Integer)CLOSED_CAPTIONING_OPTIONS_CHILD_VIEWS.get(i)).intValue(), null);
                s = getGroup(i);
                byte0 = -1;
                s.hashCode();
                JVM INSTR lookupswitch 7: default 112
            //                           -2125614147: 234
            //                           -1955062096: 218
            //                           -1485530304: 250
            //                           2195567: 186
            //                           661270862: 282
            //                           907236116: 202
            //                           1322757268: 266;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
                break; /* Loop/switch isn't completed */
_L6:
                break MISSING_BLOCK_LABEL_282;
_L9:
                RadioGroup radiogroup;
                switch (byte0)
                {
                default:
                    Log.e(BrightcoveClosedCaptioningOptionsDialog.TAG, (new StringBuilder()).append("getChildView: unexpected groupName: ").append(s).toString());
                    return view1;

                case 0: // '\0'
                    RadioGroup radiogroup9 = (RadioGroup)view1;
                    radiogroup9.setOnCheckedChangeListener(new FontChangedListener());
                    selectCurrentFont(radiogroup9);
                    return view1;

                case 1: // '\001'
                    RadioGroup radiogroup8 = (RadioGroup)view1.findViewById(com.brightcove.player.R.id.closed_captioning_options_text_size_selector);
                    radiogroup8.setOnCheckedChangeListener(new TextSizeChangedListener());
                    selectCurrentTextSize(radiogroup8);
                    return view1;

                case 2: // '\002'
                    RadioGroup radiogroup6 = createColorSelection(view1, ClosedCaptioningOptionsType.TEXT_COLOR);
                    RadioGroup radiogroup7 = createOpacitySelection(view1, ClosedCaptioningOptionsType.TEXT_COLOR);
                    selectCurrentColor(radiogroup6, ClosedCaptioningOptionsType.TEXT_COLOR);
                    selectCurrentOpacity(radiogroup7, ClosedCaptioningOptionsType.TEXT_COLOR);
                    return view1;

                case 3: // '\003'
                    selectCurrentEdgeType(createEdgeSelection(view1));
                    return view1;

                case 4: // '\004'
                    RadioGroup radiogroup4 = createColorSelection(view1, ClosedCaptioningOptionsType.EDGE_COLOR);
                    RadioGroup radiogroup5 = createOpacitySelection(view1, ClosedCaptioningOptionsType.EDGE_COLOR);
                    selectCurrentColor(radiogroup4, ClosedCaptioningOptionsType.EDGE_COLOR);
                    selectCurrentOpacity(radiogroup5, ClosedCaptioningOptionsType.EDGE_COLOR);
                    return view1;

                case 5: // '\005'
                    RadioGroup radiogroup2 = createColorSelection(view1, ClosedCaptioningOptionsType.HIGHLIGHT);
                    RadioGroup radiogroup3 = createOpacitySelection(view1, ClosedCaptioningOptionsType.HIGHLIGHT);
                    selectCurrentColor(radiogroup2, ClosedCaptioningOptionsType.HIGHLIGHT);
                    selectCurrentOpacity(radiogroup3, ClosedCaptioningOptionsType.HIGHLIGHT);
                    return view1;

                case 6: // '\006'
                    radiogroup = createColorSelection(view1, ClosedCaptioningOptionsType.BACKGROUND);
                    break;
                }
                break MISSING_BLOCK_LABEL_522;
_L5:
                if (s.equals("Font"))
                {
                    byte0 = 0;
                }
                  goto _L9
_L7:
                if (s.equals("Text Size"))
                {
                    byte0 = 1;
                }
                  goto _L9
_L3:
                if (s.equals("Text Color"))
                {
                    byte0 = 2;
                }
                  goto _L9
_L2:
                if (s.equals("Edge Type"))
                {
                    byte0 = 3;
                }
                  goto _L9
_L4:
                if (s.equals("Edge Color"))
                {
                    byte0 = 4;
                }
                  goto _L9
_L8:
                if (s.equals("Highlight"))
                {
                    byte0 = 5;
                }
                  goto _L9
                if (s.equals("Background"))
                {
                    byte0 = 6;
                }
                  goto _L9
                RadioGroup radiogroup1 = createOpacitySelection(view1, ClosedCaptioningOptionsType.BACKGROUND);
                selectCurrentColor(radiogroup, ClosedCaptioningOptionsType.BACKGROUND);
                selectCurrentOpacity(radiogroup1, ClosedCaptioningOptionsType.BACKGROUND);
                return view1;
            }

            public int getChildrenCount(int i)
            {
                return 1;
            }

            public volatile Object getGroup(int i)
            {
                return getGroup(i);
            }

            public String getGroup(int i)
            {
                return (String)CLOSED_CAPTIONING_OPTIONS.get(i);
            }

            public int getGroupCount()
            {
                return CLOSED_CAPTIONING_OPTIONS.size();
            }

            public long getGroupId(int i)
            {
                return (long)i;
            }

            public View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
            {
                View view1 = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(com.brightcove.player.R.layout.closed_captioning_options_group_item, null);
                ((TextView)view1.findViewById(com.brightcove.player.R.id.closed_captioning_options_group_title)).setText((CharSequence)CLOSED_CAPTIONING_OPTIONS.get(i));
                return view1;
            }

            protected SparseArray getMapColorsToTags()
            {
                if (colorToTagMap == null)
                {
                    colorToTagMap = new SparseArray() {

                        final _cls1 this$1;

            
            {
                this$1 = _cls1.this;
                super();
                put(getResources().getColor(com.brightcove.player.R.color.closed_captioning_red), getResources().getString(com.brightcove.player.R.string.closed_captioning_red_tag));
                put(getResources().getColor(com.brightcove.player.R.color.closed_captioning_yellow), getResources().getString(com.brightcove.player.R.string.closed_captioning_yellow_tag));
                put(getResources().getColor(com.brightcove.player.R.color.closed_captioning_green), getResources().getString(com.brightcove.player.R.string.closed_captioning_green_tag));
                put(getResources().getColor(com.brightcove.player.R.color.closed_captioning_cyan), getResources().getString(com.brightcove.player.R.string.closed_captioning_cyan_tag));
                put(getResources().getColor(com.brightcove.player.R.color.closed_captioning_blue), getResources().getString(com.brightcove.player.R.string.closed_captioning_blue_tag));
                put(getResources().getColor(com.brightcove.player.R.color.closed_captioning_magenta), getResources().getString(com.brightcove.player.R.string.closed_captioning_magenta_tag));
                put(getResources().getColor(com.brightcove.player.R.color.closed_captioning_white), getResources().getString(com.brightcove.player.R.string.closed_captioning_white_tag));
                put(getResources().getColor(com.brightcove.player.R.color.closed_captioning_black), getResources().getString(com.brightcove.player.R.string.closed_captioning_black_tag));
            }
                    };
                }
                return colorToTagMap;
            }

            public boolean hasStableIds()
            {
                return true;
            }

            public boolean isChildSelectable(int i, int j)
            {
                return false;
            }

            protected void selectCurrentColor(RadioGroup radiogroup, ClosedCaptioningOptionsType closedcaptioningoptionstype)
            {
                int i = getBuilderCurrentColor(closedcaptioningoptionstype);
                String s = (String)getMapColorsToTags().get(i);
                if (s != null)
                {
                    Log.d(BrightcoveClosedCaptioningOptionsDialog.TAG, String.format("Checking color button with tag %s", new Object[] {
                        s
                    }));
                    ((RadioButton)radiogroup.findViewWithTag(s)).setChecked(true);
                }
            }

            protected void selectCurrentEdgeType(RadioGroup radiogroup)
            {
                int i = ((Integer)(new EnumMap(com/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute) {

                    final _cls1 this$1;

            
            {
                this$1 = _cls1.this;
                super(class1);
                put(BrightcoveClosedCaptioningTextView.EdgeAttribute.NONE, Integer.valueOf(com.brightcove.player.R.id.closed_captioning_options_edge_selection_no_edge_attribute));
                put(BrightcoveClosedCaptioningTextView.EdgeAttribute.UNIFORM, Integer.valueOf(com.brightcove.player.R.id.closed_captioning_options_edge_selection_uniform_edges));
                put(BrightcoveClosedCaptioningTextView.EdgeAttribute.DEPRESSED, Integer.valueOf(com.brightcove.player.R.id.closed_captioning_options_edge_selection_depressed_edges));
                put(BrightcoveClosedCaptioningTextView.EdgeAttribute.RAISED, Integer.valueOf(com.brightcove.player.R.id.closed_captioning_options_edge_selection_raised_edges));
                put(BrightcoveClosedCaptioningTextView.EdgeAttribute.DROP_SHADOW, Integer.valueOf(com.brightcove.player.R.id.closed_captioning_options_edge_selection_drop_shadow_edges));
            }
                }).get(closedCaptioningStyleBuilder.getEdgeAttribute())).intValue();
                if (i != 0)
                {
                    ((RadioButton)radiogroup.findViewById(i)).setChecked(true);
                }
            }

            protected void selectCurrentFont(RadioGroup radiogroup)
            {
                Typeface typeface = closedCaptioningStyleBuilder.getTypeface();
                if (typeface == Typeface.DEFAULT)
                {
                    radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_font_selection_normal);
                } else
                {
                    if (typeface == Typeface.MONOSPACE)
                    {
                        radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_font_selection_monospace);
                        return;
                    }
                    if (typeface == Typeface.SANS_SERIF)
                    {
                        radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_font_selection_sans_serif);
                        return;
                    }
                    if (typeface == Typeface.SERIF)
                    {
                        radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_font_selection_serif);
                        return;
                    }
                }
            }

            protected void selectCurrentOpacity(RadioGroup radiogroup, ClosedCaptioningOptionsType closedcaptioningoptionstype)
            {
                int i = getBuilderCurrentOpacity(closedcaptioningoptionstype);
                if (i == BrightcoveClosedCaptioningStyle.OPACITY_TRANSPARENT)
                {
                    radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_opacity_none);
                } else
                {
                    if (i == BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT)
                    {
                        radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_opacity_semi_transparent);
                        return;
                    }
                    if (i == BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT_LIGHT)
                    {
                        radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_opacity_semi_transparent_light);
                        return;
                    }
                    if (i == 255)
                    {
                        radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_opacity_opaque);
                        return;
                    }
                }
            }

            protected void selectCurrentTextSize(RadioGroup radiogroup)
            {
                Float float1 = Float.valueOf(closedCaptioningStyleBuilder.getTextSize());
                if (float1.floatValue() == 7F)
                {
                    radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_text_size_50_percent);
                } else
                {
                    if (float1.floatValue() == 10.5F)
                    {
                        radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_text_size_75_percent);
                        return;
                    }
                    if (float1.floatValue() == 14F)
                    {
                        radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_text_size_100_percent);
                        return;
                    }
                    if (float1.floatValue() == 21F)
                    {
                        radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_text_size_150_percent);
                        return;
                    }
                    if (float1.floatValue() == 28F)
                    {
                        radiogroup.check(com.brightcove.player.R.id.closed_captioning_options_text_size_200_percent);
                        return;
                    }
                }
            }

            
            {
                this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
                super();
            }
        };
        onDoneButtonClickedListener = new android.view.View.OnClickListener() {

            final BrightcoveClosedCaptioningOptionsDialog this$0;

            public void onClick(View view)
            {
                dismiss();
            }

            
            {
                this$0 = BrightcoveClosedCaptioningOptionsDialog.this;
                super();
            }
        };
    }

    protected static List getChildRadioButtons(ViewGroup viewgroup)
    {
        ArrayList arraylist = new ArrayList();
        int i = 0;
        while (i < viewgroup.getChildCount()) 
        {
            View view = viewgroup.getChildAt(i);
            if (view instanceof ViewGroup)
            {
                arraylist.addAll(getChildRadioButtons((ViewGroup)view));
            } else
            if (view instanceof RadioButton)
            {
                arraylist.add((RadioButton)view);
            }
            i++;
        }
        return arraylist;
    }

    protected BrightcoveClosedCaptioningStyle getStyle()
    {
        return closedCaptioningStyleBuilder.create();
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        Dialog dialog = super.onCreateDialog(bundle);
        dialog.requestWindowFeature(1);
        return dialog;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        dialogView = layoutinflater.inflate(com.brightcove.player.R.layout.closed_captioning_options_dialog, viewgroup);
        context = getActivity();
        isHLS = getArguments().getBoolean("isHLS");
        closedCaptioningStyleBuilder = BrightcoveClosedCaptioningStyle.newBuilder(context).copyFrom(BrightcoveClosedCaptioningManager.getInstance(context).getStyle());
        closedCaptioningContainer = (LinearLayout)dialogView.findViewById(com.brightcove.player.R.id.closed_captioning_options_example_captions_container);
        closedCaptioningTextView = (BrightcoveClosedCaptioningTextView)dialogView.findViewById(com.brightcove.player.R.id.closed_captioning_options_example_captions);
        DisplayMetrics displaymetrics = new DisplayMetrics();
        getActivity().getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        closedCaptioningTextView.setVideoPlayerHeightPx((9 * displaymetrics.widthPixels) / 16);
        ((ExpandableListView)dialogView.findViewById(com.brightcove.player.R.id.closed_captioning_options_list)).setAdapter(closedCaptioningOptionsListAdapter);
        ((Button)dialogView.findViewById(com.brightcove.player.R.id.closed_captioning_options_done_button)).setOnClickListener(onDoneButtonClickedListener);
        Rect rect = new Rect();
        ((Activity)context).getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        dialogView.setMinimumHeight(Math.round(0.95F * (float)rect.height()));
        dialogView.setMinimumWidth(Math.round(0.95F * (float)rect.width()));
        updateCaptions();
        return dialogView;
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        BrightcoveClosedCaptioningManager.getInstance(context).setStyle(getStyle());
    }

    public void setEventEmitter(EventEmitter eventemitter)
    {
        eventEmitter = eventemitter;
    }

    protected void updateCaptions()
    {
        if (isHLS)
        {
            HashMap hashmap = new HashMap();
            hashmap.put("captionFont", closedCaptioningStyleBuilder.getTypeface());
            hashmap.put("captionFontSize", Float.valueOf(closedCaptioningStyleBuilder.getTextSize()));
            hashmap.put("captionFontColor", Integer.valueOf(closedCaptioningStyleBuilder.getTextColor()));
            hashmap.put("captionEdgeType", closedCaptioningStyleBuilder.getEdgeAttribute());
            hashmap.put("captionEdgeColor", Integer.valueOf(closedCaptioningStyleBuilder.getEdgeColor()));
            hashmap.put("captionHighlight", Integer.valueOf(closedCaptioningStyleBuilder.getHighlightColor()));
            hashmap.put("captionBackground", Integer.valueOf(closedCaptioningStyleBuilder.getBackgroundColor()));
            eventEmitter.emit("captionsStyleOptions", hashmap);
            return;
        } else
        {
            BrightcoveClosedCaptioningStyle brightcoveclosedcaptioningstyle = getStyle();
            closedCaptioningContainer.setBackgroundColor(brightcoveclosedcaptioningstyle.backgroundColor);
            closedCaptioningTextView.setStyle(brightcoveclosedcaptioningstyle);
            closedCaptioningTextView.invalidate();
            closedCaptioningContainer.invalidate();
            dialogView.requestLayout();
            return;
        }
    }







/*
    static SparseArray access$302(BrightcoveClosedCaptioningOptionsDialog brightcoveclosedcaptioningoptionsdialog, SparseArray sparsearray)
    {
        brightcoveclosedcaptioningoptionsdialog.colorToTagMap = sparsearray;
        return sparsearray;
    }

*/
}
