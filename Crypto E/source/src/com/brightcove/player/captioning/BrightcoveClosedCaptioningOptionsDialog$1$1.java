// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaptioningOptionsDialog, BrightcoveClosedCaptioningStyle

class esources extends SparseArray
{

    final esources this$1;

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
        put(getResources().getColor(com.brightcove.player.Dialog.getResources), getResources().getString(com.brightcove.player.Dialog.getResources));
        put(getResources().getColor(com.brightcove.player.Dialog.getResources), getResources().getString(com.brightcove.player.Dialog.getResources));
        put(getResources().getColor(com.brightcove.player.Dialog.getResources), getResources().getString(com.brightcove.player.Dialog.getResources));
        put(getResources().getColor(com.brightcove.player.Dialog.getResources), getResources().getString(com.brightcove.player.Dialog.getResources));
        put(getResources().getColor(com.brightcove.player.Dialog.getResources), getResources().getString(com.brightcove.player.Dialog.getResources));
        put(getResources().getColor(com.brightcove.player.Dialog.getResources), getResources().getString(com.brightcove.player.Dialog.getResources));
        put(getResources().getColor(com.brightcove.player.Dialog.getResources), getResources().getString(com.brightcove.player.Dialog.getResources));
        put(getResources().getColor(com.brightcove.player.Dialog.getResources), getResources().getString(com.brightcove.player.Dialog.getResources));
    }

    // Unreferenced inner class com/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1

/* anonymous class */
    class BrightcoveClosedCaptioningOptionsDialog._cls1 extends BaseExpandableListAdapter
    {

        final BrightcoveClosedCaptioningOptionsDialog this$0;

        protected RadioGroup createColorSelection(View view, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType closedcaptioningoptionstype)
        {
            RadioGroup radiogroup = (RadioGroup)view.findViewById(com.brightcove.player.R.id.closed_captioning_options_color_selector);
            RadioGroup radiogroup1 = (RadioGroup)view.findViewById(com.brightcove.player.R.id.closed_captioning_options_opacity_selector);
            List list = BrightcoveClosedCaptioningOptionsDialog.getChildRadioButtons(radiogroup);
            BrightcoveClosedCaptioningOptionsDialog.ColorSelectorClickListener colorselectorclicklistener = new BrightcoveClosedCaptioningOptionsDialog.ColorSelectorClickListener(BrightcoveClosedCaptioningOptionsDialog.this, list, closedcaptioningoptionstype, radiogroup1);
            for (Iterator iterator = list.iterator(); iterator.hasNext(); ((RadioButton)iterator.next()).setOnClickListener(colorselectorclicklistener)) { }
            return radiogroup;
        }

        protected RadioGroup createEdgeSelection(View view)
        {
            RadioGroup radiogroup = (RadioGroup)view.findViewById(com.brightcove.player.R.id.closed_captioning_options_edge_type_selector);
            radiogroup.setOnCheckedChangeListener(new BrightcoveClosedCaptioningOptionsDialog.EdgeTypeSelectorClickListener(BrightcoveClosedCaptioningOptionsDialog.this, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_TYPE));
            return radiogroup;
        }

        protected RadioGroup createOpacitySelection(View view, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType closedcaptioningoptionstype)
        {
            RadioGroup radiogroup = (RadioGroup)view.findViewById(com.brightcove.player.R.id.closed_captioning_options_opacity_selector);
            radiogroup.setOnCheckedChangeListener(new BrightcoveClosedCaptioningOptionsDialog.OpacitySelectorChangedListener(BrightcoveClosedCaptioningOptionsDialog.this, closedcaptioningoptionstype));
            if (closedcaptioningoptionstype == BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR)
            {
                radiogroup.findViewById(com.brightcove.player.R.id.closed_captioning_options_opacity_none).setVisibility(8);
                radiogroup.findViewById(com.brightcove.player.R.id.closed_captioning_options_opacity_semi_transparent_light).setVisibility(0);
            }
            return radiogroup;
        }

        protected int getBuilderCurrentColor(BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType closedcaptioningoptionstype)
        {
            int i = 0;
            BrightcoveClosedCaptioningOptionsDialog._cls3.$SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[closedcaptioningoptionstype.ordinal()];
            JVM INSTR tableswitch 1 4: default 40
        //                       1 76
        //                       2 90
        //                       3 104
        //                       4 118;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            Log.e(BrightcoveClosedCaptioningOptionsDialog.access$100(), String.format("Cannot get the color of %s. It is not a color.", new Object[] {
                closedcaptioningoptionstype
            }));
_L7:
            return Color.rgb(Color.red(i), Color.green(i), Color.blue(i));
_L2:
            i = BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getTextColor();
            continue; /* Loop/switch isn't completed */
_L3:
            i = BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getEdgeColor();
            continue; /* Loop/switch isn't completed */
_L4:
            i = BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getHighlightColor();
            continue; /* Loop/switch isn't completed */
_L5:
            i = BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getBackgroundColor();
            if (true) goto _L7; else goto _L6
_L6:
        }

        protected int getBuilderCurrentOpacity(BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType closedcaptioningoptionstype)
        {
            int i = 0;
            BrightcoveClosedCaptioningOptionsDialog._cls3.$SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[closedcaptioningoptionstype.ordinal()];
            JVM INSTR tableswitch 1 4: default 40
        //                       1 65
        //                       2 79
        //                       3 93
        //                       4 107;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            Log.e(BrightcoveClosedCaptioningOptionsDialog.access$100(), String.format("Cannot get the color of %s. It is not a color.", new Object[] {
                closedcaptioningoptionstype
            }));
_L7:
            return Color.alpha(i);
_L2:
            i = BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getTextColor();
            continue; /* Loop/switch isn't completed */
_L3:
            i = BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getEdgeColor();
            continue; /* Loop/switch isn't completed */
_L4:
            i = BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getHighlightColor();
            continue; /* Loop/switch isn't completed */
_L5:
            i = BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getBackgroundColor();
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
            view1 = View.inflate(BrightcoveClosedCaptioningOptionsDialog.access$000(BrightcoveClosedCaptioningOptionsDialog.this), ((Integer)CLOSED_CAPTIONING_OPTIONS_CHILD_VIEWS.get(i)).intValue(), null);
            s = getGroup(i);
            byte0 = -1;
            s.hashCode();
            JVM INSTR lookupswitch 7: default 112
        //                       -2125614147: 234
        //                       -1955062096: 218
        //                       -1485530304: 250
        //                       2195567: 186
        //                       661270862: 282
        //                       907236116: 202
        //                       1322757268: 266;
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
                Log.e(BrightcoveClosedCaptioningOptionsDialog.access$100(), (new StringBuilder()).append("getChildView: unexpected groupName: ").append(s).toString());
                return view1;

            case 0: // '\0'
                RadioGroup radiogroup9 = (RadioGroup)view1;
                radiogroup9.setOnCheckedChangeListener(new BrightcoveClosedCaptioningOptionsDialog.FontChangedListener(BrightcoveClosedCaptioningOptionsDialog.this));
                selectCurrentFont(radiogroup9);
                return view1;

            case 1: // '\001'
                RadioGroup radiogroup8 = (RadioGroup)view1.findViewById(com.brightcove.player.R.id.closed_captioning_options_text_size_selector);
                radiogroup8.setOnCheckedChangeListener(new BrightcoveClosedCaptioningOptionsDialog.TextSizeChangedListener(BrightcoveClosedCaptioningOptionsDialog.this));
                selectCurrentTextSize(radiogroup8);
                return view1;

            case 2: // '\002'
                RadioGroup radiogroup6 = createColorSelection(view1, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR);
                RadioGroup radiogroup7 = createOpacitySelection(view1, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR);
                selectCurrentColor(radiogroup6, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR);
                selectCurrentOpacity(radiogroup7, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR);
                return view1;

            case 3: // '\003'
                selectCurrentEdgeType(createEdgeSelection(view1));
                return view1;

            case 4: // '\004'
                RadioGroup radiogroup4 = createColorSelection(view1, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_COLOR);
                RadioGroup radiogroup5 = createOpacitySelection(view1, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_COLOR);
                selectCurrentColor(radiogroup4, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_COLOR);
                selectCurrentOpacity(radiogroup5, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_COLOR);
                return view1;

            case 5: // '\005'
                RadioGroup radiogroup2 = createColorSelection(view1, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.HIGHLIGHT);
                RadioGroup radiogroup3 = createOpacitySelection(view1, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.HIGHLIGHT);
                selectCurrentColor(radiogroup2, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.HIGHLIGHT);
                selectCurrentOpacity(radiogroup3, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.HIGHLIGHT);
                return view1;

            case 6: // '\006'
                radiogroup = createColorSelection(view1, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.BACKGROUND);
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
            RadioGroup radiogroup1 = createOpacitySelection(view1, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.BACKGROUND);
            selectCurrentColor(radiogroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.BACKGROUND);
            selectCurrentOpacity(radiogroup1, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.BACKGROUND);
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
            View view1 = ((LayoutInflater)BrightcoveClosedCaptioningOptionsDialog.access$000(BrightcoveClosedCaptioningOptionsDialog.this).getSystemService("layout_inflater")).inflate(com.brightcove.player.R.layout.closed_captioning_options_group_item, null);
            ((TextView)view1.findViewById(com.brightcove.player.R.id.closed_captioning_options_group_title)).setText((CharSequence)CLOSED_CAPTIONING_OPTIONS.get(i));
            return view1;
        }

        protected SparseArray getMapColorsToTags()
        {
            if (BrightcoveClosedCaptioningOptionsDialog.access$300(BrightcoveClosedCaptioningOptionsDialog.this) == null)
            {
                BrightcoveClosedCaptioningOptionsDialog.access$302(BrightcoveClosedCaptioningOptionsDialog.this, new BrightcoveClosedCaptioningOptionsDialog._cls1._cls1());
            }
            return BrightcoveClosedCaptioningOptionsDialog.access$300(BrightcoveClosedCaptioningOptionsDialog.this);
        }

        public boolean hasStableIds()
        {
            return true;
        }

        public boolean isChildSelectable(int i, int j)
        {
            return false;
        }

        protected void selectCurrentColor(RadioGroup radiogroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType closedcaptioningoptionstype)
        {
            int i = getBuilderCurrentColor(closedcaptioningoptionstype);
            String s = (String)getMapColorsToTags().get(i);
            if (s != null)
            {
                Log.d(BrightcoveClosedCaptioningOptionsDialog.access$100(), String.format("Checking color button with tag %s", new Object[] {
                    s
                }));
                ((RadioButton)radiogroup.findViewWithTag(s)).setChecked(true);
            }
        }

        protected void selectCurrentEdgeType(RadioGroup radiogroup)
        {
            int i = ((Integer)(new BrightcoveClosedCaptioningOptionsDialog._cls1._cls2(com/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute)).get(BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getEdgeAttribute())).intValue();
            if (i != 0)
            {
                ((RadioButton)radiogroup.findViewById(i)).setChecked(true);
            }
        }

        protected void selectCurrentFont(RadioGroup radiogroup)
        {
            Typeface typeface = BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getTypeface();
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

        protected void selectCurrentOpacity(RadioGroup radiogroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType closedcaptioningoptionstype)
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
            Float float1 = Float.valueOf(BrightcoveClosedCaptioningOptionsDialog.access$200(BrightcoveClosedCaptioningOptionsDialog.this).getTextSize());
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

        // Unreferenced inner class com/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$2

/* anonymous class */
        class BrightcoveClosedCaptioningOptionsDialog._cls1._cls2 extends EnumMap
        {

            final BrightcoveClosedCaptioningOptionsDialog._cls1 this$1;

                    
                    {
                        this$1 = BrightcoveClosedCaptioningOptionsDialog._cls1.this;
                        super(class1);
                        put(BrightcoveClosedCaptioningTextView.EdgeAttribute.NONE, Integer.valueOf(com.brightcove.player.R.id.closed_captioning_options_edge_selection_no_edge_attribute));
                        put(BrightcoveClosedCaptioningTextView.EdgeAttribute.UNIFORM, Integer.valueOf(com.brightcove.player.R.id.closed_captioning_options_edge_selection_uniform_edges));
                        put(BrightcoveClosedCaptioningTextView.EdgeAttribute.DEPRESSED, Integer.valueOf(com.brightcove.player.R.id.closed_captioning_options_edge_selection_depressed_edges));
                        put(BrightcoveClosedCaptioningTextView.EdgeAttribute.RAISED, Integer.valueOf(com.brightcove.player.R.id.closed_captioning_options_edge_selection_raised_edges));
                        put(BrightcoveClosedCaptioningTextView.EdgeAttribute.DROP_SHADOW, Integer.valueOf(com.brightcove.player.R.id.closed_captioning_options_edge_selection_drop_shadow_edges));
                    }
        }

    }

}
